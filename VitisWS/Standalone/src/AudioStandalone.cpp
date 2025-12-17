#include "xuartlite_l.h"

#include "HardwareSystem.h"
#include "Debug.h"
#include "SystemHandlerStandalone.h"
#include "SimpleSine.h"
#include "SimpleSineMaster.h"
#include "SimpleSineStream.h"
#include "SimpleSineStreamBi.h"
#include "MultiSine.h"
#include "MultiSineMaster.h"
#include "MultiSineStream.h"
#include "MultiSineStreamBi.h"
#include "Bram.h"
#include "CodeTimer.h"
#include "microblaze_sleep.h"

#define TEST_DMA 0
#define CSV_TEST 0

#if TEST_DMA
#define TEST_BUFFER_WORDS 16
volatile uint32_t SrcBufferLocal[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".local_ram")));
volatile uint32_t DestBufferLocal[TEST_BUFFER_WORDS] __attribute__((aligned (64))) __attribute__((section(".local_ram")));
#endif // TEST_DMA

volatile uint32_t SamplesStorageLocalRam[cBlockSamples*cVoices] __attribute__((aligned (64))) __attribute__((section(".local_ram")));
volatile uint32_t PhaseIncsStorageLocalRam[cVoices] __attribute__((aligned (64))) __attribute__((section(".local_ram")));


SystemHandlerStandalone systemHandler;
HardwareSystem hardwareSystem(systemHandler);
SimpleSine simpleSine(hardwareSystem, XPAR_XSIMPLESINE_0_DEVICE_ID, SamplesStorageLocalRam);
SimpleSineMaster simpleSineMaster(hardwareSystem, XPAR_XSIMPLESINE_0_DEVICE_ID, SamplesStorageLocalRam);
SimpleSineStream simpleSineStream(hardwareSystem, XPAR_XSIMPLESINESTREAM_0_DEVICE_ID, SamplesStorageLocalRam);
SimpleSineStreamBi simpleSineStreamBi(hardwareSystem, SamplesStorageLocalRam);
MultiSine multiSine(XPAR_XMULTISINE_0_DEVICE_ID);
MultiSineMaster multiSineMaster(XPAR_XMULTISINE_0_DEVICE_ID, SamplesStorageLocalRam, PhaseIncsStorageLocalRam);
MultiSineStream multiSineStream(hardwareSystem, XPAR_XMULTISINESTREAM_0_DEVICE_ID, SamplesStorageLocalRam);
MultiSineStreamBi multiSineStreamBi(hardwareSystem, SamplesStorageLocalRam);

typedef enum _TestState
{
	tsSimple,
	tsSimpleMaster,
	tsSimpleStream,
	tsSimpleStreamBi,
	tsMulti,
	tsMultiMaster,
	tsMultiStream,
	tsMultiStreamBi,
	tsRunAll
} TestState;


static const constexpr char *sCodeTimerLabels[tsRunAll] =
{
	"Simple           ",
	"SimpleMaster     ",
	"SimpleStream     ",
	"SimpleStreamBi   ",
	"Multi            ",
	"MultiMaster      ",
	"MultiStream      ",
	"MultiStreamBi    "
};

CodeTimer<tsRunAll> codeTimer("Code Timings", const_cast<const char **>(sCodeTimerLabels), hardwareSystem.GetTimer());



