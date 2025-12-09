#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "xsimplesinestream.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"
#include "CodeTimer.h"

class SimpleSineStream
{
public:
	SimpleSineStream(HardwareSystem &hardwareSystem, uint16_t uDeviceId, volatile uint32_t *pSampleStorage)
	: m_debug(hardwareSystem.GetDebug()),
		m_codeTimer("SimpleSine", const_cast<const char **>(m_sTimerLabels), hardwareSystem.GetTimer()),
		m_systemHandler(hardwareSystem.GetSystemHandler()),
		m_uDeviceId(uDeviceId),
		m_puSamples(pSampleStorage)
	{
		m_pConfig = XSimplesinestream_LookupConfig(uDeviceId);

		if (m_pConfig)
			m_bIsConfigured = (XSimplesinestream_CfgInitialize(&m_instance, m_pConfig) == XST_SUCCESS);
	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	void SetPhaseInc(PhaseType phaseInc)
	{
		XSimplesinestream_Set_phaseInc(&m_instance, phaseInc.raw_value());
	}

	void SetFrequency(uint8_t uVoice, float fFrequency)
	{
		m_fFrequencies[uVoice] = fFrequency;
		m_uPhaseIncs[uVoice] = FrequencyToAccumPerSample(fFrequency).raw_value();
	}


	volatile uint32_t *GetSampleBuffer(uint8_t uVoice)
	{
		return &(m_puSamples[uVoice * cBlockSamples]);
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
		static uint32_t *pAccumulator = reinterpret_cast<uint32_t *>(m_instance.Control_BaseAddress + XSIMPLESINESTREAM_CONTROL_ADDR_ACCUMULATOR_O_DATA);

		if(uCount++ == 1000-1)
		{
			m_codeTimer.LogTimes(1000);
			uCount = 0;
		}

		m_codeTimer.StartTiming(ctProcessBlocking);

		for(uint8_t uVoice=0; uVoice < cVoices; uVoice++)
		{
			// Set accumulator and phaseinc
			m_codeTimer.StartTiming(ctUpdateData);
			XSimplesinestream_Set_accumulator_i(&m_instance, m_uAccumulators[uVoice]);
			XSimplesinestream_Set_phaseInc(&m_instance, m_uPhaseIncs[uVoice]);
			m_codeTimer.StopTiming(ctUpdateData);

			// Wait for Ready
			m_codeTimer.StartTiming(ctWaitReady);
			while (!XSimplesinestream_IsReady(&m_instance))
				/* WAIT */;
			m_codeTimer.StopTiming(ctWaitReady);

			// Start HLS
			m_codeTimer.StartTiming(ctStart);
			XSimplesinestream_Start(&m_instance);
			m_codeTimer.StopTiming(ctStart);

			// Copy samples
			m_codeTimer.StartTiming(ctCopy);
			volatile uint32_t *pDst = &(m_puSamples[uVoice * cBlockSamples]);
			//#pragma GCC unroll 12
			for(int i = 0 ; i < 12; i++)
			{
				read_axis_4(pDst);
				pDst+=4;
			}
			m_codeTimer.StopTiming(ctCopy);

			// Update acumulator.
			m_codeTimer.StartTiming(ctGetAcumulator);
			while(!XSimplesinestream_Get_accumulator_o_vld(&m_instance))
				xil_printf(".");/* WAIT */;

			// Update acumulator.
			//m_uAccumulators[uVoice] = XSimplesine_Get_accumulator_o(&m_instance);
			m_uAccumulators[uVoice] = *pAccumulator;
			m_codeTimer.StopTiming(ctGetAcumulator);
		}
		m_codeTimer.StopTiming(ctProcessBlocking);
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


private:
	void FORCE_INLINE read_axis_4(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;

	  getfsl(a0, 0); getfsl(a1, 0); getfsl(a2, 0); getfsl(a3, 0);

	  a[3] = a3; a[1] = a1; a[2] = a2; a[0] = a0;
	}

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
	ISystemHandler 			&m_systemHandler;
	uint16_t 						m_uDeviceId;
	bool 								m_bIsConfigured = false;

	XSimplesinestream 				m_instance;
	XSimplesinestream_Config 	*m_pConfig = nullptr;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	//uint32_t						m_uSamples[cVoices][cBlockSamples];
	volatile uint32_t		*m_puSamples;
	uint16_t						m_uCurrentVoice = 0;

};
