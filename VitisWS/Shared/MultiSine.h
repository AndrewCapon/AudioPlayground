#pragma once

#include "defines.h"
#include <inttypes.h>
#include <assert.h>
#include "xmultisine.h"

#include "DataTypes.h"
#include "Debug.h"

class MultiSine
{
public:
	MultiSine(Debug &debug, uint16_t uDeviceId)
	: m_debug(debug)
	{
		m_uDeviceId = uDeviceId;

		m_pConfig = XMultisine_LookupConfig(uDeviceId);

		if (m_pConfig)
		{
			if(XMultisine_CfgInitialize(&m_instance, m_pConfig) == XST_SUCCESS)
			{
				m_bIsConfigured = true;
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
		XMultisine_Write_phaseInc_Words(&m_instance, uVoice, &uVal , 1);
	}

	uint32_t *GetSampleBuffer(uint8_t uVoice)
	{
		return reinterpret_cast<uint32_t *>(XMultisine_Get_samples_BaseAddress(&m_instance)) + (uVoice*cBlockSamples);
	}

	uint32_t *GetDebugBuffer(void)
	{
#if DEBUG_MULTISINE
		return reinterpret_cast<uint32_t *>(XMultisine_Get_debug_BaseAddress(&m_instance));
#else
		assert (false && "Don't call this");
#endif
	}

	void ProcessBlocking(void)
	{
		while (!XMultisine_IsReady(&m_instance))
			/* WAIT */;

		XMultisine_Start(&m_instance);

		while (!XMultisine_IsDone(&m_instance))
			/* WAIT */;
	}

private:

	FORCE_INLINE PhaseType FrequencyToAccumPerSample(const float frequency)
	{
		constexpr float f =  4096.0f/cSampleRate;
		float     fAcumPerSample = f * frequency;

		return static_cast<PhaseType>(fAcumPerSample);
	}

	Debug								&m_debug;
	uint16_t 						m_uDeviceId;
	bool 								m_bIsConfigured = false;

	XMultisine 					m_instance;
	XMultisine_Config 	*m_pConfig = nullptr;

	FrequencyType 			m_ufFrequency[cVoices];
};
