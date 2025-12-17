#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"

class MultiSineStreamBi
{
public:
	MultiSineStreamBi(HardwareSystem &hardwareSystem, volatile uint32_t *pSampleStorage)
	: m_systemHandler(hardwareSystem.GetSystemHandler()),
		m_pSampleStorage(pSampleStorage)
	{
		m_bIsConfigured = true;
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
		m_fFrequencies[uVoice] = fFrequency;
		m_uPhaseIncs[uVoice] = FrequencyToAccumPerSample(fFrequency).raw_value();
	}

	volatile uint32_t *GetSampleBuffer(uint8_t uVoice)
	{
		return &(m_pSampleStorage[uVoice * cBlockSamples]);
	}

	void ProcessBlocking(void)
	{
		// Set phaseincs
		write_axis_8(m_uPhaseIncs);

		// Copy samples
		volatile uint32_t *pDst = m_pSampleStorage;
		for(int i = 0 ; i < (3 * cVoices); i++)
		{
			read_axis_16(pDst);
			pDst+=16;
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

	  getfsl(a0, 3); getfsl(a1, 3); getfsl(a2, 3); getfsl(a3, 3);

	  a[3] = a3; a[1] = a1; a[2] = a2; a[0] = a0;
	}

	void FORCE_INLINE read_axis_16(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;
		int a4,  a5,  a6,  a7;
		int a8,  a9,  a10, a11;
		int a12, a13, a14, a15;


		getfsl(a0,  3); getfsl(a1,  3); getfsl(a2,  3); getfsl(a3,  3);
		getfsl(a4,  3); getfsl(a5,  3); getfsl(a6,  3); getfsl(a7,  3);
		getfsl(a8,  3); getfsl(a9,  3); getfsl(a10, 3); getfsl(a11, 3);
		getfsl(a12, 3); getfsl(a13, 3); getfsl(a14, 3); getfsl(a15, 3);

		a[3]  = a3;  a[1]  = a1;  a[2]  = a2;  a[0]  = a0;
		a[7]  = a7;  a[5]  = a5;  a[6]  = a6;  a[4]  = a4;
		a[11] = a11; a[9]  = a9;  a[10] = a10; a[8]  = a8;
		a[15] = a15; a[13] = a13; a[14] = a14; a[12] = a12;
	}

	void FORCE_INLINE write_axis_8(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;
		int a4,  a5,  a6,  a7;

		a3  = a[3];  a1  = a[1];  a2  = a[2];  a0  = a[0];
		a7  = a[7];  a5  = a[5];  a6  = a[6];  a4  = a[4];

		putfsl(a0, 3); putfsl(a1, 3); putfsl(a2, 3); putfsl(a3, 3);
		putfsl(a4, 3); putfsl(a5, 3); putfsl(a6, 3); putfsl(a7, 3);
	}

	ISystemHandler 			&m_systemHandler;
	bool 								m_bIsConfigured = false;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	volatile uint32_t		*m_pSampleStorage;
};
