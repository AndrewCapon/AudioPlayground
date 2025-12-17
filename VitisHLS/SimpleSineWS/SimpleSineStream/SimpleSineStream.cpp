#include "SimpleSineStream.h"

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


void SimpleSineStream(PhaseType &accumulator, const PhaseType phaseInc, DataType samples[cBlockSamples])
{
    #pragma HLS INTERFACE mode=s_axilite    port=return  
    #pragma HLS INTERFACE mode=s_axilite    port=accumulator 
    #pragma HLS INTERFACE mode=s_axilite    port=phaseInc    
    #pragma HLS INTERFACE axis              port=samples     

    InitSinTable(sine_lut);

    for(int block = 0; block < cBlockSize; block++)
    {
        // Now generate the samples, no interpolation
        accumulator += phaseInc;
        PhaseIndexType address;
        address = PhaseIndexType(accumulator); 
        samples[block] = sine_lut[(int)address]; 
    }  
}
