//#pragma once
//#include <functional>
//
//#include "xparameters.h"
//#include "xintc.h"
//
//class Interrupts
//{
//public:
//	typedef void (*InterruptCallback) (void *InstancePtr);
//
//	Interrupts(void)
//	{
//		m_bIsConfigured = true;
//		m_pConfig = XIntc_LookupConfig(XPAR_AXI_INTC_0_DEVICE_ID);
//		if(m_pConfig != NULL)
//		{
//			if(XIntc_Initialize(&m_Instance, XPAR_AXI_INTC_0_DEVICE_ID)  == XST_SUCCESS)
//			{
//				if(XIntc_Start(&m_Instance, XIN_REAL_MODE)  == XST_SUCCESS)
//				{
//					Xil_ExceptionInit();
//					Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &m_Instance);
//					Xil_ExceptionEnable();
//
//					m_bIsConfigured = true;
//				}
//			}
//		}
//	}
//
//	// Cannot copy
//	Interrupts(const Interrupts&) = delete;
//  void operator=(const Interrupts&) = delete;
//
//	bool IsConfigured(void)
//	{
//		return m_bIsConfigured;
//	}
//
//	XIntc &GetInstance(void)
//	{
//		return m_Instance;
//	}
//
//private:
//  bool					m_bIsConfigured = false;
//  XIntc_Config	*m_pConfig = nullptr;
//  XIntc 				m_Instance;
//
//};
