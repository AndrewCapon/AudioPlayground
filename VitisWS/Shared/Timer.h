#pragma once
#include "defines.h"
#include "xparameters.h"
#include "xtmrctr.h"

// TODO lookat for rtos

class Timer
{
public:
	Timer(void)
	{
		if(XST_SUCCESS == XTmrCtr_Initialize(&m_instance, XPAR_PROCESSOR_AXI_TIMER_0_DEVICE_ID))
			if (XST_SUCCESS == XTmrCtr_SelfTest(&m_instance, 0))
			{
				XTmrCtr_SetOptions(&m_instance, 0, XTC_AUTO_RELOAD_OPTION);
				XTmrCtr_Start(&m_instance, 0);
				m_pTimer0Value = reinterpret_cast<uint32_t *>(m_instance.BaseAddress + XTC_TCR_OFFSET);
			}
	}

	// Cannot copy
	Timer(const Timer&) = delete;
  void operator=(const Timer&) = delete;

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	FORCE_INLINE uint32_t GetValue(void)
	{
		return *m_pTimer0Value;
//		return XTmrCtr_ReadReg(m_instance.BaseAddress, 0, XTC_TCR_OFFSET);
	}

private:
	XTmrCtr 	m_instance;
  bool			m_bIsConfigured = false;
  volatile uint32_t *m_pTimer0Value = nullptr;
};
