#include "xuartlite_l.h"

#include "HardwareSystem.h"
#include "Debug.h"
#include "SystemHandlerStandalone.h"
#include "SimpleSine.h"
#include "SimpleSineMaster.h"
#include "SimpleSineStream.h"
#include "MultiSine.h"
#include "MultiSineMaster.h"
#include "MultiSineStream.h"
#include "Bram.h"
#include "CodeTimer.h"
#include "microblaze_sleep.h"

uint32_t multiSineSamples[cVoices*cBlockSamples];

int  __attribute__((section(".close_coupled_ram"))) nShit;

#define TEST_BUFFER_WORDS 16

volatile uint32_t SrcBufferBram[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".audio_ram")));
volatile uint32_t DestBufferBram[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".audio_ram")));

volatile uint32_t SrcBufferLocal[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".local_ram")));
volatile uint32_t DestBufferLocal[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".local_ram")));

volatile uint32_t SamplesStorage[cBlockSamples*cVoices] __attribute__((aligned (64))) __attribute__((section(".audio_ram")));
volatile uint32_t SamplesStorageStream[cBlockSamples*cVoices] __attribute__((aligned (64))) __attribute__((section(".local_ram")));
volatile uint32_t PhaseIncsStorage[cVoices] __attribute__((aligned (64))) __attribute__((section(".audio_ram")));

#if DEBUG_MULTISINEMASTER | DEBUG_MULTISINE | DEBUG_SIMPLESINE | DEBUG_SIMPLESINEMASTER
volatile uint32_t DebugStorage[cBlockSamples] __attribute__((aligned (64))) __attribute__((section(".audio_ram")));
#else
volatile uint32_t *DebugStorage = nullptr;
#endif

//volatile uint32_t SamplesDMA[cBlockSamples*cVoices] __attribute__((aligned (64))) __attribute__((section(".local")));


SystemHandlerStandalone systemHandler;
HardwareSystem hardwareSystem(systemHandler);
SimpleSine simpleSine(hardwareSystem, XPAR_XSIMPLESINE_0_DEVICE_ID, SamplesStorage);
SimpleSineMaster simpleSineMaster(hardwareSystem, XPAR_XSIMPLESINE_0_DEVICE_ID, SamplesStorage);
SimpleSineStream simpleSineStream(hardwareSystem, XPAR_XSIMPLESINESTREAM_0_DEVICE_ID, SamplesStorageStream);
MultiSine multiSine(hardwareSystem.GetDebug(), XPAR_XMULTISINE_0_DEVICE_ID);
MultiSineMaster multiSineMaster(hardwareSystem.GetDebug(), XPAR_XMULTISINE_0_DEVICE_ID, SamplesStorage, PhaseIncsStorage, DebugStorage);
MultiSineStream multiSineStream(hardwareSystem, XPAR_XMULTISINESTREAM_0_DEVICE_ID, SamplesStorageStream);


typedef enum _TestState
{
	tsRunAll,
	tsSimple,
	tsSimpleMaster,
	tsSimpleStream,
	tsMulti,
	tsMultiMaster,
	tsMultiStream
} TestState;

