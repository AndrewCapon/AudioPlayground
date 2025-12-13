#pragma once

#include <inttypes.h>
#include <assert.h>

#include "defines.h"
#include "xmultisinestream.h"
#include "ISystemHandler.h"
#include "DataTypes.h"
#include "Debug.h"
#include "fpm/fixed.hpp"
#include "CodeTimer.h"

class MultiSineStream
{
public:
	MultiSineStream(HardwareSystem &hardwareSystem, uint16_t uDeviceId, volatile uint32_t *pSampleStorage)
	: m_debug(hardwareSystem.GetDebug()),
		m_codeTimer("MultiSineStream", const_cast<const char **>(m_sTimerLabels), hardwareSystem.GetTimer()),
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
		static uint32_t uCount = 0;

		if(uCount++ == 1000-1)
		{
			m_codeTimer.LogTimes(1000);
			uCount = 0;
		}

		m_codeTimer.StartTiming(ctProcessBlocking);

		// Wait for Ready
		m_codeTimer.StartTiming(ctWaitReady);
		while (!XMultisinestream_IsReady(&m_instance))
			/* WAIT */;
		m_codeTimer.StopTiming(ctWaitReady);

		// Start HLS
		m_codeTimer.StartTiming(ctStart);
		XMultisinestream_Start(&m_instance);
		m_codeTimer.StopTiming(ctStart);

		// Copy samples
		m_codeTimer.StartTiming(ctCopy);
		volatile uint32_t *pDst = m_pSampleStorage;
		//#pragma GCC unroll 12 * cVoices
		for(int i = 0 ; i < 12 * cVoices; i++)
		{
			read_axis_4(pDst);
			pDst+=4;
		}
		m_codeTimer.StopTiming(ctCopy);
		m_codeTimer.StopTiming(ctProcessBlocking);
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

	XMultisinestream 				m_instance;
	XMultisinestream_Config 	*m_pConfig = nullptr;

	float					 			m_fFrequencies[cVoices];
	uint32_t						m_uPhaseIncs[cVoices];
	uint32_t 						m_uAccumulators[cVoices] = {0};
	//uint32_t						m_uSamples[cVoices][cBlockSamples];
	volatile uint32_t		*m_pSampleStorage;
	uint16_t						m_uCurrentVoice = 0;

};
