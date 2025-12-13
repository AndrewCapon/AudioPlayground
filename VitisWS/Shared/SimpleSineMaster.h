#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "xsimplesinemaster.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"
#include "CodeTimer.h"

class SimpleSineMaster
{
public:
	SimpleSineMaster(HardwareSystem &hardwareSystem, uint16_t uDeviceId, volatile uint32_t *pSampleStorage)
	: m_debug(hardwareSystem.GetDebug()),
		m_codeTimer("SimpleSineMaster", const_cast<const char **>(m_sTimerLabels), hardwareSystem.GetTimer()),
		m_dma(hardwareSystem.GetDma()),
		m_systemHandler(hardwareSystem.GetSystemHandler()),
		m_uDeviceId(uDeviceId),
		m_pSampleStorage(pSampleStorage)
	{
		m_pConfig = XSimplesinemaster_LookupConfig(uDeviceId);

		if (m_pConfig)
		{
			if(XSimplesinemaster_CfgInitialize(&m_instance, m_pConfig) == XST_SUCCESS)
			{
				XSimplesinemaster_InterruptGlobalEnable(&m_instance);
				XSimplesinemaster_InterruptEnable(&m_instance, 0x0);
				m_bIsConfigured = m_systemHandler.AddInterruptCallback(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_AUDIO_COMPONENTS_SIMPLESINEMASTER_0_INTERRUPT_INTR, InterruptHandlerStatic, this);
			}
		}
	}

