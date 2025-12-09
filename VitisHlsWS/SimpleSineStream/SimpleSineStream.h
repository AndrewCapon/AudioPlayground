#pragma once

#include "DataTypes.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <iostream>

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

void SimpleSineStream(PhaseType &accumulator, const PhaseType phaseInc, DataType samples[cBlockSamples]);
