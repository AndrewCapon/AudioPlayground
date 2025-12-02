// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of phaseInc
//        bit 31~0 - phaseInc[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of samples
//        bit 31~0 - samples[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_PHASEINC_DATA 0x10
#define CONTROL_BITS_PHASEINC_DATA 32
#define CONTROL_ADDR_SAMPLES_DATA  0x18
#define CONTROL_BITS_SAMPLES_DATA  32
