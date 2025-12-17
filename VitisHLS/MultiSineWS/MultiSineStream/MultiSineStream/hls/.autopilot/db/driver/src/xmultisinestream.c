// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmultisinestream.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMultisinestream_CfgInitialize(XMultisinestream *InstancePtr, XMultisinestream_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMultisinestream_Start(XMultisinestream *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMultisinestream_IsDone(XMultisinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMultisinestream_IsIdle(XMultisinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMultisinestream_IsReady(XMultisinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMultisinestream_EnableAutoRestart(XMultisinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMultisinestream_DisableAutoRestart(XMultisinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XMultisinestream_Get_phaseInc_BaseAddress(XMultisinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE);
}

u32 XMultisinestream_Get_phaseInc_HighAddress(XMultisinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_HIGH);
}

u32 XMultisinestream_Get_phaseInc_TotalBytes(XMultisinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + 1);
}

u32 XMultisinestream_Get_phaseInc_BitWidth(XMultisinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINESTREAM_CONTROL_WIDTH_PHASEINC;
}

u32 XMultisinestream_Get_phaseInc_Depth(XMultisinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMULTISINESTREAM_CONTROL_DEPTH_PHASEINC;
}

u32 XMultisinestream_Write_phaseInc_Words(XMultisinestream *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XMultisinestream_Read_phaseInc_Words(XMultisinestream *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + (offset + i)*4);
    }
    return length;
}

u32 XMultisinestream_Write_phaseInc_Bytes(XMultisinestream *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XMultisinestream_Read_phaseInc_Bytes(XMultisinestream *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_HIGH - XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XMULTISINESTREAM_CONTROL_ADDR_PHASEINC_BASE + offset + i);
    }
    return length;
}

void XMultisinestream_InterruptGlobalEnable(XMultisinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_GIE, 1);
}

void XMultisinestream_InterruptGlobalDisable(XMultisinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_GIE, 0);
}

void XMultisinestream_InterruptEnable(XMultisinestream *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_IER);
    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_IER, Register | Mask);
}

void XMultisinestream_InterruptDisable(XMultisinestream *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_IER);
    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMultisinestream_InterruptClear(XMultisinestream *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinestream_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_ISR, Mask);
}

u32 XMultisinestream_InterruptGetEnabled(XMultisinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_IER);
}

u32 XMultisinestream_InterruptGetStatus(XMultisinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultisinestream_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINESTREAM_CONTROL_ADDR_ISR);
}

