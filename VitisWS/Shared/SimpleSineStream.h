#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "xsimplesinestream.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"

class SimpleSineStream
{
public:
	SimpleSineStream(HardwareSystem &hardwareSystem, uint16_t uDeviceId, volatile uint32_t *pSampleStorage)
	: m_debug(hardwareSystem.GetDebug()),
		m_systemHandler(hardwareSystem.GetSystemHandler()),
		m_uDeviceId(uDeviceId),
		m_pSampleStorage(pSampleStorage)
	{
		m_pConfig = XSimplesinestream_LookupConfig(uDeviceId);

		if (m_pConfig)
			m_bIsConfigured = (XSimplesinestream_CfgInitialize(&m_instance, m_pConfig) == XST_SUCCESS);
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
		XSimplesinestream_Set_phaseInc(&m_instance, phaseInc.raw_value());
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
		static uint32_t *pAccumulator = reinterpret_cast<uint32_t *>(m_instance.Control_BaseAddress + XSIMPLESINESTREAM_CONTROL_ADDR_ACCUMULATOR_O_DATA);

		for(uint8_t uVoice=0; uVoice < cVoices; uVoice++)
		{
			// Set accumulator and phaseinc
			XSimplesinestream_Set_accumulator_i(&m_instance, m_uAccumulators[uVoice]);
			XSimplesinestream_Set_phaseInc(&m_instance, m_uPhaseIncs[uVoice]);

			// Wait for Ready
			while (!XSimplesinestream_IsReady(&m_instance))
				/* WAIT */;

			// Start HLS
			XSimplesinestream_Start(&m_instance);

			// Copy samples
			volatile uint32_t *pDst = &(m_pSampleStorage[uVoice * cBlockSamples]);
			for(int i = 0 ; i < 3; i++)
			{
				read_axis_16(pDst);
				pDst+=16;
			}

			// Update acumulator.
			while(!XSimplesinestream_Get_accumulator_o_vld(&m_instance))
				xil_printf(".");/* WAIT */;

			// Update acumulator.
			m_uAccumulators[uVoice] = *pAccumulator;
		}
	}

	FORCE_INLINE PhaseType FrequencyToAccumPerSample(const float frequency)
	{
		constexpr float f =  4096.0f/cSampleRate;
		float     fAcumPerSample = f * frequency;

		PhaseType result = static_cast<PhaseType>(fAcumPerSample);

		return result;
	}


private:
	void FORCE_INLINE read_axis_4(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;

	  getfsl(a0, 0); getfsl(a1, 0); getfsl(a2, 0); getfsl(a3, 0);

	  a[3] = a3; a[1] = a1; a[2] = a2; a[0] = a0;
	}

	void FORCE_INLINE read_axis_16(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;
		int a4,  a5,  a6,  a7;
		int a8,  a9,  a10, a11;
		int a12, a13, a14, a15;

		getfsl(a0,  0); getfsl(a1,  0); getfsl(a2,  0); getfsl(a3,  0);
		getfsl(a4,  0); getfsl(a5,  0); getfsl(a6,  0); getfsl(a7,  0);
		getfsl(a8,  0); getfsl(a9,  0); getfsl(a10, 0); getfsl(a11, 0);
		getfsl(a12, 0); getfsl(a13, 0); getfsl(a14, 0); getfsl(a15, 0);

		a[3]  = a3;  a[1]  = a1;  a[2]  = a2;  a[0]  = a0;
		a[7]  = a7;  a[5]  = a5;  a[6]  = a6;  a[4]  = a4;
		a[11] = a11; a[9]  = a9;  a[10] = a10; a[8]  = a8;
		a[15] = a15; a[13] = a13; a[14] = a14; a[12] = a12;
	}

	Debug								&m_debug;
	ISystemHandler 			&m_systemHandler;
	uint16_t 						m_uDeviceId;
	bool 								m_bIsConfigured = false;

	XSimplesinestream 				m_instance;
	XSimplesinestream_Config 	*m_pConfig = nullptr;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	volatile uint32_t		*m_pSampleStorage;

};
