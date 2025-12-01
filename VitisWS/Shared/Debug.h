#pragma once
#include "defines.h"
#include "xparameters.h"
#include "xgpio.h"

class Debug
{
public:
	typedef enum _DebugPin
	{
		dpPio26_needData,
		dpPio27_done,
		dpPio28_ready,
		dpPio29_processing,
		dpPio30_interrupt,
		dpPio31_sampleCopy,
		dpPio32_dmaInterrupt,
		dpPio33,

		dpPio34,
		dpPio35,
		dpPio36,
		dpPio37,
	} DebugPin;

	Debug(void)
	{
		if(XGpio_Initialize( &m_Instance, XPAR_GPIO_0_DEVICE_ID) == XST_SUCCESS)
		{
			// set to outputs
			XGpio_SetDataDirection( &m_Instance, 1, 0 );

			// set off
			m_uDebugState = 0;
			XGpio_DiscreteWrite( &m_Instance, 1, m_uDebugState );

			m_bIsConfigured = true;
		}
	}

	// Cannot copy
	Debug(const Debug&) = delete;
  void operator=(const Debug&) = delete;

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	void FORCE_INLINE SetDebug(DebugPin uPin, uint8_t bValue)
	{
		static volatile uint32_t *pAddr = (volatile uint32_t *)m_Instance.BaseAddress;

		uint32_t uMask = (1 << uPin);
		if(bValue)
			m_uDebugState |= uMask;
		else
			m_uDebugState &= ~uMask;

		*pAddr = m_uDebugState;
	}

private:
  bool			m_bIsConfigured = false;
	XGpio			m_Instance;
	uint32_t 	m_uDebugState = 0;
};
