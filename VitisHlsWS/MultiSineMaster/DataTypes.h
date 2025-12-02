#pragma once

#include <ap_fixed.h>

#define UNROLL 0
#define DEBUG 1

const int cVoices = 8;
const int cBlockSize = 48;
const int cChannels = 1;
const int cBlockSamples = cBlockSize * cChannels;

const int cSampleRate = 48000;
const int cSineLutSize = 4096;

#define SINE_PHASE_BITS             32
#define SINE_PHASE_INDEX_BITS       12
#define FREQUENCY_MULTIPLIER_BITS   32

typedef ap_fixed<24,1,AP_RND,AP_SAT>        DataType;
typedef ap_fixed<32,9,AP_RND,AP_SAT>        MixType;


#define USE_FLOAT 0
#if USE_FLOAT
    typedef float FrequencyType;
    typedef float FrequencyMultiplierType;

    typedef float        PhaseType;
    typedef ap_uint<16>  PhaseIndexType;
#else
    typedef ap_fixed<25,16>                         FrequencyType;
    typedef ap_ufixed<FREQUENCY_MULTIPLIER_BITS, 0> FrequencyMultiplierType;

    typedef ap_ufixed<SINE_PHASE_BITS,          SINE_PHASE_INDEX_BITS>  PhaseType;
    typedef ap_ufixed<SINE_PHASE_INDEX_BITS,    SINE_PHASE_INDEX_BITS>  PhaseIndexType;
#endif
