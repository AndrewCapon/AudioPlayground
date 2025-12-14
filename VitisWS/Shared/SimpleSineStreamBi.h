#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"

class SimpleSineStreamBi
{
public:
	SimpleSineStreamBi(HardwareSystem &hardwareSystem, volatile uint32_t *pSampleStorage)
	: m_debug(hardwareSystem.GetDebug()),
		m_systemHandler(hardwareSystem.GetSystemHandler()),
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
		for(uint8_t uVoice=0; uVoice < cVoices; uVoice++)
		{

			// Set accumulator and phaseinc
			uint32_t uAccumulator = m_uAccumulators[uVoice];
			uint32_t uPhaseInc = m_uPhaseIncs[uVoice];
			putfsl(uAccumulator,2);
			putfsl(uPhaseInc,2);

			// Copy samples
			volatile uint32_t *pDst = &(m_pSampleStorage[uVoice * cBlockSamples]);
			for(int i = 0 ; i < 3; i++)
			{
				read_axis_16(pDst);
				pDst+=16;
			}

			// Update acumulator.
			getfsl(uAccumulator, 2);
			m_uAccumulators[uVoice] = uAccumulator;
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

	  getfsl(a0, 2); getfsl(a1, 2); getfsl(a2, 2); getfsl(a3, 2);

	  a[3] = a3; a[1] = a1; a[2] = a2; a[0] = a0;
	}

	void FORCE_INLINE read_axis_16(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;
		int a4,  a5,  a6,  a7;
		int a8,  a9,  a10, a11;
		int a12, a13, a14, a15;

		getfsl(a0,  2); getfsl(a1,  2); getfsl(a2,  2); getfsl(a3,  2);
		getfsl(a4,  2); getfsl(a5,  2); getfsl(a6,  2); getfsl(a7,  2);
		getfsl(a8,  2); getfsl(a9,  2); getfsl(a10, 2); getfsl(a11, 2);
		getfsl(a12, 2); getfsl(a13, 2); getfsl(a14, 2); getfsl(a15, 2);

		a[3]  = a3;  a[1]  = a1;  a[2]  = a2;  a[0]  = a0;
		a[7]  = a7;  a[5]  = a5;  a[6]  = a6;  a[4]  = a4;
		a[11] = a11; a[9]  = a9;  a[10] = a10; a[8]  = a8;
		a[15] = a15; a[13] = a13; a[14] = a14; a[12] = a12;
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
	ISystemHandler 			&m_systemHandler;
	bool 								m_bIsConfigured = false;

//	XSimplesinestreambidirectional 				m_instance;
//	XSimplesinestreambidirectional_Config 	*m_pConfig = nullptr;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	volatile uint32_t		*m_pSampleStorage;

};
