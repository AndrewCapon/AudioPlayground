// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmultisinemaster.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMultisinemaster_CfgInitialize(XMultisinemaster *InstancePtr, XMultisinemaster_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMultisinemaster_Start(XMultisinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMultisinemaster_IsDone(XMultisinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMultisinemaster_IsIdle(XMultisinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMultisinemaster_IsReady(XMultisinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMultisinemaster_EnableAutoRestart(XMultisinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMultisinemaster_DisableAutoRestart(XMultisinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_AP_CTRL, 0);
}

void XMultisinemaster_Set_phaseInc(XMultisinemaster *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_PHASEINC_DATA, Data);
}

u32 XMultisinemaster_Get_phaseInc(XMultisinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_PHASEINC_DATA);
    return Data;
}

void XMultisinemaster_Set_samples(XMultisinemaster *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_SAMPLES_DATA, Data);
}

u32 XMultisinemaster_Get_samples(XMultisinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_SAMPLES_DATA);
    return Data;
}

void XMultisinemaster_InterruptGlobalEnable(XMultisinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_GIE, 1);
}

void XMultisinemaster_InterruptGlobalDisable(XMultisinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_GIE, 0);
}

void XMultisinemaster_InterruptEnable(XMultisinemaster *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_IER);
    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_IER, Register | Mask);
}

void XMultisinemaster_InterruptDisable(XMultisinemaster *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_IER);
    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMultisinemaster_InterruptClear(XMultisinemaster *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMultisinemaster_WriteReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_ISR, Mask);
}

u32 XMultisinemaster_InterruptGetEnabled(XMultisinemaster *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_IER);
}

u32 XMultisinemaster_InterruptGetStatus(XMultisinemaster *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMultisinemaster_ReadReg(InstancePtr->Control_BaseAddress, XMULTISINEMASTER_CONTROL_ADDR_ISR);
}

