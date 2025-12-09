// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMULTISINESTREAM_H
#define XMULTISINESTREAM_H

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
#include "xmultisinestream_hw.h"

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
} XMultisinestream_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMultisinestream;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMultisinestream_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMultisinestream_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMultisinestream_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMultisinestream_ReadReg(BaseAddress, RegOffset) \
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
int XMultisinestream_Initialize(XMultisinestream *InstancePtr, UINTPTR BaseAddress);
XMultisinestream_Config* XMultisinestream_LookupConfig(UINTPTR BaseAddress);
#else
int XMultisinestream_Initialize(XMultisinestream *InstancePtr, u16 DeviceId);
XMultisinestream_Config* XMultisinestream_LookupConfig(u16 DeviceId);
#endif
int XMultisinestream_CfgInitialize(XMultisinestream *InstancePtr, XMultisinestream_Config *ConfigPtr);
#else
int XMultisinestream_Initialize(XMultisinestream *InstancePtr, const char* InstanceName);
int XMultisinestream_Release(XMultisinestream *InstancePtr);
#endif

void XMultisinestream_Start(XMultisinestream *InstancePtr);
u32 XMultisinestream_IsDone(XMultisinestream *InstancePtr);
u32 XMultisinestream_IsIdle(XMultisinestream *InstancePtr);
u32 XMultisinestream_IsReady(XMultisinestream *InstancePtr);
void XMultisinestream_EnableAutoRestart(XMultisinestream *InstancePtr);
void XMultisinestream_DisableAutoRestart(XMultisinestream *InstancePtr);

u32 XMultisinestream_Get_phaseInc_BaseAddress(XMultisinestream *InstancePtr);
u32 XMultisinestream_Get_phaseInc_HighAddress(XMultisinestream *InstancePtr);
u32 XMultisinestream_Get_phaseInc_TotalBytes(XMultisinestream *InstancePtr);
u32 XMultisinestream_Get_phaseInc_BitWidth(XMultisinestream *InstancePtr);
u32 XMultisinestream_Get_phaseInc_Depth(XMultisinestream *InstancePtr);
u32 XMultisinestream_Write_phaseInc_Words(XMultisinestream *InstancePtr, int offset, word_type *data, int length);
u32 XMultisinestream_Read_phaseInc_Words(XMultisinestream *InstancePtr, int offset, word_type *data, int length);
u32 XMultisinestream_Write_phaseInc_Bytes(XMultisinestream *InstancePtr, int offset, char *data, int length);
u32 XMultisinestream_Read_phaseInc_Bytes(XMultisinestream *InstancePtr, int offset, char *data, int length);

void XMultisinestream_InterruptGlobalEnable(XMultisinestream *InstancePtr);
void XMultisinestream_InterruptGlobalDisable(XMultisinestream *InstancePtr);
void XMultisinestream_InterruptEnable(XMultisinestream *InstancePtr, u32 Mask);
void XMultisinestream_InterruptDisable(XMultisinestream *InstancePtr, u32 Mask);
void XMultisinestream_InterruptClear(XMultisinestream *InstancePtr, u32 Mask);
u32 XMultisinestream_InterruptGetEnabled(XMultisinestream *InstancePtr);
u32 XMultisinestream_InterruptGetStatus(XMultisinestream *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
