// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsimplesinestreambidirectional.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSimplesinestreambidirectional_CfgInitialize(XSimplesinestreambidirectional *InstancePtr, XSimplesinestreambidirectional_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSimplesinestreambidirectional_Start(XSimplesinestreambidirectional *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSimplesinestreambidirectional_IsDone(XSimplesinestreambidirectional *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSimplesinestreambidirectional_IsIdle(XSimplesinestreambidirectional *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSimplesinestreambidirectional_IsReady(XSimplesinestreambidirectional *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSimplesinestreambidirectional_EnableAutoRestart(XSimplesinestreambidirectional *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSimplesinestreambidirectional_DisableAutoRestart(XSimplesinestreambidirectional *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_AP_CTRL, 0);
}

void XSimplesinestreambidirectional_InterruptGlobalEnable(XSimplesinestreambidirectional *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_GIE, 1);
}

void XSimplesinestreambidirectional_InterruptGlobalDisable(XSimplesinestreambidirectional *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_GIE, 0);
}

void XSimplesinestreambidirectional_InterruptEnable(XSimplesinestreambidirectional *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_IER);
    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_IER, Register | Mask);
}

void XSimplesinestreambidirectional_InterruptDisable(XSimplesinestreambidirectional *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_IER);
    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSimplesinestreambidirectional_InterruptClear(XSimplesinestreambidirectional *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestreambidirectional_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_ISR, Mask);
}

u32 XSimplesinestreambidirectional_InterruptGetEnabled(XSimplesinestreambidirectional *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_IER);
}

u32 XSimplesinestreambidirectional_InterruptGetStatus(XSimplesinestreambidirectional *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesinestreambidirectional_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAMBIDIRECTIONAL_CONTROL_ADDR_ISR);
}

