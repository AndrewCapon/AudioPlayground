#pragma once

class ISystemHandler
{
public:
	typedef void (*InterruptCallback) (void *InstancePtr);

	ISystemHandler() = default;

	// Cannot copy
	ISystemHandler(const ISystemHandler&) = delete;
  void operator=(const ISystemHandler&) = delete;

	virtual bool AddInterruptCallback(uint8_t uInterruptId, InterruptCallback callback, void *pInstance) = 0;
	virtual void ExitInterruptHandler(bool higherPriorityTaskWoken) = 0;

	virtual bool WaitForAudioProcessing(void) = 0;
	virtual bool WaitForDmaDone(void) = 0;

	virtual bool SignalAudioProcessingFromISR(bool &higherPriorityTaskWoken) = 0;
	virtual bool SignalDmaDoneFromISR(bool bError, bool &higherPriorityTaskWoken) = 0;

	virtual bool IsConfigured(void) = 0;

	virtual void DisableInterrupt(uint8_t uInterruptId) = 0;
	virtual void EnableInterrupt(uint8_t uInterruptId) = 0;

};
