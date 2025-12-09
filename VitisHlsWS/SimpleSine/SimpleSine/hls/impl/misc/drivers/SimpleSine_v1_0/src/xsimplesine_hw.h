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
// 0x010 : Data signal of accumulator_i
//         bit 31~0 - accumulator_i[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of accumulator_o
//         bit 31~0 - accumulator_o[31:0] (Read)
// 0x01c : Control signal of accumulator_o
//         bit 0  - accumulator_o_ap_vld (Read/COR)
//         others - reserved
// 0x020 : Data signal of phaseInc
//         bit 31~0 - phaseInc[31:0] (Read/Write)
// 0x024 : reserved
// 0x100 ~
// 0x1ff : Memory 'samples' (48 * 24b)
//         Word n : bit [23:0] - samples[n]
//                  others     - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSIMPLESINE_CONTROL_ADDR_AP_CTRL            0x000
#define XSIMPLESINE_CONTROL_ADDR_GIE                0x004
#define XSIMPLESINE_CONTROL_ADDR_IER                0x008
#define XSIMPLESINE_CONTROL_ADDR_ISR                0x00c
#define XSIMPLESINE_CONTROL_ADDR_ACCUMULATOR_I_DATA 0x010
#define XSIMPLESINE_CONTROL_BITS_ACCUMULATOR_I_DATA 32
#define XSIMPLESINE_CONTROL_ADDR_ACCUMULATOR_O_DATA 0x018
#define XSIMPLESINE_CONTROL_BITS_ACCUMULATOR_O_DATA 32
#define XSIMPLESINE_CONTROL_ADDR_ACCUMULATOR_O_CTRL 0x01c
#define XSIMPLESINE_CONTROL_ADDR_PHASEINC_DATA      0x020
#define XSIMPLESINE_CONTROL_BITS_PHASEINC_DATA      32
#define XSIMPLESINE_CONTROL_ADDR_SAMPLES_BASE       0x100
#define XSIMPLESINE_CONTROL_ADDR_SAMPLES_HIGH       0x1ff
#define XSIMPLESINE_CONTROL_WIDTH_SAMPLES           24
#define XSIMPLESINE_CONTROL_DEPTH_SAMPLES           48

