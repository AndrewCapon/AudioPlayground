// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMULTISINEMASTER_H
#define XMULTISINEMASTER_H

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
#include "xmultisinemaster_hw.h"

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
    u32 Bus_a_BaseAddress;
} XMultisinemaster_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 Bus_a_BaseAddress;
    u32 IsReady;
} XMultisinemaster;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMultisinemaster_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMultisinemaster_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMultisinemaster_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMultisinemaster_ReadReg(BaseAddress, RegOffset) \
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
int XMultisinemaster_Initialize(XMultisinemaster *InstancePtr, UINTPTR BaseAddress);
XMultisinemaster_Config* XMultisinemaster_LookupConfig(UINTPTR BaseAddress);
#else
int XMultisinemaster_Initialize(XMultisinemaster *InstancePtr, u16 DeviceId);
XMultisinemaster_Config* XMultisinemaster_LookupConfig(u16 DeviceId);
#endif
int XMultisinemaster_CfgInitialize(XMultisinemaster *InstancePtr, XMultisinemaster_Config *ConfigPtr);
#else
int XMultisinemaster_Initialize(XMultisinemaster *InstancePtr, const char* InstanceName);
int XMultisinemaster_Release(XMultisinemaster *InstancePtr);
#endif

void XMultisinemaster_Start(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_IsDone(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_IsIdle(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_IsReady(XMultisinemaster *InstancePtr);
void XMultisinemaster_EnableAutoRestart(XMultisinemaster *InstancePtr);
void XMultisinemaster_DisableAutoRestart(XMultisinemaster *InstancePtr);

void XMultisinemaster_Set_phaseInc(XMultisinemaster *InstancePtr, u32 Data);
u32 XMultisinemaster_Get_phaseInc(XMultisinemaster *InstancePtr);
void XMultisinemaster_Set_samples(XMultisinemaster *InstancePtr, u32 Data);
u32 XMultisinemaster_Get_samples(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_Get_debug_BaseAddress(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_Get_debug_HighAddress(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_Get_debug_TotalBytes(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_Get_debug_BitWidth(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_Get_debug_Depth(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_Write_debug_Words(XMultisinemaster *InstancePtr, int offset, word_type *data, int length);
u32 XMultisinemaster_Read_debug_Words(XMultisinemaster *InstancePtr, int offset, word_type *data, int length);
u32 XMultisinemaster_Write_debug_Bytes(XMultisinemaster *InstancePtr, int offset, char *data, int length);
u32 XMultisinemaster_Read_debug_Bytes(XMultisinemaster *InstancePtr, int offset, char *data, int length);

void XMultisinemaster_InterruptGlobalEnable(XMultisinemaster *InstancePtr);
void XMultisinemaster_InterruptGlobalDisable(XMultisinemaster *InstancePtr);
void XMultisinemaster_InterruptEnable(XMultisinemaster *InstancePtr, u32 Mask);
void XMultisinemaster_InterruptDisable(XMultisinemaster *InstancePtr, u32 Mask);
void XMultisinemaster_InterruptClear(XMultisinemaster *InstancePtr, u32 Mask);
u32 XMultisinemaster_InterruptGetEnabled(XMultisinemaster *InstancePtr);
u32 XMultisinemaster_InterruptGetStatus(XMultisinemaster *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
