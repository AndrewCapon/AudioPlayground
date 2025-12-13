#pragma once

#include "DataTypes.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <iostream>

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

struct Inputs
{
    PhaseType   accumulator;
    PhaseType   phaseInc;
};

struct Outputs
{
    DataType    samples[cBlockSamples];
    PhaseType   accumulator;
};


void SimpleSineStreamBidirectional(const uint32_t inputs[2], uint32_t outputs[cBlockSamples+1]);
