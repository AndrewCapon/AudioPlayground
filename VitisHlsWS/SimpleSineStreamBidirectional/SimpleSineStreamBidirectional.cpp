#include "SimpleSineStreamBidirectional.h"

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

void SimpleSineStreamBidirectional(const uint32_t inputs[2], uint32_t outputs[cBlockSamples+1])
{
    #pragma HLS INTERFACE mode=s_axilite    port=return  
    #pragma HLS INTERFACE axis              port=inputs     
    #pragma HLS INTERFACE axis              port=outputs     

    InitSinTable(sine_lut);

    PhaseType accumulator;
    PhaseType phaseInc;

    accumulator.range() = inputs[0];
    phaseInc.range() = inputs[1];

    uint32_t uIndex = 0;
    for(int block = 0; block < cBlockSize; block++)
    {
        // Now generate the samples, no interpolation
        accumulator += phaseInc;
        PhaseIndexType address;
        address = PhaseIndexType(accumulator); 
        outputs[uIndex++] = sine_lut[(int)address].range(); 
    }  
    outputs[uIndex]= accumulator.range();
}
