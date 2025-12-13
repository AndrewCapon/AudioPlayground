// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSIMPLESINESTREAMBIDIRECTIONAL_H
#define XSIMPLESINESTREAMBIDIRECTIONAL_H

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
#include "xsimplesinestreambidirectional_hw.h"

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
} XSimplesinestreambidirectional_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSimplesinestreambidirectional;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSimplesinestreambidirectional_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSimplesinestreambidirectional_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSimplesinestreambidirectional_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSimplesinestreambidirectional_ReadReg(BaseAddress, RegOffset) \
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
int XSimplesinestreambidirectional_Initialize(XSimplesinestreambidirectional *InstancePtr, UINTPTR BaseAddress);
XSimplesinestreambidirectional_Config* XSimplesinestreambidirectional_LookupConfig(UINTPTR BaseAddress);
#else
int XSimplesinestreambidirectional_Initialize(XSimplesinestreambidirectional *InstancePtr, u16 DeviceId);
XSimplesinestreambidirectional_Config* XSimplesinestreambidirectional_LookupConfig(u16 DeviceId);
#endif
int XSimplesinestreambidirectional_CfgInitialize(XSimplesinestreambidirectional *InstancePtr, XSimplesinestreambidirectional_Config *ConfigPtr);
#else
int XSimplesinestreambidirectional_Initialize(XSimplesinestreambidirectional *InstancePtr, const char* InstanceName);
int XSimplesinestreambidirectional_Release(XSimplesinestreambidirectional *InstancePtr);
#endif

void XSimplesinestreambidirectional_Start(XSimplesinestreambidirectional *InstancePtr);
u32 XSimplesinestreambidirectional_IsDone(XSimplesinestreambidirectional *InstancePtr);
u32 XSimplesinestreambidirectional_IsIdle(XSimplesinestreambidirectional *InstancePtr);
u32 XSimplesinestreambidirectional_IsReady(XSimplesinestreambidirectional *InstancePtr);
void XSimplesinestreambidirectional_EnableAutoRestart(XSimplesinestreambidirectional *InstancePtr);
void XSimplesinestreambidirectional_DisableAutoRestart(XSimplesinestreambidirectional *InstancePtr);


void XSimplesinestreambidirectional_InterruptGlobalEnable(XSimplesinestreambidirectional *InstancePtr);
void XSimplesinestreambidirectional_InterruptGlobalDisable(XSimplesinestreambidirectional *InstancePtr);
void XSimplesinestreambidirectional_InterruptEnable(XSimplesinestreambidirectional *InstancePtr, u32 Mask);
void XSimplesinestreambidirectional_InterruptDisable(XSimplesinestreambidirectional *InstancePtr, u32 Mask);
void XSimplesinestreambidirectional_InterruptClear(XSimplesinestreambidirectional *InstancePtr, u32 Mask);
u32 XSimplesinestreambidirectional_InterruptGetEnabled(XSimplesinestreambidirectional *InstancePtr);
u32 XSimplesinestreambidirectional_InterruptGetStatus(XSimplesinestreambidirectional *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
