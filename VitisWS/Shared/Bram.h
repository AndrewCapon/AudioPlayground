#pragma once

#include <inttypes.h>
#include <assert.h>
#include "xparameters.h"
#include "xbram.h"

class Bram
{
public:
	Bram(uint16_t uDeviceId)
	{
		m_uDeviceId = uDeviceId;

		m_pConfig = XBram_LookupConfig(uDeviceId);

		if (m_pConfig)
		{
			if(XBram_CfgInitialize(&m_instance, m_pConfig, m_pConfig->CtrlBaseAddress) == XST_SUCCESS)
			{
				InitializeECC(m_pConfig, m_pConfig->CtrlBaseAddress);

				m_bIsConfigured = XBram_SelfTest(&m_instance, 0) == XST_SUCCESS;
			}
		}
	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}


private:
	bool 					m_bIsConfigured = false;
	uint32_t			m_uDeviceId;

	XBram 				m_instance;
	XBram_Config 	*m_pConfig = nullptr;

	void InitializeECC(XBram_Config *ConfigPtr, uint32_t EffectiveAddr)
	{
		uint32_t Addr;
		volatile uint32_t Data;

		if (ConfigPtr->EccPresent &&
		    ConfigPtr->EccOnOffRegister &&
		    ConfigPtr->EccOnOffResetValue == 0 &&
		    ConfigPtr->WriteAccess != 0) {
			for (Addr = ConfigPtr->MemBaseAddress;
			     Addr < ConfigPtr->MemHighAddress; Addr+=4) {
				Data = XBram_In32(Addr);
				XBram_Out32(Addr, Data);
			}
			XBram_WriteReg(EffectiveAddr, XBRAM_ECC_ON_OFF_OFFSET, 1);
		}
	}

};
