#include "MultiSineMaster.h"
#include <cstring>

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
//PhaseType localPhaseIncs[cVoices];
#if DEBUG
    void MultiSineMaster(const PhaseType phaseInc[cVoices], DataType samples[cVoices * cBlockSamples], uint32_t debug[cBlockSamples])
#else
    void MultiSineMaster(const PhaseType phaseInc[cVoices], DataType samples[cVoices * cBlockSamples])
#endif
{
    #pragma HLS INTERFACE mode=s_axilite port=return    
    #pragma HLS INTERFACE m_axi port=phaseInc           depth=cVoices                  offset=slave    
    #pragma HLS INTERFACE m_axi port=samples            depth=cBlockSize*cBlockSamples offset=slave   
#if DEBUG    
    #pragma HLS INTERFACE m_axi port=debug              depth=cBlockSamples            offset=slave    
#endif
    
    InitSinTable(sine_lut);

    //memcpy(localPhaseIncs, phaseInc, cVoices*4);
    int sineIdx = 0;
    for(int i = 0; i < cVoices; i++)
    {
#pragma HLS pipeline off          
        for(int b = 0; b < cBlockSamples; b++)
        {
            accumulators[i] += phaseInc[i];
            PhaseIndexType address;
            address = PhaseIndexType(accumulators[i]); 
            samples[sineIdx++] = sine_lut[(int)address]; 
        }
    }

//     for(int b = 0; b < cBlockSamples; b++)
//     {
//         int sineIdx = b;
//         for(int i = 0; i < cVoices; i++)
//         {
// #if UNROLL
//     #pragma HLS UNROLL factor=cVoices
// #endif            
//             accumulators[i] += localPhaseIncs[i];
// #if DEBUG            
//             debug[i*2] = i;
//             debug[(i*2)+1] = accumulators[i].range();
// #endif
//             PhaseIndexType address;
//             address = PhaseIndexType(accumulators[i]); 
//             samples[sineIdx] = sine_lut[(int)address]; 
//             sineIdx+=cBlockSamples;
//         }
//     }

    // int sineIdx = 0;
    // memcpy(localPhaseIncs, phaseInc, cVoices*4);

    // for(int b = 0; b < cBlockSamples; b++)
    // {
    //     for(int i = 0; i < cVoices; i++)
    //     {
    //         accumulators[i] += localPhaseIncs[i];
    //         PhaseIndexType address;
    //         address = PhaseIndexType(accumulators[i]); 
    //         samples[sineIdx++] = sine_lut[(int)address]; 
    //     }
    // }
}