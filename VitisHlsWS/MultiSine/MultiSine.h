#pragma once

#include "DataTypes.h"
#include "hls_math.h"

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

#if DEBUG
    void MultiSine(const PhaseType phaseInc[cVoices], DataType samples[cBlockSamples], uint32_t debug[cBlockSamples]);
#else
    void MultiSine(const PhaseType phaseInc[cVoices], DataType samples[cBlockSamples]);
#endif
