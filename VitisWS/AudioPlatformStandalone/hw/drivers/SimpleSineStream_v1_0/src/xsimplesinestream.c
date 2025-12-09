// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsimplesinestream.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSimplesinestream_CfgInitialize(XSimplesinestream *InstancePtr, XSimplesinestream_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSimplesinestream_Start(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSimplesinestream_IsDone(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSimplesinestream_IsIdle(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSimplesinestream_IsReady(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSimplesinestream_EnableAutoRestart(XSimplesinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSimplesinestream_DisableAutoRestart(XSimplesinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_AP_CTRL, 0);
}

void XSimplesinestream_Set_accumulator_i(XSimplesinestream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_ACCUMULATOR_I_DATA, Data);
}

u32 XSimplesinestream_Get_accumulator_i(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_ACCUMULATOR_I_DATA);
    return Data;
}

u32 XSimplesinestream_Get_accumulator_o(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_ACCUMULATOR_O_DATA);
    return Data;
}

u32 XSimplesinestream_Get_accumulator_o_vld(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_ACCUMULATOR_O_CTRL);
    return Data & 0x1;
}

void XSimplesinestream_Set_phaseInc(XSimplesinestream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_PHASEINC_DATA, Data);
}

u32 XSimplesinestream_Get_phaseInc(XSimplesinestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_PHASEINC_DATA);
    return Data;
}

void XSimplesinestream_InterruptGlobalEnable(XSimplesinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_GIE, 1);
}

void XSimplesinestream_InterruptGlobalDisable(XSimplesinestream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_GIE, 0);
}

void XSimplesinestream_InterruptEnable(XSimplesinestream *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_IER);
    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_IER, Register | Mask);
}

void XSimplesinestream_InterruptDisable(XSimplesinestream *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_IER);
    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSimplesinestream_InterruptClear(XSimplesinestream *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinestream_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_ISR, Mask);
}

u32 XSimplesinestream_InterruptGetEnabled(XSimplesinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_IER);
}

u32 XSimplesinestream_InterruptGetStatus(XSimplesinestream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesinestream_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINESTREAM_CONTROL_ADDR_ISR);
}

