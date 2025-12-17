#pragma once

#include "DataTypes.h"
#include "hls_math.h"

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

void MultiSineStreamBidirectional(const PhaseType phaseInc[cVoices], DataType samples[cBlockSamples]);
