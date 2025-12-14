#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "xmultisinestream.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"

class MultiSineStream
{
public:
	MultiSineStream(HardwareSystem &hardwareSystem, uint16_t uDeviceId, volatile uint32_t *pSampleStorage)
	: m_debug(hardwareSystem.GetDebug()),
		m_systemHandler(hardwareSystem.GetSystemHandler()),
		m_uDeviceId(uDeviceId),
		m_pSampleStorage(pSampleStorage)
	{
		m_pConfig = XMultisinestream_LookupConfig(uDeviceId);

		if (m_pConfig)
			m_bIsConfigured = (XMultisinestream_CfgInitialize(&m_instance, m_pConfig) == XST_SUCCESS);
	}

	void SetSampleStorage(volatile uint32_t *pSampleStorage)
	{
		m_pSampleStorage = pSampleStorage;
	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	void SetFrequency(uint8_t uVoice, float fFrequency)
	{
		uint32_t uVal = FrequencyToAccumPerSample(fFrequency).raw_value();
		XMultisinestream_Write_phaseInc_Words(&m_instance, uVoice, &uVal , 1);
	}



	volatile uint32_t *GetSampleBuffer(uint8_t uVoice)
	{
		return &(m_pSampleStorage[uVoice * cBlockSamples]);
	}


	void ProcessBlocking(void)
	{
		// Wait for Ready
		while (!XMultisinestream_IsReady(&m_instance))
			/* WAIT */;

		// Start HLS
		XMultisinestream_Start(&m_instance);

		// Copy samples
		volatile uint32_t *pDst = m_pSampleStorage;
		for(int i = 0 ; i < (3 * cVoices); i++)
		{
			read_axis_16(pDst);
			pDst+=16;
		}
	}

private:
	FORCE_INLINE PhaseType FrequencyToAccumPerSample(const float frequency)
	{
		constexpr float f =  4096.0f/cSampleRate;
		float     fAcumPerSample = f * frequency;

		return static_cast<PhaseType>(fAcumPerSample);
	}

	void FORCE_INLINE read_axis_4(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;

	  getfsl(a0, 1); getfsl(a1, 1); getfsl(a2, 1); getfsl(a3, 1);

	  a[3] = a3; a[1] = a1; a[2] = a2; a[0] = a0;
	}

	void FORCE_INLINE read_axis_16(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;
		int a4,  a5,  a6,  a7;
		int a8,  a9,  a10, a11;
		int a12, a13, a14, a15;

		getfsl(a0,  1); getfsl(a1,  1); getfsl(a2,  1); getfsl(a3,  1);
		getfsl(a4,  1); getfsl(a5,  1); getfsl(a6,  1); getfsl(a7,  1);
		getfsl(a8,  1); getfsl(a9,  1); getfsl(a10, 1); getfsl(a11, 1);
		getfsl(a12, 1); getfsl(a13, 1); getfsl(a14, 1); getfsl(a15, 1);

		a[3]  = a3;  a[1]  = a1;  a[2]  = a2;  a[0]  = a0;
		a[7]  = a7;  a[5]  = a5;  a[6]  = a6;  a[4]  = a4;
		a[11] = a11; a[9]  = a9;  a[10] = a10; a[8]  = a8;
		a[15] = a15; a[13] = a13; a[14] = a14; a[12] = a12;
	}

	Debug								&m_debug;
	ISystemHandler 			&m_systemHandler;
	uint16_t 						m_uDeviceId;
	bool 								m_bIsConfigured = false;

	XMultisinestream 				m_instance;
	XMultisinestream_Config 	*m_pConfig = nullptr;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	//uint32_t						m_uSamples[cVoices][cBlockSamples];
	volatile uint32_t		*m_pSampleStorage;
	uint16_t						m_uCurrentVoice = 0;

};
