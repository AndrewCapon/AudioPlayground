#pragma once

#include "fpm/fixed.hpp"

#define MASTER 0
#define DEBUG_SIMPLESINE 0
#define DEBUG_SIMPLESINEMASTER 0
#define DEBUG_MULTISINE 0
#define DEBUG_MULTISINEMASTER 0

#define SINGLE_OSC 0

const int cVoices = 8;
const int cBlockSize = 48;
const int cChannels = 1;
const int cBlockSamples = cBlockSize * cChannels;

const int cSampleRate = 48000;
const int cSineLutSize = 4096;

#define SINE_PHASE_BITS             32
#define SINE_PHASE_INDEX_BITS       12
#define FREQUENCY_MULTIPLIER_BITS   32

typedef fpm::fixed<int32_t, int64_t, 31> DataType;
typedef fpm::fixed<int32_t, int64_t, 23> MixType;

#define USE_FLOAT 0
#if USE_FLOAT
		typedef float PhaseType;
    typedef float FrequencyType;
#else
    typedef fpm::fixed<int32_t, int64_t, 20>				PhaseType;
    typedef fpm::fixed<int32_t, int64_t, 16>				FrequencyType;
#endif
