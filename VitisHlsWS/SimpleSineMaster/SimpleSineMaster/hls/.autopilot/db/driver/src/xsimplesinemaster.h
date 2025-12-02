// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSIMPLESINEMASTER_H
#define XSIMPLESINEMASTER_H

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
#include "xsimplesinemaster_hw.h"

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
    u32 Control_BaseAddress;
} XSimplesinemaster_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XSimplesinemaster;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSimplesinemaster_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSimplesinemaster_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSimplesinemaster_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSimplesinemaster_ReadReg(BaseAddress, RegOffset) \
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
int XSimplesinemaster_Initialize(XSimplesinemaster *InstancePtr, UINTPTR BaseAddress);
XSimplesinemaster_Config* XSimplesinemaster_LookupConfig(UINTPTR BaseAddress);
#else
int XSimplesinemaster_Initialize(XSimplesinemaster *InstancePtr, u16 DeviceId);
XSimplesinemaster_Config* XSimplesinemaster_LookupConfig(u16 DeviceId);
#endif
int XSimplesinemaster_CfgInitialize(XSimplesinemaster *InstancePtr, XSimplesinemaster_Config *ConfigPtr);
#else
int XSimplesinemaster_Initialize(XSimplesinemaster *InstancePtr, const char* InstanceName);
int XSimplesinemaster_Release(XSimplesinemaster *InstancePtr);
#endif

void XSimplesinemaster_Start(XSimplesinemaster *InstancePtr);
u32 XSimplesinemaster_IsDone(XSimplesinemaster *InstancePtr);
u32 XSimplesinemaster_IsIdle(XSimplesinemaster *InstancePtr);
u32 XSimplesinemaster_IsReady(XSimplesinemaster *InstancePtr);
void XSimplesinemaster_EnableAutoRestart(XSimplesinemaster *InstancePtr);
void XSimplesinemaster_DisableAutoRestart(XSimplesinemaster *InstancePtr);

void XSimplesinemaster_Set_accumulator_i(XSimplesinemaster *InstancePtr, u32 Data);
u32 XSimplesinemaster_Get_accumulator_i(XSimplesinemaster *InstancePtr);
u32 XSimplesinemaster_Get_accumulator_o(XSimplesinemaster *InstancePtr);
u32 XSimplesinemaster_Get_accumulator_o_vld(XSimplesinemaster *InstancePtr);
void XSimplesinemaster_Set_phaseInc(XSimplesinemaster *InstancePtr, u32 Data);
u32 XSimplesinemaster_Get_phaseInc(XSimplesinemaster *InstancePtr);
void XSimplesinemaster_Set_samples(XSimplesinemaster *InstancePtr, u32 Data);
u32 XSimplesinemaster_Get_samples(XSimplesinemaster *InstancePtr);

void XSimplesinemaster_InterruptGlobalEnable(XSimplesinemaster *InstancePtr);
void XSimplesinemaster_InterruptGlobalDisable(XSimplesinemaster *InstancePtr);
void XSimplesinemaster_InterruptEnable(XSimplesinemaster *InstancePtr, u32 Mask);
void XSimplesinemaster_InterruptDisable(XSimplesinemaster *InstancePtr, u32 Mask);
void XSimplesinemaster_InterruptClear(XSimplesinemaster *InstancePtr, u32 Mask);
u32 XSimplesinemaster_InterruptGetEnabled(XSimplesinemaster *InstancePtr);
u32 XSimplesinemaster_InterruptGetStatus(XSimplesinemaster *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
