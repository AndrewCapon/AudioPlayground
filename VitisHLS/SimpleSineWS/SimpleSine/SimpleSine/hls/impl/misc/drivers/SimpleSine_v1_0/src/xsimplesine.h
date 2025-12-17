// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSIMPLESINE_H
#define XSIMPLESINE_H

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
#include "xsimplesine_hw.h"

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
} XSimplesine_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSimplesine;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSimplesine_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSimplesine_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSimplesine_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSimplesine_ReadReg(BaseAddress, RegOffset) \
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
int XSimplesine_Initialize(XSimplesine *InstancePtr, UINTPTR BaseAddress);
XSimplesine_Config* XSimplesine_LookupConfig(UINTPTR BaseAddress);
#else
int XSimplesine_Initialize(XSimplesine *InstancePtr, u16 DeviceId);
XSimplesine_Config* XSimplesine_LookupConfig(u16 DeviceId);
#endif
int XSimplesine_CfgInitialize(XSimplesine *InstancePtr, XSimplesine_Config *ConfigPtr);
#else
int XSimplesine_Initialize(XSimplesine *InstancePtr, const char* InstanceName);
int XSimplesine_Release(XSimplesine *InstancePtr);
#endif

void XSimplesine_Start(XSimplesine *InstancePtr);
u32 XSimplesine_IsDone(XSimplesine *InstancePtr);
u32 XSimplesine_IsIdle(XSimplesine *InstancePtr);
u32 XSimplesine_IsReady(XSimplesine *InstancePtr);
void XSimplesine_EnableAutoRestart(XSimplesine *InstancePtr);
void XSimplesine_DisableAutoRestart(XSimplesine *InstancePtr);

void XSimplesine_Set_accumulator_i(XSimplesine *InstancePtr, u32 Data);
u32 XSimplesine_Get_accumulator_i(XSimplesine *InstancePtr);
u32 XSimplesine_Get_accumulator_o(XSimplesine *InstancePtr);
u32 XSimplesine_Get_accumulator_o_vld(XSimplesine *InstancePtr);
void XSimplesine_Set_phaseInc(XSimplesine *InstancePtr, u32 Data);
u32 XSimplesine_Get_phaseInc(XSimplesine *InstancePtr);
u32 XSimplesine_Get_samples_BaseAddress(XSimplesine *InstancePtr);
u32 XSimplesine_Get_samples_HighAddress(XSimplesine *InstancePtr);
u32 XSimplesine_Get_samples_TotalBytes(XSimplesine *InstancePtr);
u32 XSimplesine_Get_samples_BitWidth(XSimplesine *InstancePtr);
u32 XSimplesine_Get_samples_Depth(XSimplesine *InstancePtr);
u32 XSimplesine_Write_samples_Words(XSimplesine *InstancePtr, int offset, word_type *data, int length);
u32 XSimplesine_Read_samples_Words(XSimplesine *InstancePtr, int offset, word_type *data, int length);
u32 XSimplesine_Write_samples_Bytes(XSimplesine *InstancePtr, int offset, char *data, int length);
u32 XSimplesine_Read_samples_Bytes(XSimplesine *InstancePtr, int offset, char *data, int length);

void XSimplesine_InterruptGlobalEnable(XSimplesine *InstancePtr);
void XSimplesine_InterruptGlobalDisable(XSimplesine *InstancePtr);
void XSimplesine_InterruptEnable(XSimplesine *InstancePtr, u32 Mask);
void XSimplesine_InterruptDisable(XSimplesine *InstancePtr, u32 Mask);
void XSimplesine_InterruptClear(XSimplesine *InstancePtr, u32 Mask);
u32 XSimplesine_InterruptGetEnabled(XSimplesine *InstancePtr);
u32 XSimplesine_InterruptGetStatus(XSimplesine *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
