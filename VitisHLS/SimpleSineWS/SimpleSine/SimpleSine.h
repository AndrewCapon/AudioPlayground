#pragma once

#include "DataTypes.h"
#include "hls_math.h"

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

void SimpleSine(PhaseType &accumulator, const PhaseType phaseInc, DataType samples[cBlockSamples]);
