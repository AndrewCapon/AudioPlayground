#pragma once

#include "defines.h"
#include "ISystemHandler.h"
#include "xintc.h"

class SystemHandlerStandalone: public ISystemHandler
{
public:
	SystemHandlerStandalone(void)
	{
		m_bIsConfigured = true;
		m_pConfig = XIntc_LookupConfig(XPAR_INTC_0_DEVICE_ID);
		if(m_pConfig != NULL)
		{
			if(XIntc_Initialize(&m_Instance, XPAR_INTC_0_DEVICE_ID)  == XST_SUCCESS)
			{
				if(XIntc_Start(&m_Instance, XIN_REAL_MODE)  == XST_SUCCESS)
				{
					Xil_ExceptionInit();
					Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &m_Instance);
					Xil_ExceptionEnable();

					m_bIsConfigured = true;
				}
			}
		}
	}

	bool AddInterruptCallback(uint8_t uInterruptId, InterruptCallback callback, void *pInstance)
	{
		bool bResult = false;

		if(XIntc_Connect(&m_Instance, uInterruptId, (Xil_ExceptionHandler)callback, pInstance) == XST_SUCCESS)
		{
			XIntc_Enable(&m_Instance, uInterruptId);
			bResult = true;
		}

		return bResult;
	}

	FORCE_INLINE void DisableInterrupt(uint8_t uInterruptId)
	{
		XIntc_Disable(&m_Instance, uInterruptId);
	}

	FORCE_INLINE void EnableInterrupt(uint8_t uInterruptId)
	{
		XIntc_Enable(&m_Instance, uInterruptId);
	}

	FORCE_INLINE void ExitInterruptHandler(bool higherPriorityTaskWoken)
	{

	}

	FORCE_INLINE bool WaitForAudioProcessing(void)
	{
		// spin lock
		while(!m_bAudioProcessingSemaphore)
			;

		// reset semaphore
		m_bAudioProcessingSemaphore = false;

		return true;
	}

	FORCE_INLINE bool WaitForDmaDone(void) override
	{
		// spin lock
		while(!m_bDmaDoneSemaphore)
			;

		// reset semaphore
		m_bDmaDoneSemaphore = false;

		return m_bDmaError;
	}


	FORCE_INLINE bool SignalAudioProcessingFromISR(bool &higherPriorityTaskWoken)
	{
		m_bAudioProcessingSemaphore = true;

		return true;
	}

	FORCE_INLINE bool SignalDmaDoneFromISR(bool bError, bool &higherPriorityTaskWoken) override
	{
		m_bDmaError = bError;
		m_bDmaDoneSemaphore = true;

		return true;
	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

private:
	volatile bool m_bAudioProcessingSemaphore = false;
	volatile bool m_bDmaDoneSemaphore = false;
	volatile bool m_bDmaError = false;

	bool					m_bIsConfigured = false;
  XIntc_Config	*m_pConfig = nullptr;
  XIntc 				m_Instance;

};
