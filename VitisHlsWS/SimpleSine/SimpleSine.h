#pragma once

#include "DataTypes.h"
#include "hls_math.h"

PhaseType FrequencyToAccumPerSample(const FrequencyType &frequency);

#if DEBUG
    void SimpleSine(PhaseType &accumulator, const PhaseType phaseInc, DataType samples[cBlockSamples], uint32_t debug[cBlockSamples]);
#else
    void SimpleSine(PhaseType &accumulator, const PhaseType phaseInc, DataType samples[cBlockSamples]);
#endif
