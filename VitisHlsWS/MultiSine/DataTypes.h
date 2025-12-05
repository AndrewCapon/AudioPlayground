#pragma once

#include <ap_fixed.h>

#define MASTER 0
#define DEBUG 1

const int cVoices = 8;
const int cBlockSize = 48;
const int cChannels = 1;
const int cBlockSamples = cBlockSize * cChannels;

const int cSampleRate = 48000;
const int cSineLutSize = 4096;

// SINGLE_OSC=1 (luts=374, ram=8, dsp=1, lattency=540, interval=54 ) = 999.948
// SINGLE_OSC=0 (luts=380, ram=8, dsp=0, lattency=530, interval=54 ) = ?
// #define SINE_PHASE_BITS             18
// #define SINE_PHASE_INDEX_BITS       12
// #define FREQUENCY_MULTIPLIER_BITS   18

// SINGLE_OSC=1 (luts=386, ram=8, dsp=2, lattency=550, interval=56 ) 99.99997 - 1.00003 (stable)
// SINGLE_OSC=0 (luts=440, ram=8, dsp=0, lattency=530, interval=54 ) 99.99997 - 1.00003 (stable)
// #define SINE_PHASE_BITS         25
// #define SINE_PHASE_INDEX_BITS   12
// #define FREQUENCY_MULTIPLIER_BITS   25

// SINGLE_OSC=1 (luts=386, ram=8, dsp=1, lattency=550, interval=56 ) = 999.960 - 1000
// SINGLE_OSC=0 (luts=430, ram=8, dsp=0, lattency=530, interval=54 ) = 999.960 - 1000
// #define SINE_PHASE_BITS             25
// #define SINE_PHASE_INDEX_BITS       12
// #define FREQUENCY_MULTIPLIER_BITS   18


// SINGLE_OSC=1 (luts=410, ram=8, dsp=2, lattency=560, interval=57 ) = 
// SINGLE_OSC=0 (luts=493, ram=8, dsp=0, lattency=530, interval=54 ) = 
#define SINE_PHASE_BITS             32
#define SINE_PHASE_INDEX_BITS       12
#define FREQUENCY_MULTIPLIER_BITS   32

typedef ap_fixed<24,1,AP_RND,AP_SAT>        DataType;
typedef ap_fixed<32,9,AP_RND,AP_SAT>        MixType;


#define USE_FLOAT 0
#if USE_FLOAT
    // SINGLE_OSC=1 (luts=1152, ram=8, dsp=5, lattency=9160, interval=917 ) = 1000.0000 (perfect)
    // SINGLE_OSC=0 (luts=1123, ram=8, dsp=2, lattency=9130, interval=913 ) = 1000.0000 (perfect)
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
