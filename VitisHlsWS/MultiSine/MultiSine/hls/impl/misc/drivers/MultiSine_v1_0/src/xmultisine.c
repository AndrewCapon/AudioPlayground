// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmultisine.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMultisine_CfgInitialize(XMultisine *InstancePtr, XMultisine_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMultisine_Start(XMultisine *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMultisine_IsDone(XMultisine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMultisine_IsIdle(XMultisine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMultisine_IsReady(XMultisine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMultisine_EnableAutoRestart(XMultisine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMultisine_DisableAutoRestart(XMultisine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XMultisine_Get_phaseInc_BaseAddress(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_PHASEINC_BASE);
}

u32 XMultisine_Get_phaseInc_HighAddress(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_PHASEINC_HIGH);
}

u32 XMultisine_Get_phaseInc_TotalBytes(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTISINE_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + 1);
}

u32 XMultisine_Get_phaseInc_BitWidth(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINE_CONTROL_WIDTH_PHASEINC;
}

u32 XMultisine_Get_phaseInc_Depth(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINE_CONTROL_DEPTH_PHASEINC;
}

u32 XMultisine_Write_phaseInc_Words(XMultisine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINE_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMultisine_Read_phaseInc_Words(XMultisine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINE_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMultisine_Write_phaseInc_Bytes(XMultisine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINE_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMultisine_Read_phaseInc_Bytes(XMultisine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINE_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_PHASEINC_BASE + offset + i);
    }
    return length;
}

u32 XMultisine_Get_debug_BaseAddress(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_DEBUG_BASE);
}

u32 XMultisine_Get_debug_HighAddress(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_DEBUG_HIGH);
}

u32 XMultisine_Get_debug_TotalBytes(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTISINE_CONTROL_ADDR_DEBUG_HIGH - XMULTISINE_CONTROL_ADDR_DEBUG_BASE + 1);
}

u32 XMultisine_Get_debug_BitWidth(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINE_CONTROL_WIDTH_DEBUG;
}

u32 XMultisine_Get_debug_Depth(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINE_CONTROL_DEPTH_DEBUG;
}

u32 XMultisine_Write_debug_Words(XMultisine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINE_CONTROL_ADDR_DEBUG_HIGH - XMULTISINE_CONTROL_ADDR_DEBUG_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_DEBUG_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMultisine_Read_debug_Words(XMultisine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINE_CONTROL_ADDR_DEBUG_HIGH - XMULTISINE_CONTROL_ADDR_DEBUG_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_DEBUG_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMultisine_Write_debug_Bytes(XMultisine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINE_CONTROL_ADDR_DEBUG_HIGH - XMULTISINE_CONTROL_ADDR_DEBUG_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_DEBUG_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMultisine_Read_debug_Bytes(XMultisine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINE_CONTROL_ADDR_DEBUG_HIGH - XMULTISINE_CONTROL_ADDR_DEBUG_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_DEBUG_BASE + offset + i);
    }
    return length;
}

u32 XMultisine_Get_samples_BaseAddress(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_SAMPLES_BASE);
}

u32 XMultisine_Get_samples_HighAddress(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_SAMPLES_HIGH);
}

u32 XMultisine_Get_samples_TotalBytes(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTISINE_CONTROL_ADDR_SAMPLES_HIGH - XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + 1);
}

u32 XMultisine_Get_samples_BitWidth(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINE_CONTROL_WIDTH_SAMPLES;
}

u32 XMultisine_Get_samples_Depth(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINE_CONTROL_DEPTH_SAMPLES;
}

u32 XMultisine_Write_samples_Words(XMultisine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINE_CONTROL_ADDR_SAMPLES_HIGH - XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMultisine_Read_samples_Words(XMultisine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINE_CONTROL_ADDR_SAMPLES_HIGH - XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMultisine_Write_samples_Bytes(XMultisine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINE_CONTROL_ADDR_SAMPLES_HIGH - XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMultisine_Read_samples_Bytes(XMultisine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINE_CONTROL_ADDR_SAMPLES_HIGH - XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTISINE_CONTROL_ADDR_SAMPLES_BASE + offset + i);
    }
    return length;
}

void XMultisine_InterruptGlobalEnable(XMultisine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_GIE, 1);
}

void XMultisine_InterruptGlobalDisable(XMultisine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_GIE, 0);
}

void XMultisine_InterruptEnable(XMultisine *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_IER);
    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_IER, Register | Mask);
}

void XMultisine_InterruptDisable(XMultisine *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_IER);
    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMultisine_InterruptClear(XMultisine *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisine_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_ISR, Mask);
}

u32 XMultisine_InterruptGetEnabled(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_IER);
}

u32 XMultisine_InterruptGetStatus(XMultisine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultisine_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINE_CONTROL_ADDR_ISR);
}

