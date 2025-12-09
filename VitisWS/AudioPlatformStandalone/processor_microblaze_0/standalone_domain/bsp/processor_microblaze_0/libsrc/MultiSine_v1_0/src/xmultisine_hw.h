// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
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
// 0x020 ~
// 0x03f : Memory 'phaseInc' (8 * 32b)
//         Word n : bit [31:0] - phaseInc[n]
// 0x100 ~
// 0x1ff : Memory 'debug' (48 * 32b)
//         Word n : bit [31:0] - debug[n]
// 0x800 ~
// 0xfff : Memory 'samples' (384 * 24b)
//         Word n : bit [23:0] - samples[n]
//                  others     - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMULTISINE_CONTROL_ADDR_AP_CTRL       0x000
#define XMULTISINE_CONTROL_ADDR_GIE           0x004
#define XMULTISINE_CONTROL_ADDR_IER           0x008
#define XMULTISINE_CONTROL_ADDR_ISR           0x00c
#define XMULTISINE_CONTROL_ADDR_PHASEINC_BASE 0x020
#define XMULTISINE_CONTROL_ADDR_PHASEINC_HIGH 0x03f
#define XMULTISINE_CONTROL_WIDTH_PHASEINC     32
#define XMULTISINE_CONTROL_DEPTH_PHASEINC     8
#define XMULTISINE_CONTROL_ADDR_DEBUG_BASE    0x100
#define XMULTISINE_CONTROL_ADDR_DEBUG_HIGH    0x1ff
#define XMULTISINE_CONTROL_WIDTH_DEBUG        32
#define XMULTISINE_CONTROL_DEPTH_DEBUG        48
#define XMULTISINE_CONTROL_ADDR_SAMPLES_BASE  0x800
#define XMULTISINE_CONTROL_ADDR_SAMPLES_HIGH  0xfff
#define XMULTISINE_CONTROL_WIDTH_SAMPLES      24
#define XMULTISINE_CONTROL_DEPTH_SAMPLES      384

