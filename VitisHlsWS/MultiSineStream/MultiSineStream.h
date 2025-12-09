#pragma once

#include "DataTypes.h"
#include "hls_math.h"

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

#if DEBUG
    void MultiSineStream(const PhaseType phaseInc[cVoices], DataType samples[cBlockSamples], uint32_t debug[cBlockSamples]);
#else
    void MultiSineStream(const PhaseType phaseInc[cVoices], DataType samples[cBlockSamples]);
#endif
