// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsimplesinemaster.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSimplesinemaster_CfgInitialize(XSimplesinemaster *InstancePtr, XSimplesinemaster_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSimplesinemaster_Start(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSimplesinemaster_IsDone(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSimplesinemaster_IsIdle(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSimplesinemaster_IsReady(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSimplesinemaster_EnableAutoRestart(XSimplesinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSimplesinemaster_DisableAutoRestart(XSimplesinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_AP_CTRL, 0);
}

void XSimplesinemaster_Set_accumulator_i(XSimplesinemaster *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_ACCUMULATOR_I_DATA, Data);
}

u32 XSimplesinemaster_Get_accumulator_i(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_ACCUMULATOR_I_DATA);
    return Data;
}

u32 XSimplesinemaster_Get_accumulator_o(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_ACCUMULATOR_O_DATA);
    return Data;
}

u32 XSimplesinemaster_Get_accumulator_o_vld(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_ACCUMULATOR_O_CTRL);
    return Data & 0x1;
}

void XSimplesinemaster_Set_phaseInc(XSimplesinemaster *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_PHASEINC_DATA, Data);
}

u32 XSimplesinemaster_Get_phaseInc(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_PHASEINC_DATA);
    return Data;
}

void XSimplesinemaster_Set_samples(XSimplesinemaster *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_SAMPLES_DATA, Data);
}

u32 XSimplesinemaster_Get_samples(XSimplesinemaster *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_SAMPLES_DATA);
    return Data;
}

void XSimplesinemaster_InterruptGlobalEnable(XSimplesinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_GIE, 1);
}

void XSimplesinemaster_InterruptGlobalDisable(XSimplesinemaster *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_GIE, 0);
}

void XSimplesinemaster_InterruptEnable(XSimplesinemaster *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_IER);
    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_IER, Register | Mask);
}

void XSimplesinemaster_InterruptDisable(XSimplesinemaster *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_IER);
    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSimplesinemaster_InterruptClear(XSimplesinemaster *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesinemaster_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_ISR, Mask);
}

u32 XSimplesinemaster_InterruptGetEnabled(XSimplesinemaster *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_IER);
}

u32 XSimplesinemaster_InterruptGetStatus(XSimplesinemaster *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesinemaster_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLESINEMASTER_CONTROL_ADDR_ISR);
}