#if TEST_DMA
void TestDma(void)
{
	// Test dma
		xil_printf("Testing DMA Start\n");
		Dma &dma = hardwareSystem.GetDma();

		volatile uint32_t *pSineSamples = simpleSine.GetSlaveBuffer();

		if(dma.TestSync(SrcBufferLocal, DestBufferLocal, TEST_BUFFER_WORDS, true))
			xil_printf("LOCAL to LOCAL DMA sync test passed\n");
		else
			xil_printf("LOCAL to LOCAL DMA sync test failed\n");

		if(dma.TestSync(SrcBufferLocal, DestBufferBram, TEST_BUFFER_WORDS, true))
			xil_printf("LOCAL to BRAM DMA sync test passed\n");
		else
			xil_printf("LOCAL to BRAM DMA sync test failed\n");

		if(dma.TestSync(pSineSamples, DestBufferLocal, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to LOCAL DMA sync test passed\n");
		else
			xil_printf("HLS to LOCAL DMA aync test failed\n");

		if(dma.TestAsync(SrcBufferLocal, DestBufferLocal, TEST_BUFFER_WORDS, true))
			xil_printf("LOCAL to LOCAL DMA async test passed\n");
		else
			xil_printf("LOCAL to LOCAL DMA async test failed\n");

		if(dma.TestAsync(pSineSamples, DestBufferLocal, TEST_BUFFER_WORDS, false))
			xil_printf("HLS to LOCAL DMA async test passed\n");
		else
			xil_printf("HLS to LOCAL DMA async test failed\n");

		xil_printf("Testing DMA End\n");
}
#endif // TEST_DMA

void DisplayHelp(void)
{
	xil_printf("\033[2J\033[H");
	xil_printf("Audio Playground Tests\n");
	xil_printf("  Press 1-8 to choose wave (1=100hz, 2=200hz etc)\n");
	xil_printf("  Press h to display this help\n");
	xil_printf("  Press l to toggle log\n");
	xil_printf("  Press q to run all tests for timing info\n");
	xil_printf("  Press w to test simple sine slave\n");
	xil_printf("  Press e to test simple sine master\n");
	xil_printf("  Press r to test simple sine stream\n");
	xil_printf("  Press t to test simple sine stream bidirectional\n");
	xil_printf("  Press y to test multi sine slave\n");
	xil_printf("  Press u to test multi sine master\n");
	xil_printf("  Press i to test multi sine stream\n");
	xil_printf("  Press o to test multi sine stream bidirectional\n");
}

int main(void)
{
#ifdef RTOS
	#error RTOS should not be defined
#endif // RTOS

	DisplayHelp();

	bool bLog = false;

	uint32_t *pStereoOutputSampleBuffer = hardwareSystem.GetI2sAudio().GetSampleBuffer();

	if(hardwareSystem.IsConfigured())
	{
		for(uint8_t uVoice = 0; uVoice < cVoices; uVoice++)
		{
			float fFrequency = 100.0f * (uVoice+1);
			simpleSine.SetFrequency(uVoice, fFrequency);
			simpleSineMaster.SetFrequency(uVoice, fFrequency);
			simpleSineStream.SetFrequency(uVoice, fFrequency);
			simpleSineStreamBi.SetFrequency(uVoice, fFrequency);
			multiSine.SetFrequency(uVoice, fFrequency);
			multiSineMaster.SetFrequency(uVoice, fFrequency);
			multiSineStream.SetFrequency(uVoice, fFrequency);
			multiSineStreamBi.SetFrequency(uVoice, fFrequency);
		}

#if TEST_DMA
		TestDma();
#endif // TEST_DMA

#if CSV_TEST
		for(int i = 0; i < 10; i++)
		{

			multiSineStream.ProcessBlocking();
			multiSine.ProcessBlocking();

			for(int i=0; i < 48; i++)
			{
				for(int v = 0; v < 8; v++)
				{
		  		volatile uint32_t *pBuffer1 = multiSine.GetSampleBuffer(v);
		  		volatile uint32_t *pBuffer2 = multiSineStream.GetSampleBuffer(v);

					float f1 = static_cast<float>( DataType::from_raw_value(pBuffer1[i]<<8));
					float f2 = static_cast<float>( DataType::from_raw_value(pBuffer2[i]<<8));
					printf("%f, %f, ", f1, f2);
				}
				printf("0\n");
			}
		}
#endif //CSV_TEST

		TestState testState = tsSimple;

		uint16_t uVoice = 0;

		while(true)
    {
      if (systemHandler.WaitForAudioProcessing())
      {
      	systemHandler.DisableInterrupt(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_OUTPUTS_AXISTOI2SFIFO_0_MOREDATANEEDEDINTERRUPT_INTR);

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

						case 'l' : bLog = !bLog; DisplayHelp();break;
						case 'h' : DisplayHelp(); break;
						case 'q' : testState = tsRunAll; 					xil_printf("Run All\n");break;
						case 'w' : testState = tsSimple; 					xil_printf("Simple\n");break;
						case 'e' : testState = tsSimpleMaster; 		xil_printf("Simple Master\n");break;
						case 'r' : testState = tsSimpleStream; 		xil_printf("Simple Stream\n");break;
						case 't' : testState = tsSimpleStreamBi; 	xil_printf("Simple Stream Bidirectional\n");break;
						case 'y' : testState = tsMulti; 					xil_printf("Multi\n");break;
						case 'u' : testState = tsMultiMaster; 		xil_printf("Multi Master\n");break;
						case 'i' : testState = tsMultiStream; 		xil_printf("Multi Stream\n");break;
						case 'o' : testState = tsMultiStreamBi; 	xil_printf("Multi Stream Bidirectional\n");break;

						break;
      		}
      	}

      	static uint32_t uCount = 0;
				if(bLog && (uCount++ == 1000-1))
				{
					xil_printf("\033[2J\033[H");
					codeTimer.LogTimes(1000);
					uCount = 0;
				}

      	// always use simple sine as default
    		volatile uint32_t *pMonoSineSampleBuffer = simpleSine.GetSampleBuffer(uVoice);;

				if(testState == tsRunAll || testState == tsSimple)
				{
					if (bLog)
						codeTimer.StartTiming(tsSimple);

					simpleSine.ProcessBlocking();

					if (bLog)
						codeTimer.StopTiming(tsSimple);

	    		pMonoSineSampleBuffer = simpleSine.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsSimpleMaster)
				{
					if (bLog)
						codeTimer.StartTiming(tsSimpleMaster);

					simpleSineMaster.ProcessBlocking();

					if(bLog)
						codeTimer.StopTiming(tsSimpleMaster);

					pMonoSineSampleBuffer = simpleSineMaster.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsSimpleStream)
				{
					if(bLog)
						codeTimer.StartTiming(tsSimpleStream);

					simpleSineStream.ProcessBlocking();

					if(bLog)
						codeTimer.StopTiming(tsSimpleStream);

					pMonoSineSampleBuffer = simpleSineStream.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsSimpleStreamBi)
				{
					if(bLog)
						codeTimer.StartTiming(tsSimpleStreamBi);

					simpleSineStreamBi.ProcessBlocking();

					if(bLog)
						codeTimer.StopTiming(tsSimpleStreamBi);

					pMonoSineSampleBuffer = simpleSineStreamBi.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsMulti)
				{
					if(bLog)
						codeTimer.StartTiming(tsMulti);

					if(bLog)
						multiSine.ProcessBlocking();

					codeTimer.StopTiming(tsMulti);

					pMonoSineSampleBuffer = multiSine.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsMultiMaster)
				{
					if(bLog)
						codeTimer.StartTiming(tsMultiMaster);

					multiSineMaster.ProcessBlocking();

					if(bLog)
						codeTimer.StopTiming(tsMultiMaster);

					pMonoSineSampleBuffer = multiSineMaster.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsMultiStream)
				{
					if(bLog)
						codeTimer.StartTiming(tsMultiStream);

					multiSineStream.ProcessBlocking();

					if(bLog)
						codeTimer.StopTiming(tsMultiStream);

					pMonoSineSampleBuffer = multiSineStream.GetSampleBuffer(uVoice);
				}

				if(testState == tsRunAll || testState == tsMultiStreamBi)
				{
					if(bLog)
						codeTimer.StartTiming(tsMultiStreamBi);

					multiSineStreamBi.ProcessBlocking();

					if(bLog)
						codeTimer.StopTiming(tsMultiStreamBi);

					pMonoSineSampleBuffer = multiSineStreamBi.GetSampleBuffer(uVoice);
				}

				uint16_t uDestSample = 0;
				for(uint16_t uSample = 0; uSample < 48; uSample++)
				{
					pStereoOutputSampleBuffer[uDestSample++] = pMonoSineSampleBuffer[uSample];
					pStereoOutputSampleBuffer[uDestSample++] = uSample<24 ? 0x00800000 : 0x007fffff;
				}

      	systemHandler.EnableInterrupt(XPAR_PROCESSOR_MICROBLAZE_0_AXI_INTC_OUTPUTS_AXISTOI2SFIFO_0_MOREDATANEEDEDINTERRUPT_INTR);
      }
      else
      {
      	// if we timed out waiting for audio int then transfer silence to recover
      	hardwareSystem.GetI2sAudio().TransferSilence();
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
