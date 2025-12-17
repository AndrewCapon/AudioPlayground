#include "SineLookup.h"

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

#define INTERPOLATE 0
DataType SineLookup(const PhaseType phaseIndex)
{
    InitSinTable(sine_lut);

    // PhaseIndexType address;
    // address = PhaseIndexType(phaseIndex); 
    // value = sine_lut[(int)address]; 

    PhaseIndexType address = PhaseIndexType(phaseIndex); 
            
#if INTERPOLATE            
    PhaseType remainder = phaseIndex - address;

    DataType s1 = sine_lut[address] * (static_cast<PhaseType>(1.0)-remainder);
    ap_ufixed<12,12> nextAddress = address+1;
    DataType s2 = sine_lut[nextAddress] * remainder;
    return s1+s2;
#else
    return sine_lut[address];
#endif
}

