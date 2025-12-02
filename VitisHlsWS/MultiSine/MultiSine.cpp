#include "MultiSine.h"

FrequencyMultiplierType f =  4096.0f/cSampleRate;

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency)
{
    PhaseType       acumPerSample;

    acumPerSample = f * frequency;
    return acumPerSample;
}

void InitSinTable(DataType sine_lut[cSineLutSize]) 
{
    int i;
    float fAngle    = 0.0;
    float fAngleInc = (M_PI * 2.0f)/cSineLutSize;

    for (i = 0; i < cSineLutSize; i++) 
    {
        float f = sin(fAngle);
        sine_lut[i] = f;
        fAngle += fAngleInc;
    }
}

DataType  sine_lut[cSineLutSize];
PhaseType accumulators[cVoices];

#if DEBUG
    void MultiSine(const PhaseType phaseInc[cVoices], DataType samples[cVoices * cBlockSamples], uint32_t debug[cBlockSamples])
#else
    void MultiSine(const PhaseType phaseInc[cVoices], DataType samples[cVoices * cBlockSamples])
#endif
{
    #pragma HLS INTERFACE mode=s_axilite    port=return     bundle=BUS_A
    #pragma HLS INTERFACE mode=s_axilite    port=phaseInc   bundle=BUS_A
    #pragma HLS INTERFACE mode=s_axilite    port=samples    bundle=BUS_A
#if DEBUG    
    #pragma HLS INTERFACE mode=s_axilite    port=debug      bundle=BUS_A
#endif

    InitSinTable(sine_lut);


    for(int b = 0; b < cBlockSamples; b++)
    {
        int sineIdx = b;
        for(int i = 0; i < cVoices; i++)
        {
            accumulators[i] += phaseInc[i];
            PhaseIndexType address;
            address = PhaseIndexType(accumulators[i]); 
            samples[sineIdx] = sine_lut[(int)address]; 
            sineIdx+=cBlockSamples;
        }
    }

    // for(int i = 0; i < cVoices; i++)
    // {
    //     for(int b = 0; b < cBlockSamples; b++)
    //     {
    //         accumulators[i] += phaseInc[i];
    //         PhaseIndexType address;
    //         address = PhaseIndexType(accumulators[i]); 
    //         samples[sineIdx++] = sine_lut[(int)address]; 
    //     }
    // }

    // int sineIdx = 0;
    // for(int b = 0; b < cBlockSamples; b++)
    // {
    //     for(int i = 0; i < cVoices; i++)
    //     {
    //         accumulators[i] += phaseInc[i];
    //         PhaseIndexType address;
    //         address = PhaseIndexType(accumulators[i]); 
    //         samples[sineIdx++] = sine_lut[(int)address]; 
    //     }
    // }
}