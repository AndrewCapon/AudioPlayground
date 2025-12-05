#pragma once

#include "defines.h"
#include <inttypes.h>
#include <assert.h>
#include "xmultisinemaster.h"

#include "DataTypes.h"
#include "Debug.h"

class MultiSineMaster
{
public:
	MultiSineMaster(Debug &debug, uint16_t uDeviceId, volatile uint32_t *pSampleStorage, volatile uint32_t *pPhaseIncStorage, volatile uint32_t *pDebugStorage=nullptr)
	: m_debug(debug),
		m_pSampleStorage(pSampleStorage),
		m_pPhaseIncStorage(pPhaseIncStorage),
		m_pDebugStorage(pDebugStorage)
	{
		m_uDeviceId = uDeviceId;

		m_pConfig = XMultisinemaster_LookupConfig(uDeviceId);

		if (m_pConfig)
		{
			if(XMultisinemaster_CfgInitialize(&m_instance, m_pConfig) == XST_SUCCESS)
			{
				m_bIsConfigured = true;

				XMultisinemaster_Set_samples(&m_instance, reinterpret_cast<uint32_t>(m_pSampleStorage));
				XMultisinemaster_Set_phaseInc(&m_instance, reinterpret_cast<uint32_t>(m_pPhaseIncStorage));
#if DEBUG_MULTISINEMASTER
				XMultisinemaster_Set_debug(&m_instance, reinterpret_cast<uint32_t>(m_pDebugStorage));
#endif
			}
		}
	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	void SetFrequency(uint8_t uVoice, float ufFrequency)
	{
		uint32_t uVal = FrequencyToAccumPerSample(ufFrequency).raw_value();
		m_pPhaseIncStorage[uVoice] = uVal;
	}

	volatile uint32_t *GetSampleBuffer(uint8_t uVoice)
	{
		return &m_pSampleStorage[uVoice*cBlockSamples];
	}

	volatile uint32_t *GetDebugBuffer(void)
	{
#if DEBUG_MULTISINEMASTER
		return m_pDebugStorage;
#else
		assert (false && "Don't call this");
#endif
	}

	void ProcessBlocking(void)
	{
		while (!XMultisinemaster_IsReady(&m_instance))
			/* WAIT */;

		XMultisinemaster_Start(&m_instance);

		while (!XMultisinemaster_IsDone(&m_instance))
			/* WAIT */;
	}

private:

	FORCE_INLINE PhaseType FrequencyToAccumPerSample(const float frequency)
	{
		constexpr float f =  4096.0f/cSampleRate;
		float     fAcumPerSample = f * frequency;

		return static_cast<PhaseType>(fAcumPerSample);
	}

	Debug											&m_debug;
	uint16_t 									m_uDeviceId;
	bool 											m_bIsConfigured = false;

	volatile uint32_t					*m_pSampleStorage;
	volatile uint32_t					*m_pPhaseIncStorage;
	volatile uint32_t					*m_pDebugStorage;

	XMultisinemaster 					m_instance;
	XMultisinemaster_Config 	*m_pConfig = nullptr;

	FrequencyType 						m_ufFrequency[cVoices];
};
