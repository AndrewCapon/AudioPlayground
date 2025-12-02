// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x100 ~
// 0x1ff : Memory 'debug' (48 * 32b)
//         Word n : bit [31:0] - debug[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define BUS_A_ADDR_AP_CTRL    0x000
#define BUS_A_ADDR_GIE        0x004
#define BUS_A_ADDR_IER        0x008
#define BUS_A_ADDR_ISR        0x00c
#define BUS_A_ADDR_DEBUG_BASE 0x100
#define BUS_A_ADDR_DEBUG_HIGH 0x1ff
#define BUS_A_WIDTH_DEBUG     32
#define BUS_A_DEPTH_DEBUG     48