void TestDma(void)
{
	// Test dma
		xil_printf("Testing DMA Start\n");
		Dma &dma = hardwareSystem.GetDma();

		volatile uint32_t *pSineSamples = simpleSine.GetSampleBuffer(0);

		if(dma.TestSync(SrcBufferBram, DestBufferBram, TEST_BUFFER_WORDS, true))
			xil_printf("BRAM to BRAM DMA sync test passed\n");
		else
			xil_printf("BRAM to BRAM DMA sync test failed\n");

		if(dma.TestSync(SrcBufferLocal, DestBufferLocal, TEST_BUFFER_WORDS, true))
			xil_printf("LOCAL to LOCAL DMA sync test passed\n");
		else
			xil_printf("LOCAL to LOCAL DMA sync test failed\n");

		if(dma.TestSync(SrcBufferBram, DestBufferLocal, TEST_BUFFER_WORDS, true))
			xil_printf("BRAM to LOCAL DMA sync test passed\n");
		else
			xil_printf("BRAM to LOCAL DMA sync test failed\n");

		if(dma.TestSync(SrcBufferLocal, DestBufferBram, TEST_BUFFER_WORDS, true))
			xil_printf("LOCAL to BRAM DMA sync test passed\n");
		else
			xil_printf("LOCAL to BRAM DMA sync test failed\n");


		if(dma.TestSync(pSineSamples, DestBufferBram, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to BRAM DMA sync test passed\n");
		else
			xil_printf("HLS to BRAM DMA aync test failed\n");

		if(dma.TestSync(pSineSamples, DestBufferLocal, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to LOCAL DMA sync test passed\n");
		else
			xil_printf("HLS to LOCAL DMA aync test failed\n");



		if(dma.TestAsync(SrcBufferBram, DestBufferBram, TEST_BUFFER_WORDS, true))
			xil_printf("BRAM to BRAM DMA async test passed\n");
		else
			xil_printf("BRAM to BRAM DMA async test failed\n");

		if(dma.TestAsync(SrcBufferLocal, DestBufferLocal, TEST_BUFFER_WORDS, true))
			xil_printf("LOCAL to LOCAL DMA async test passed\n");
		else
			xil_printf("LOCAL to LOCAL DMA async test failed\n");


		if(dma.TestAsync(pSineSamples, DestBufferBram, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to BRAM DMA async test passed\n");
		else
			xil_printf("HLS to BRAM DMA async test failed\n");

		if(dma.TestAsync(pSineSamples, DestBufferLocal, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to LOCAL DMA async test passed\n");
		else
			xil_printf("HLS to LOCAL DMA async test failed\n");

		xil_printf("Testing DMA End\n");
}

int main(void)
{
#ifdef RTOS
	#error RTOS should not be defined
#endif
	xil_printf("Audio Playground Tests\n");

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
			float fFrequency = 100.0f * (uVoice+1);
			simpleSine.SetFrequency(uVoice, fFrequency);
			simpleSineMaster.SetFrequency(uVoice, fFrequency);
			simpleSineStream.SetFrequency(uVoice, fFrequency);
			multiSine.SetFrequency(uVoice, fFrequency);
			multiSineMaster.SetFrequency(uVoice, fFrequency);
			multiSineStream.SetFrequency(uVoice, fFrequency);
		}

		TestDma();

//		for(int i = 0; i < 10; i++)
//		{
//
//			multiSineStream.ProcessBlocking();
//			multiSine.ProcessBlocking();
//
//			for(int i=0; i < 48; i++)
//			{
//				for(int v = 0; v < 8; v++)
//				{
//		  		volatile uint32_t *pBuffer1 = multiSine.GetSampleBuffer(v);
//		  		volatile uint32_t *pBuffer2 = multiSineStream.GetSampleBuffer(v);
//
//					float f1 = static_cast<float>( DataType::from_raw_value(pBuffer1[i]<<8));
//					float f2 = static_cast<float>( DataType::from_raw_value(pBuffer2[i]<<8));
//					printf("%f, %f, ", f1, f2);
//				}
//				printf("0\n");
//			}
//		}
//

		TestState testState = tsRunAll;

		uint16_t uCount = 0;
		uint16_t uVoice = 0;



		// for some reason we need the following to get the i2s going, why?
		// something to do with not getting the first interrupt
		hardwareSystem.GetI2sAudio().TransferSilence();

		while(true)
    {
      if (systemHandler.WaitForAudioProcessing())
      {
      	systemHandler.DisableInterrupt(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_OUTPUTS_AXISTOI2SFIFO_0_MOREDATANEEDEDINTERRUPT_INTR);

//      	if(uCount++ > 5000)
//      	{
//      		uVoice ++;
//      		if(uVoice > 7)
//      			uVoice = 0;
//
//      		uCount = 0;
//      	}

      	uint8_t uChar=0;
  			if(!XUartLite_IsReceiveEmpty(XPAR_UARTLITE_0_BASEADDR))
  			{
  				uChar = XUartLite_ReadReg(XPAR_UARTLITE_0_BASEADDR, XUL_RX_FIFO_OFFSET);
  			}

      	if(uChar)
      	{
      		switch (uChar)
      		{
						case '1' :
						case '2' :
						case '3' :
						case '4' :
						case '5' :
						case '6' :
						case '7' :
						case '8' :
						{
							uVoice = uChar - '1';
							xil_printf("Voice %u\n", uVoice);
						}
						break;

						case 'q' : testState = tsRunAll; 				xil_printf("Run All\n");break;
						case 'w' : testState = tsSimple; 				xil_printf("Simple\n");break;
						case 'e' : testState = tsSimpleMaster; 	xil_printf("Simple Master\n");break;
						case 'r' : testState = tsSimpleStream; 	xil_printf("Simple Stream\n");break;
						case 't' : testState = tsMulti; 				xil_printf("Multi\n");break;
						case 'y' : testState = tsMultiMaster; 	xil_printf("Multi Master\n");break;
						case 'u' : testState = tsMultiStream; 	xil_printf("Multi Stream\n");break;

						break;
      		}
      	}

      	// always use simple sine for comparison
    		volatile uint32_t *pMonoSineSampleBuffer;

				if(testState == tsRunAll || testState == tsSimple)
				{
					debug.SetDebug(Debug::dpPio29_processing, 1);
					simpleSine.ProcessBlocking();
					debug.SetDebug(Debug::dpPio29_processing, 0);
	    		pMonoSineSampleBuffer = simpleSine.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsSimpleMaster)
				{
					debug.SetDebug(Debug::dpPio29_processing, 1);
					simpleSineMaster.ProcessBlocking();
					debug.SetDebug(Debug::dpPio29_processing, 0);
	    		pMonoSineSampleBuffer = simpleSineMaster.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsSimpleStream)
				{
					debug.SetDebug(Debug::dpPio29_processing, 1);
					simpleSineStream.ProcessBlocking();
					debug.SetDebug(Debug::dpPio29_processing, 0);
	    		pMonoSineSampleBuffer = simpleSineStream.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsMulti)
				{
					debug.SetDebug(Debug::dpPio29_processing, 1);
					multiSine.ProcessBlocking();
					debug.SetDebug(Debug::dpPio29_processing, 0);
	    		pMonoSineSampleBuffer = multiSine.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsMultiMaster)
				{
					debug.SetDebug(Debug::dpPio29_processing, 1);
					multiSineMaster.ProcessBlocking();
					debug.SetDebug(Debug::dpPio29_processing, 0);
	    		pMonoSineSampleBuffer = multiSineMaster.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsMultiStream)
				{
					debug.SetDebug(Debug::dpPio29_processing, 1);
					multiSineStream.ProcessBlocking();
					debug.SetDebug(Debug::dpPio29_processing, 0);
	    		pMonoSineSampleBuffer = multiSineStream.GetSampleBuffer(uVoice);
				}

				debug.SetDebug(Debug::dpPio31_sampleCopy, 1);
				uint16_t uDestSample = 0;
				for(uint16_t uSample = 0; uSample < 48; uSample++)
				{
					pStereoOutputSampleBuffer[uDestSample++] = pMonoSineSampleBuffer[uSample];
					pStereoOutputSampleBuffer[uDestSample++] = uSample<24 ? 0x00800000 : 0x007fffff;
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
