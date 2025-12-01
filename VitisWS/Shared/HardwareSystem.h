#pragma once

#include <cstdint>
#include <cstdio>

// Xilinx includes.
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"

#include "Debug.h"
#include "Timer.h"
#include "I2sAudio.h"
#include "Dma.h"

//#include "Bram.h"

class HardwareSystem
{
public:
	HardwareSystem(ISystemHandler &systemHandler)
	: m_systemHandler(systemHandler),
		m_debug(),
		m_timer(),
		m_i2sAudio(m_debug, systemHandler),
		m_dma(m_debug, systemHandler)
	{
		EnableCaches();

		bool bDebugConfigured = m_debug.IsConfigured();
		bool bI2sAudioConfigured = m_i2sAudio.IsConfigured();
		bool bSystemHandlerConfigured = m_systemHandler.IsConfigured();
		bool bDmaConfigured = m_dma.IsConfigured();
		m_bIsConfigured = (bDmaConfigured && bSystemHandlerConfigured && bDebugConfigured && bI2sAudioConfigured);
	}

	// Cannot copy
	HardwareSystem(const HardwareSystem&) = delete;
  void operator=(const HardwareSystem&) = delete;

	bool IsConfigured(void) const
	{
		return m_bIsConfigured;
	}

	Debug &GetDebug(void)
	{
		return m_debug;
	}

	Timer &GetTimer(void)
	{
		return m_timer;
	}

	I2sAudio &GetI2sAudio(void)
	{
		return m_i2sAudio;
	}

	ISystemHandler &GetSystemHandler(void)
	{
		return m_systemHandler;
	}

	Dma &GetDma(void)
	{
		return m_dma;
	}

private:

	void EnableCaches() const
	{
		Xil_ICacheEnable();
		Xil_DCacheEnable();
	}

	void DisableCaches() const
	{
		Xil_DCacheDisable();
		Xil_ICacheDisable();
	}


  ISystemHandler	&m_systemHandler;
  Debug						m_debug;
  Timer						m_timer;
  I2sAudio				m_i2sAudio;
  Dma							m_dma;

	bool m_bIsConfigured = false;

};

