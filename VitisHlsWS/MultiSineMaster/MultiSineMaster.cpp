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

void MultiSineMaster(const PhaseType phaseInc[cVoices], DataType samples[cVoices * cBlockSamples])
{
    #pragma HLS INTERFACE mode=s_axilite    port=return     
    #pragma HLS INTERFACE m_axi             port=phaseInc   offset=slave 
    #pragma HLS INTERFACE m_axi             port=samples    offset=slave   
  

    InitSinTable(sine_lut);

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
}