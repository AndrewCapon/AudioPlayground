// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
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

#define XMULTISINEMASTER_CONTROL_ADDR_PHASEINC_DATA 0x10
#define XMULTISINEMASTER_CONTROL_BITS_PHASEINC_DATA 32
#define XMULTISINEMASTER_CONTROL_ADDR_SAMPLES_DATA  0x18
#define XMULTISINEMASTER_CONTROL_BITS_SAMPLES_DATA  32

// BUS_A
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

#define XMULTISINEMASTER_BUS_A_ADDR_AP_CTRL    0x000
#define XMULTISINEMASTER_BUS_A_ADDR_GIE        0x004
#define XMULTISINEMASTER_BUS_A_ADDR_IER        0x008
#define XMULTISINEMASTER_BUS_A_ADDR_ISR        0x00c
#define XMULTISINEMASTER_BUS_A_ADDR_DEBUG_BASE 0x100
#define XMULTISINEMASTER_BUS_A_ADDR_DEBUG_HIGH 0x1ff
#define XMULTISINEMASTER_BUS_A_WIDTH_DEBUG     32
#define XMULTISINEMASTER_BUS_A_DEPTH_DEBUG     48

