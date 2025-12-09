// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMULTISINE_H
#define XMULTISINE_H

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
#include "xmultisine_hw.h"

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
} XMultisine_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMultisine;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMultisine_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMultisine_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMultisine_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMultisine_ReadReg(BaseAddress, RegOffset) \
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
int XMultisine_Initialize(XMultisine *InstancePtr, UINTPTR BaseAddress);
XMultisine_Config* XMultisine_LookupConfig(UINTPTR BaseAddress);
#else
int XMultisine_Initialize(XMultisine *InstancePtr, u16 DeviceId);
XMultisine_Config* XMultisine_LookupConfig(u16 DeviceId);
#endif
int XMultisine_CfgInitialize(XMultisine *InstancePtr, XMultisine_Config *ConfigPtr);
#else
int XMultisine_Initialize(XMultisine *InstancePtr, const char* InstanceName);
int XMultisine_Release(XMultisine *InstancePtr);
#endif

void XMultisine_Start(XMultisine *InstancePtr);
u32 XMultisine_IsDone(XMultisine *InstancePtr);
u32 XMultisine_IsIdle(XMultisine *InstancePtr);
u32 XMultisine_IsReady(XMultisine *InstancePtr);
void XMultisine_EnableAutoRestart(XMultisine *InstancePtr);
void XMultisine_DisableAutoRestart(XMultisine *InstancePtr);

u32 XMultisine_Get_phaseInc_BaseAddress(XMultisine *InstancePtr);
u32 XMultisine_Get_phaseInc_HighAddress(XMultisine *InstancePtr);
u32 XMultisine_Get_phaseInc_TotalBytes(XMultisine *InstancePtr);
u32 XMultisine_Get_phaseInc_BitWidth(XMultisine *InstancePtr);
u32 XMultisine_Get_phaseInc_Depth(XMultisine *InstancePtr);
u32 XMultisine_Write_phaseInc_Words(XMultisine *InstancePtr, int offset, word_type *data, int length);
u32 XMultisine_Read_phaseInc_Words(XMultisine *InstancePtr, int offset, word_type *data, int length);
u32 XMultisine_Write_phaseInc_Bytes(XMultisine *InstancePtr, int offset, char *data, int length);
u32 XMultisine_Read_phaseInc_Bytes(XMultisine *InstancePtr, int offset, char *data, int length);
u32 XMultisine_Get_debug_BaseAddress(XMultisine *InstancePtr);
u32 XMultisine_Get_debug_HighAddress(XMultisine *InstancePtr);
u32 XMultisine_Get_debug_TotalBytes(XMultisine *InstancePtr);
u32 XMultisine_Get_debug_BitWidth(XMultisine *InstancePtr);
u32 XMultisine_Get_debug_Depth(XMultisine *InstancePtr);
u32 XMultisine_Write_debug_Words(XMultisine *InstancePtr, int offset, word_type *data, int length);
u32 XMultisine_Read_debug_Words(XMultisine *InstancePtr, int offset, word_type *data, int length);
u32 XMultisine_Write_debug_Bytes(XMultisine *InstancePtr, int offset, char *data, int length);
u32 XMultisine_Read_debug_Bytes(XMultisine *InstancePtr, int offset, char *data, int length);
u32 XMultisine_Get_samples_BaseAddress(XMultisine *InstancePtr);
u32 XMultisine_Get_samples_HighAddress(XMultisine *InstancePtr);
u32 XMultisine_Get_samples_TotalBytes(XMultisine *InstancePtr);
u32 XMultisine_Get_samples_BitWidth(XMultisine *InstancePtr);
u32 XMultisine_Get_samples_Depth(XMultisine *InstancePtr);
u32 XMultisine_Write_samples_Words(XMultisine *InstancePtr, int offset, word_type *data, int length);
u32 XMultisine_Read_samples_Words(XMultisine *InstancePtr, int offset, word_type *data, int length);
u32 XMultisine_Write_samples_Bytes(XMultisine *InstancePtr, int offset, char *data, int length);
u32 XMultisine_Read_samples_Bytes(XMultisine *InstancePtr, int offset, char *data, int length);

void XMultisine_InterruptGlobalEnable(XMultisine *InstancePtr);
void XMultisine_InterruptGlobalDisable(XMultisine *InstancePtr);
void XMultisine_InterruptEnable(XMultisine *InstancePtr, u32 Mask);
void XMultisine_InterruptDisable(XMultisine *InstancePtr, u32 Mask);
void XMultisine_InterruptClear(XMultisine *InstancePtr, u32 Mask);
u32 XMultisine_InterruptGetEnabled(XMultisine *InstancePtr);
u32 XMultisine_InterruptGetStatus(XMultisine *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
