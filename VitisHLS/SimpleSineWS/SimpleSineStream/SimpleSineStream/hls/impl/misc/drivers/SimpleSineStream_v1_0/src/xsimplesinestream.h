// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSIMPLESINESTREAM_H
#define XSIMPLESINESTREAM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsimplesinestream_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XSimplesinestream_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSimplesinestream;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSimplesinestream_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSimplesinestream_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSimplesinestream_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSimplesinestream_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XSimplesinestream_Initialize(XSimplesinestream *InstancePtr, UINTPTR BaseAddress);
XSimplesinestream_Config* XSimplesinestream_LookupConfig(UINTPTR BaseAddress);
#else
int XSimplesinestream_Initialize(XSimplesinestream *InstancePtr, u16 DeviceId);
XSimplesinestream_Config* XSimplesinestream_LookupConfig(u16 DeviceId);
#endif
int XSimplesinestream_CfgInitialize(XSimplesinestream *InstancePtr, XSimplesinestream_Config *ConfigPtr);
#else
int XSimplesinestream_Initialize(XSimplesinestream *InstancePtr, const char* InstanceName);
int XSimplesinestream_Release(XSimplesinestream *InstancePtr);
#endif

void XSimplesinestream_Start(XSimplesinestream *InstancePtr);
u32 XSimplesinestream_IsDone(XSimplesinestream *InstancePtr);
u32 XSimplesinestream_IsIdle(XSimplesinestream *InstancePtr);
u32 XSimplesinestream_IsReady(XSimplesinestream *InstancePtr);
void XSimplesinestream_EnableAutoRestart(XSimplesinestream *InstancePtr);
void XSimplesinestream_DisableAutoRestart(XSimplesinestream *InstancePtr);

void XSimplesinestream_Set_accumulator_i(XSimplesinestream *InstancePtr, u32 Data);
u32 XSimplesinestream_Get_accumulator_i(XSimplesinestream *InstancePtr);
u32 XSimplesinestream_Get_accumulator_o(XSimplesinestream *InstancePtr);
u32 XSimplesinestream_Get_accumulator_o_vld(XSimplesinestream *InstancePtr);
void XSimplesinestream_Set_phaseInc(XSimplesinestream *InstancePtr, u32 Data);
u32 XSimplesinestream_Get_phaseInc(XSimplesinestream *InstancePtr);

void XSimplesinestream_InterruptGlobalEnable(XSimplesinestream *InstancePtr);
void XSimplesinestream_InterruptGlobalDisable(XSimplesinestream *InstancePtr);
void XSimplesinestream_InterruptEnable(XSimplesinestream *InstancePtr, u32 Mask);
void XSimplesinestream_InterruptDisable(XSimplesinestream *InstancePtr, u32 Mask);
void XSimplesinestream_InterruptClear(XSimplesinestream *InstancePtr, u32 Mask);
u32 XSimplesinestream_InterruptGetEnabled(XSimplesinestream *InstancePtr);
u32 XSimplesinestream_InterruptGetStatus(XSimplesinestream *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
