#pragma once

#include "xparameters.h"
#include "ISystemHandler.h"
#include "Interrupts.h"
#include "Debug.h"

class I2sAudio
{
public:
	I2sAudio(Debug &debug, ISystemHandler &systemHandler)
	: m_debug(debug),
		m_systemHandler(systemHandler)
	{
		m_bIsConfigured = systemHandler.AddInterruptCallback(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_OUTPUTS_AXISTOI2SFIFO_0_MOREDATANEEDEDINTERRUPT_INTR, NeedDataInterruptHandlerStatic, this);
	}

	// Cannot copy
	I2sAudio(const I2sAudio&) = delete;
  void operator=(const I2sAudio&) = delete;

	void TransferSilence(void)
	{
		uint32_t buffer[4] = {1,2,3,4};
		for(u32 i = 0x00; i < 96; i+=4)
		{
			u32 *data = buffer;
			write_axis_4(data);
		}
	}

	void TransferSampleBuffer(void)
	{
		uint32_t *data = m_sampleBuffer;
		for(u32 i = 0x00; i < 96; i+=4)
		{
			write_axis_4(data);
			data+= 4;
		}
	}

	void NeedDataInterruptHandler(void)
	{
		m_debug.SetDebug(Debug::dpPio26_needData, 1);
		TransferSampleBuffer();
		m_debug.SetDebug(Debug::dpPio26_needData, 0);

		bool higherPriorityTaskWoken;
		m_systemHandler.SignalAudioProcessingFromISR(higherPriorityTaskWoken);
		m_systemHandler.ExitInterruptHandler(higherPriorityTaskWoken);
	}

	static void NeedDataInterruptHandlerStatic( void *pInstance )
	{
		I2sAudio *pI2sAudio = (I2sAudio *)pInstance;

		pI2sAudio->NeedDataInterruptHandler();
	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	uint32_t *GetSampleBuffer(void)
	{
		return m_sampleBuffer;
	}

private:

	void FORCE_INLINE write_axis_4(volatile uint32_t *a)
	{
		int a0,  a1,  a2,  a3;

		a3  = a[3];  a1  = a[1];  a2  = a[2];  a0  = a[0];

		putfsl(a0,  0); putfsl(a1,  0); putfsl(a2,  0); putfsl(a3,  0);
	}

	Debug 					&m_debug;
	ISystemHandler 	&m_systemHandler;
	uint32_t				m_sampleBuffer[2*48];

	bool m_bIsConfigured = false;

};
