#include "MultiSineMaster.h"

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
    void MultiSineMaster(const PhaseType phaseInc[cVoices], DataType samples[cVoices * cBlockSamples], uint32_t debug[cBlockSamples])
#else
    void MultiSineMaster(const PhaseType phaseInc[cVoices], DataType samples[cVoices * cBlockSamples])
#endif
{
    #pragma HLS INTERFACE mode=s_axilite port=return    bundle=BUS_A
    #pragma HLS INTERFACE m_axi port=phaseInc           depth=cVoices                  offset=slave    
    #pragma HLS INTERFACE m_axi port=samples            depth=cBlockSize*cBlockSamples offset=slave    
#if DEBUG    
    #pragma HLS INTERFACE m_axi port=debug              depth=cBlockSize               offset=slave    
#endif

    InitSinTable(sine_lut);

    for(int b = 0; b < cBlockSamples; b++)
    {
        int sineIdx = b;
        for(int i = 0; i < cVoices; i++)
        {
            debug[i] = phaseInc[i].range();
#if UNROLL
    #pragma HLS UNROLL factor=cVoices
#endif            
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