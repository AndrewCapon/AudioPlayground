#pragma once

#include "xparameters.h"
#include "xaxicdma.h"
#include "xil_util.h"

#include "ISystemHandler.h"
#include "Interrupts.h"
#include "Debug.h"

class Dma
{
public:
	Dma(Debug &debug, ISystemHandler &systemHandler)
	: m_debug(debug),
		m_systemHandler(systemHandler)
	{
		m_pConfig =  XAxiCdma_LookupConfig(XPAR_AXICDMA_0_DEVICE_ID);

		if (m_pConfig)
		{
			if( XAxiCdma_CfgInitialize(&m_instance, m_pConfig, m_pConfig->BaseAddress) == XST_SUCCESS)
			{
				// add the interrupot handler to point into the XAxiCdma driver not us. The driver will call us.
				m_bIsConfigured = systemHandler.AddInterruptCallback(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_AUDIO_COMPONENTS_AUDIO_BRAM_AXI_CDMA_0_CDMA_INTROUT_INTR, XAxiCdma_IntrHandler, &m_instance);
			}
		}

	}

	// Cannot copy
	Dma(const Dma&) = delete;
  void operator=(const Dma&) = delete;

//	void InterruptHandler(void)
//	{
//	}
//
//	static void InterruptHandlerStatic( void *pInstance )
//	{
//		Dma *pDma = (Dma *)pInstance;
//
//		pDma->InterruptHandler();
//	}

	bool IsConfigured(void)
	{
		return m_bIsConfigured;
	}

	bool TransferSync(volatile uint32_t *pSrc, volatile uint32_t *pDst, uint32_t uLenWords)
	{
		bool bResult = false;

		XAxiCdma_IntrDisable(&m_instance, XAXICDMA_XR_IRQ_ALL_MASK);

		uint32_t uLenBytes = uLenWords * 4;

		UINTPTR uSrc = reinterpret_cast<UINTPTR>(pSrc);
		UINTPTR uDst = reinterpret_cast<UINTPTR>(pDst);

		Xil_DCacheFlushRange(uSrc, uLenBytes);
		Xil_DCacheFlushRange(uDst, uLenBytes);

		if(XAxiCdma_SimpleTransfer(&m_instance, uSrc, uDst, uLenBytes, NULL, NULL) == XST_SUCCESS)
		{
			// wait
			if(Xil_WaitForEvent(m_instance.BaseAddr + XAXICDMA_SR_OFFSET, XAXICDMA_SR_IDLE_MASK, XAXICDMA_SR_IDLE_MASK, 1000000) == XST_SUCCESS)
			{
				uint32_t uError = XAxiCdma_GetError(&m_instance);
				if (uError == 0x0)
					bResult = true;
				else
				{
					XAxiCdma_Reset(&m_instance);
					xil_printf("error = %x\n");
				}
			}
		}
		else
			xil_printf("TransferFailed\n");

		return bResult;
	}

	bool TransferAsync(volatile uint32_t *pSrc, volatile uint32_t *pDst, uint32_t uLenWords)
	{
		bool bResult = false;

		XAxiCdma_IntrEnable(&m_instance, XAXICDMA_XR_IRQ_ALL_MASK);

		uint32_t uLenBytes = uLenWords * 4;

		UINTPTR uSrc = reinterpret_cast<UINTPTR>(pSrc);
		UINTPTR uDst = reinterpret_cast<UINTPTR>(pDst);

		Xil_DCacheFlushRange(uSrc, uLenBytes);
		Xil_DCacheFlushRange(uDst, uLenBytes);

		if(XAxiCdma_SimpleTransfer(&m_instance, uSrc, uDst, uLenBytes, InterruptHandlerStatic, this) == XST_SUCCESS)
			bResult = true;
		else
			xil_printf("TransferFailed\n");

		return bResult;
	}

	bool TestSync(volatile uint32_t *pSrc, volatile uint32_t *pDst, uint32_t uLenWords, bool bInitSrc)
	{
		bool bResult = false;

		for(uint32_t i = 0; i < uLenWords; i++)
		{
			if(bInitSrc)
				pSrc[i] = i;
			pDst[i] = 0;
		}

		if(TransferSync(pSrc, pDst, uLenWords))
		{
			bResult = true;
			for(uint32_t i = 0; bResult && (i < uLenWords); i++)
				bResult = (pDst[i] == pSrc[i]);
		}

		return bResult;
	}

	bool TestAsync(volatile uint32_t *pSrc, volatile uint32_t *pDst, uint32_t uLenWords, bool bInitSrc)
	{
		bool bResult = false;

		for(uint32_t i = 0; i < uLenWords; i++)
		{
			if(bInitSrc)
				pSrc[i] = i;
			pDst[i] = 0;
		}

		if(TransferAsync(pSrc, pDst, uLenWords))
		{
			// wait for completion
			bool bDmaError = m_systemHandler.WaitForDmaDone();

			if(!bDmaError)
			{
				bResult = true;
				for(uint32_t i = 0; bResult && (i < uLenWords); i++)
					bResult = (pDst[i] == pSrc[i]);
			}
		}

		return bResult;
	}

	void InterruptHandler(uint32_t uIrqMask)
	{
		m_debug.SetDebug(Debug::dpPio32_dmaInterrupt, 1);
		bool higherPriorityTaskWoken;
		m_systemHandler.SignalDmaDoneFromISR((uIrqMask & XAXICDMA_XR_IRQ_ERROR_MASK), higherPriorityTaskWoken);
		m_systemHandler.ExitInterruptHandler(higherPriorityTaskWoken);
		m_debug.SetDebug(Debug::dpPio32_dmaInterrupt, 0);
	}

	static void InterruptHandlerStatic(void *pInstance, uint32_t uIrqMask, int *IgnorePtr)
	{
		Dma *pDma = (Dma *)pInstance;

		pDma->InterruptHandler(uIrqMask);
	}

private:
	Debug 					&m_debug;
	ISystemHandler 	&m_systemHandler;

	XAxiCdma 						m_instance;
	XAxiCdma_Config 		*m_pConfig = nullptr;

	bool m_bIsConfigured = false;

};
