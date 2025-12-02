#pragma once

#include "DataTypes.h"
#include "hls_math.h"

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

#if DEBUG
    void MultiSineMaster(const PhaseType phaseInc[cVoices], DataType samples[cBlockSamples], uint32_t debug[cBlockSamples]);
#else
    void MultiSineMaster(const PhaseType phaseInc[cVoices], DataType samples[cBlockSamples]);
#endif
