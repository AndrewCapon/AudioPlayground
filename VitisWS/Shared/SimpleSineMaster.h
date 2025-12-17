#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "xsimplesinemaster.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"

class SimpleSineMaster
{
public:
	SimpleSineMaster(HardwareSystem &hardwareSystem, uint16_t uDeviceId, volatile uint32_t *pSampleStorage)
	: m_dma(hardwareSystem.GetDma()),
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


	void ProcessBlocking(void)
	{
		static uint32_t *pAccumulator = reinterpret_cast<uint32_t *>(m_instance.Control_BaseAddress + XSIMPLESINEMASTER_CONTROL_ADDR_ACCUMULATOR_O_DATA);

		for(uint8_t uVoice=0; uVoice < cVoices; uVoice++)
		{
			// Set accumulator, phaseinc and sample location
			XSimplesinemaster_Set_accumulator_i(&m_instance, m_uAccumulators[uVoice]);
			XSimplesinemaster_Set_phaseInc(&m_instance, m_uPhaseIncs[uVoice]);
			uint32_t uDst = reinterpret_cast<uint32_t>(&(m_pSampleStorage[uVoice * cBlockSamples]));
			XSimplesinemaster_Set_samples(&m_instance, uDst);

			// Wait for Ready
			while (!XSimplesinemaster_IsReady(&m_instance))
				/* WAIT */;

			// Start HLS
			XSimplesinemaster_Start(&m_instance);

			// Wait for done
			while (!XSimplesinemaster_IsDone(&m_instance))
				/* WAIT */;

			// Update acumulator.
			while(!XSimplesinemaster_Get_accumulator_o_vld(&m_instance))
				xil_printf(".");/* WAIT */;

			// Update acumulator.
			//m_uAccumulators[uVoice] = XSimplesine_Get_accumulator_o(&m_instance);
			m_uAccumulators[uVoice] = *pAccumulator;
		}
	}

	void ProcessNonBlocking(void)
	{
		if(XSimplesinemaster_IsReady(&m_instance))
			StartProcessing();
		else
		{
			// Enable Ready interrupt
			XSimplesinemaster_InterruptEnable(&m_instance, 0x2);
		}
	}

	FORCE_INLINE PhaseType FrequencyToAccumPerSample(const float frequency)
	{
		constexpr float f =  4096.0f/cSampleRate;
		float     fAcumPerSample = f * frequency;

		PhaseType result = static_cast<PhaseType>(fAcumPerSample);

		return result;
	}

	FORCE_INLINE void ContinueProcessing(void)
	{
		// process
		XSimplesinemaster_Set_accumulator_i(&m_instance, m_uAccumulators[m_uCurrentVoice]);
		XSimplesinemaster_Set_phaseInc(&m_instance, m_uPhaseIncs[m_uCurrentVoice]);
		uint32_t uDst = reinterpret_cast<uint32_t>(&(m_pSampleStorage[m_uCurrentVoice * cBlockSamples]));
		XSimplesinemaster_Set_samples(&m_instance, uDst);
		XSimplesinemaster_Start(&m_instance);
	}

	FORCE_INLINE void StartProcessing(void)
	{
		// start at voice 0
		m_uCurrentVoice = 0;

		// Enable Done interrupt, disable ready interrupt
		XSimplesinemaster_InterruptEnable(&m_instance, 0x1);

		XSimplesinemaster_Set_accumulator_i(&m_instance, m_uAccumulators[m_uCurrentVoice]);
		XSimplesinemaster_Set_phaseInc(&m_instance, m_uPhaseIncs[m_uCurrentVoice]);
		uint32_t uDst = reinterpret_cast<uint32_t>(&(m_pSampleStorage[m_uCurrentVoice * cBlockSamples]));
		XSimplesinemaster_Set_samples(&m_instance, uDst);

		XSimplesinemaster_Start(&m_instance);
	}

	FORCE_INLINE void InterruptHandler(void)
	{
		uint32_t uMask = XSimplesinemaster_InterruptGetStatus(&m_instance);
		if(uMask & 0x1)
		{
			XSimplesinemaster_InterruptClear(&m_instance, 0x1);

			// update accumulator
			while(!XSimplesinemaster_Get_accumulator_o_vld(&m_instance))
				/* WAIT */;

			m_uAccumulators[m_uCurrentVoice] = XSimplesinemaster_Get_accumulator_o(&m_instance);

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

		}

		if(uMask & 0x2)
		{
			XSimplesinemaster_InterruptClear(&m_instance, 0x2);
			StartProcessing();
		}

		bool higherPriorityTaskWoken = false;
		m_systemHandler.ExitInterruptHandler(higherPriorityTaskWoken);
	}

	static void InterruptHandlerStatic( void *pInstance )
	{
		SimpleSineMaster *pSimpleSineMaster = (SimpleSineMaster *)pInstance;

		pSimpleSineMaster->InterruptHandler();
	}


private:
	Dma									&m_dma;
	ISystemHandler 			&m_systemHandler;
	uint16_t 						m_uDeviceId;
	bool 								m_bIsConfigured = false;

	XSimplesinemaster 				m_instance;
	XSimplesinemaster_Config 	*m_pConfig = nullptr;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	volatile uint32_t		*m_pSampleStorage;
	uint16_t						m_uCurrentVoice = 0;

};
