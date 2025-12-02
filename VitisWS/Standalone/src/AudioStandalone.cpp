#include "HardwareSystem.h"
#include "Debug.h"
#include "SystemHandlerStandalone.h"
#include "SimpleSine.h"
#include "SimpleSineMaster.h"
#include "MultiSine.h"
#include "Bram.h"
#include "CodeTimer.h"
#include "microblaze_sleep.h"

uint32_t multiSineSamples[cVoices*cBlockSamples];

int  __attribute__((section(".close_coupled_ram"))) nShit;

#define TEST_BUFFER_WORDS 16

volatile uint32_t SrcBufferDma[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".dma")));
volatile uint32_t DestBufferDma[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".dma")));

volatile uint32_t SamplesDMA[cBlockSamples*cVoices] __attribute__((aligned (64))) __attribute__((section(".dma")));
//volatile uint32_t SamplesDMA[cBlockSamples*cVoices] __attribute__((aligned (64))) __attribute__((section(".local")));


SystemHandlerStandalone systemHandler;
HardwareSystem hardwareSystem(systemHandler);
SimpleSine simpleSine(hardwareSystem, XPAR_XSIMPLESINE_0_DEVICE_ID, SamplesDMA);
SimpleSineMaster simpleSineMaster(hardwareSystem, XPAR_XSIMPLESINE_0_DEVICE_ID, SamplesDMA);
MultiSine multiSine(hardwareSystem.GetDebug(), XPAR_XMULTISINE_0_DEVICE_ID);


int main(void)
{
#ifdef RTOS
	#error RTOS should not be defined
#endif


	uint32_t *pStereoOutputSampleBuffer = hardwareSystem.GetI2sAudio().GetSampleBuffer();
//	uint32_t *pMonoSineSampleBuffer = multiSine.GetSampleBuffer(0);
//	uint32_t *pMonoSineSampleBuffer2 = multiSine.GetSampleBuffer(1);

#if DEBUG
	uint32_t *pDebugBuffer = simpleSine.GetDebugBuffer();
#endif
	if(hardwareSystem.IsConfigured())
	{
		Debug &debug = hardwareSystem.GetDebug();
		for(uint8_t uVoice = 0; uVoice < cVoices; uVoice++)
		{
			float fFrequency = 1000.0f * (uVoice+1);
			simpleSine.SetFrequency(uVoice, fFrequency);
			simpleSineMaster.SetFrequency(uVoice, fFrequency);
			multiSine.SetFrequency(uVoice, fFrequency);
		}

//		while(1)
//			simpleSine.ProcessNonBlocking();

//		while(1)
//		hardwareSystem.GetI2sAudio().TransferSampleBuffer();

		// Test dma
		xil_printf("Testing DMA Start\n");
		Dma &dma = hardwareSystem.GetDma();

		uint32_t *pSineSamples = reinterpret_cast<uint32_t *>(0x00020100);

		if(dma.TestSync(SrcBufferDma, DestBufferDma, TEST_BUFFER_WORDS, true))
			xil_printf("BRAM to BRAM DMA sync test passed\n");
		else
			xil_printf("BRAM to BRAM DMA sync test failed\n");


		if(dma.TestSync(pSineSamples, DestBufferDma, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to BRAM DMA sync test passed\n");
		else
			xil_printf("HLS to BRAM DMA aync test failed\n");

		if(dma.TestAsync(SrcBufferDma, DestBufferDma, TEST_BUFFER_WORDS, true))
			xil_printf("BRAM to BRAM DMA async test passed\n");
		else
			xil_printf("BRAM to BRAM DMA async test failed\n");


		if(dma.TestAsync(pSineSamples, DestBufferDma, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to BRAM DMA async test passed\n");
		else
			xil_printf("HLS to BRAM DMA async test failed\n");

		xil_printf("Testing DMA End\n");


		uint16_t uCount = 0;
		uint16_t uVoice = 0;

		volatile uint32_t *pMonoSineSampleBuffer  = simpleSine.GetSampleBuffer(uVoice);
		volatile uint32_t *pMonoSineSampleBuffer2 = multiSine.GetSampleBuffer(uVoice);


		// for some reason we need the following to get the i2s going, why?
		// something to do with not getting the first interrupt
		hardwareSystem.GetI2sAudio().TransferSilence();

		while(true)
    {
      if (systemHandler.WaitForAudioProcessing())
      {
      	systemHandler.DisableInterrupt(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_OUTPUTS_AXISTOI2SFIFO_0_MOREDATANEEDEDINTERRUPT_INTR);

      	if(uCount++ > 5000)
      	{
      		uVoice ++;
      		if(uVoice > 7)
      			uVoice = 0;

      		uCount = 0;
      		pMonoSineSampleBuffer = simpleSine.GetSampleBuffer(uVoice);
      		pMonoSineSampleBuffer2 = multiSine.GetSampleBuffer(uVoice);
      	}

				debug.SetDebug(Debug::dpPio29_processing, 1);
				simpleSineMaster.ProcessBlocking();
				debug.SetDebug(Debug::dpPio29_processing, 0);

				debug.SetDebug(Debug::dpPio29_processing, 1);
				multiSine.ProcessBlocking();
				debug.SetDebug(Debug::dpPio29_processing, 0);

				debug.SetDebug(Debug::dpPio31_sampleCopy, 1);
				uint16_t uDestSample = 0;
				for(uint16_t uSample = 0; uSample < 48; uSample++)
				{
//					pStereoOutputSampleBuffer[uDestSample++] = uSample<24 ? 0x00800000 : 0x007fffff;
					pStereoOutputSampleBuffer[uDestSample++] = pMonoSineSampleBuffer[uSample];
					pStereoOutputSampleBuffer[uDestSample++] = pMonoSineSampleBuffer2[uSample];
				}
				debug.SetDebug(Debug::dpPio31_sampleCopy, 0);

      	systemHandler.EnableInterrupt(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_OUTPUTS_AXISTOI2SFIFO_0_MOREDATANEEDEDINTERRUPT_INTR);
      }
    }
	}
	else
	{
		xil_printf("Failed to initialise hardware.");
		while(1)
			;
	}
	return 0;
}