	void SetSampleStorage(volatile uint32_t *pSampleStorage)
	{
		m_pSampleStorage = pSampleStorage;
	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	void SetPhaseInc(PhaseType phaseInc)
	{
		XSimplesinemaster_Set_phaseInc(&m_instance, phaseInc.raw_value());
	}

	void SetFrequency(uint8_t uVoice, float fFrequency)
	{
		m_fFrequencies[uVoice] = fFrequency;
		m_uPhaseIncs[uVoice] = FrequencyToAccumPerSample(fFrequency).raw_value();
	}


	volatile uint32_t *GetSampleBuffer(uint8_t uVoice)
	{
		return &(m_pSampleStorage[uVoice * cBlockSamples]);
	}

	uint32_t *GetDebugBuffer(void)
	{
#if DEBUG
		return reinterpret_cast<uint32_t *>(XSimplesine_Get_debug_BaseAddress(&m_instance));
#else
		assert (false && "Don't call this");
#endif
	}

	void ProcessBlocking(void)
	{
		static uint32_t uCount = 0;
		static uint32_t *pAccumulator = reinterpret_cast<uint32_t *>(m_instance.Control_BaseAddress + XSIMPLESINEMASTER_CONTROL_ADDR_ACCUMULATOR_O_DATA);

		if(uCount++ == 1000-1)
		{
			m_codeTimer.LogTimes(1000);
			uCount = 0;
		}

		m_codeTimer.StartTiming(ctProcessBlocking);

		for(uint8_t uVoice=0; uVoice < cVoices; uVoice++)
		{
			// Set accumulator, phaseinc and sample location
			m_codeTimer.StartTiming(ctUpdateData);
			XSimplesinemaster_Set_accumulator_i(&m_instance, m_uAccumulators[uVoice]);
			XSimplesinemaster_Set_phaseInc(&m_instance, m_uPhaseIncs[uVoice]);
			uint32_t uDst = reinterpret_cast<uint32_t>(&(m_pSampleStorage[uVoice * cBlockSamples]));
			XSimplesinemaster_Set_samples(&m_instance, uDst);
			m_codeTimer.StopTiming(ctUpdateData);

			// Wait for Ready
			m_codeTimer.StartTiming(ctWaitReady);
			while (!XSimplesinemaster_IsReady(&m_instance))
				/* WAIT */;
			m_codeTimer.StopTiming(ctWaitReady);

			// Start HLS
			m_codeTimer.StartTiming(ctStart);
			XSimplesinemaster_Start(&m_instance);
			m_codeTimer.StopTiming(ctStart);

			// Wait for done
			m_codeTimer.StartTiming(ctWaitDone);
			while (!XSimplesinemaster_IsDone(&m_instance))
				/* WAIT */;
			m_codeTimer.StopTiming(ctWaitDone);

			// Update acumulator.
			m_codeTimer.StartTiming(ctGetAcumulator);
			while(!XSimplesinemaster_Get_accumulator_o_vld(&m_instance))
				xil_printf(".");/* WAIT */;

			// Update acumulator.
			//m_uAccumulators[uVoice] = XSimplesine_Get_accumulator_o(&m_instance);
			m_uAccumulators[uVoice] = *pAccumulator;
			m_codeTimer.StopTiming(ctGetAcumulator);
		}
		m_codeTimer.StopTiming(ctProcessBlocking);
	}

	void ProcessNonBlocking(void)
	{
		static uint32_t uCount = 0;
		if(uCount++ == 1000-1)
		{
			m_codeTimer.LogTimes(1000);
			uCount = 0;
		}

		m_codeTimer.StartTiming(ctProcessNonBlocking);
		if(XSimplesinemaster_IsReady(&m_instance))
			StartProcessing();
		else
		{
			// Enable Ready interrupt
			XSimplesinemaster_InterruptEnable(&m_instance, 0x2);
		}
		m_codeTimer.StopTiming(ctProcessNonBlocking);
	}

	FORCE_INLINE PhaseType FrequencyToAccumPerSample(const float frequency)
	{
		m_codeTimer.StartTiming(ctFrequencyToAccumPerSample);
		constexpr float f =  4096.0f/cSampleRate;
		float     fAcumPerSample = f * frequency;

		PhaseType result = static_cast<PhaseType>(fAcumPerSample);
		m_codeTimer.StopTiming(ctFrequencyToAccumPerSample);

		return result;
	}

	FORCE_INLINE void ContinueProcessing(void)
	{
		// process
		m_codeTimer.StartTiming(ctContinueProcessing);
		XSimplesinemaster_Set_accumulator_i(&m_instance, m_uAccumulators[m_uCurrentVoice]);
		XSimplesinemaster_Set_phaseInc(&m_instance, m_uPhaseIncs[m_uCurrentVoice]);
		uint32_t uDst = reinterpret_cast<uint32_t>(&(m_pSampleStorage[m_uCurrentVoice * cBlockSamples]));
		XSimplesinemaster_Set_samples(&m_instance, uDst);
		m_codeTimer.StartTiming(ctContinueStart);
		XSimplesinemaster_Start(&m_instance);
		m_codeTimer.StopTiming(ctContinueStart);
		m_codeTimer.StopTiming(ctContinueProcessing);
	}

	FORCE_INLINE void StartProcessing(void)
	{
		m_codeTimer.StartTiming(ctStartProcessing);

		// start at voice 0
		m_uCurrentVoice = 0;

		m_codeTimer.StartTiming(ctInterruptEnable);
		// Enable Done interrupt, disable ready interrupt
		XSimplesinemaster_InterruptEnable(&m_instance, 0x1);
		m_codeTimer.StopTiming(ctInterruptEnable);

		m_codeTimer.StartTiming(ctUpdateData);
		XSimplesinemaster_Set_accumulator_i(&m_instance, m_uAccumulators[m_uCurrentVoice]);
		XSimplesinemaster_Set_phaseInc(&m_instance, m_uPhaseIncs[m_uCurrentVoice]);
		uint32_t uDst = reinterpret_cast<uint32_t>(&(m_pSampleStorage[m_uCurrentVoice * cBlockSamples]));
		XSimplesinemaster_Set_samples(&m_instance, uDst);
		m_codeTimer.StopTiming(ctUpdateData);

		m_codeTimer.StartTiming(ctStartStart);
		XSimplesinemaster_Start(&m_instance);
		m_codeTimer.StopTiming(ctStartStart);

		m_codeTimer.StopTiming(ctStartProcessing);
	}

	FORCE_INLINE void InterruptHandler(void)
	{
		m_codeTimer.StartTiming(ctInterruptHandler);
		m_codeTimer.StartTiming(ctInterruptStart);
		m_debug.SetDebug(Debug::dpPio30_interrupt, 1);
		uint32_t uMask = XSimplesinemaster_InterruptGetStatus(&m_instance);
		if(uMask & 0x1)
		{
			m_debug.SetDebug(Debug::dpPio27_done, 1);
			XSimplesinemaster_InterruptClear(&m_instance, 0x1);
			m_codeTimer.StopTiming(ctInterruptStart);

			m_codeTimer.StartTiming(ctGetAcumulator);

			// update accumulator
			while(!XSimplesinemaster_Get_accumulator_o_vld(&m_instance))
				/* WAIT */;

			m_uAccumulators[m_uCurrentVoice] = XSimplesinemaster_Get_accumulator_o(&m_instance);
			m_codeTimer.StopTiming(ctGetAcumulator);

			m_codeTimer.StartTiming(ctInterruptEnd);
			if(m_uCurrentVoice < (cVoices-1))
			{
				// continue voice processing
				m_uCurrentVoice++;
				ContinueProcessing();
			}
			else
			{
				// we have finished so disable interrupts
				XSimplesinemaster_InterruptEnable(&m_instance, 0x0);
			}

			m_debug.SetDebug(Debug::dpPio27_done, 0);
		}

		if(uMask & 0x2)
		{
			m_debug.SetDebug(Debug::dpPio28_ready, 1);
			XSimplesinemaster_InterruptClear(&m_instance, 0x2);
			StartProcessing();
			m_debug.SetDebug(Debug::dpPio28_ready, 0);
		}

		bool higherPriorityTaskWoken = false;
		m_systemHandler.ExitInterruptHandler(higherPriorityTaskWoken);
		m_debug.SetDebug(Debug::dpPio30_interrupt, 0);

		m_codeTimer.StopTiming(ctInterruptEnd);
		m_codeTimer.StopTiming(ctInterruptHandler);
	}

	static void InterruptHandlerStatic( void *pInstance )
	{
		SimpleSineMaster *pSimpleSineMaster = (SimpleSineMaster *)pInstance;

		pSimpleSineMaster->InterruptHandler();
	}


private:
	typedef enum
	{
		ctProcessBlocking,
		ctWaitReady,
		ctStart,
		ctWaitDone,
		ctProcessNonBlocking,
		ctInterruptHandler,
		ctInterruptStart,
		ctCopy,
		ctGetAcumulator,
		ctInterruptEnd,
		ctStartProcessing,
		ctInterruptEnable,
		ctUpdateData,
		ctStartStart,
		ctContinueProcessing,
		ctContinueStart,
		ctFrequencyToAccumPerSample,
		ctTop
	} CodeTimers;

	static const constexpr char *m_sTimerLabels[ctTop] =
	{
		"ctProcessBlocking          ",
		"ctWaitReady                ",
		"ctStart                    ",
		"ctWaitDone                 ",
		"ctProcessNonBlocking       ",
		"ctInterruptHandler         ",
		"ctInterruptStart           ",
		"ctCopy                     ",
		"ctGetAcumulator            ",
		"ctInterruptEnd             ",
		"ctStartProcessing          ",
		"ctInterruptEnable          ",
		"ctUpdateData               ",
		"ctStartStart               ",
		"ctContinueProcessing       ",
		"ctContinueStart            ",
		"ctFrequencyToAccumPerSample"
	};

//	typedef enum
//	{
//		ctProcessNonBlocking,
//		ctInterruptHandler,
//		ctStartProcessing,
//		ctInterruptEnable,
//		ctUpdateData,
//		ctStartStart,
//		ctContinueProcessing,
//		ctContinueStart,
//		ctFrequencyToAccumPerSample,
//		ctTop
//	} CodeTimers;
//
//	static const constexpr char *m_sTimerLabels[ctTop] =
//	{
//		"ctProcessNonBlocking       ",
//		"ctInterruptHandler         ",
//		"ctStartProcessing          ",
//		"ctInterruptEnable          ",
//		"ctUpdateData               ",
//		"ctStartStart               ",
//		"ctContinueProcessing       ",
//		"ctContinueStart            ",
//		"ctFrequencyToAccumPerSample"
//	};

	Debug								&m_debug;
	CodeTimer<ctTop>		m_codeTimer;
	Dma									&m_dma;
	ISystemHandler 			&m_systemHandler;
	uint16_t 						m_uDeviceId;
	bool 								m_bIsConfigured = false;

	XSimplesinemaster 				m_instance;
	XSimplesinemaster_Config 	*m_pConfig = nullptr;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	//uint32_t						m_uSamples[cVoices][cBlockSamples];
	volatile uint32_t		*m_pSampleStorage;
	uint16_t						m_uCurrentVoice = 0;

};
