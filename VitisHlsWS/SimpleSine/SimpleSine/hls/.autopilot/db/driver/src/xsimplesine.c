// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsimplesine.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSimplesine_CfgInitialize(XSimplesine *InstancePtr, XSimplesine_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bus_a_BaseAddress = ConfigPtr->Bus_a_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSimplesine_Start(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_AP_CTRL) & 0x80;
    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSimplesine_IsDone(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSimplesine_IsIdle(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSimplesine_IsReady(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSimplesine_EnableAutoRestart(XSimplesine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_AP_CTRL, 0x80);
}

void XSimplesine_DisableAutoRestart(XSimplesine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_AP_CTRL, 0);
}

void XSimplesine_Set_accumulator_i(XSimplesine *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_ACCUMULATOR_I_DATA, Data);
}

u32 XSimplesine_Get_accumulator_i(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_ACCUMULATOR_I_DATA);
    return Data;
}

u32 XSimplesine_Get_accumulator_o(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_ACCUMULATOR_O_DATA);
    return Data;
}

u32 XSimplesine_Get_accumulator_o_vld(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_ACCUMULATOR_O_CTRL);
    return Data & 0x1;
}

void XSimplesine_Set_phaseInc(XSimplesine *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_PHASEINC_DATA, Data);
}

u32 XSimplesine_Get_phaseInc(XSimplesine *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_PHASEINC_DATA);
    return Data;
}

u32 XSimplesine_Get_samples_BaseAddress(XSimplesine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bus_a_BaseAddress + XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE);
}

u32 XSimplesine_Get_samples_HighAddress(XSimplesine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bus_a_BaseAddress + XSIMPLESINE_BUS_A_ADDR_SAMPLES_HIGH);
}

u32 XSimplesine_Get_samples_TotalBytes(XSimplesine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSIMPLESINE_BUS_A_ADDR_SAMPLES_HIGH - XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + 1);
}

u32 XSimplesine_Get_samples_BitWidth(XSimplesine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSIMPLESINE_BUS_A_WIDTH_SAMPLES;
}

u32 XSimplesine_Get_samples_Depth(XSimplesine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSIMPLESINE_BUS_A_DEPTH_SAMPLES;
}

u32 XSimplesine_Write_samples_Words(XSimplesine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSIMPLESINE_BUS_A_ADDR_SAMPLES_HIGH - XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Bus_a_BaseAddress + XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XSimplesine_Read_samples_Words(XSimplesine *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSIMPLESINE_BUS_A_ADDR_SAMPLES_HIGH - XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Bus_a_BaseAddress + XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + (offset + i)*4);
    }
    return length;
}

u32 XSimplesine_Write_samples_Bytes(XSimplesine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSIMPLESINE_BUS_A_ADDR_SAMPLES_HIGH - XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Bus_a_BaseAddress + XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XSimplesine_Read_samples_Bytes(XSimplesine *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSIMPLESINE_BUS_A_ADDR_SAMPLES_HIGH - XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Bus_a_BaseAddress + XSIMPLESINE_BUS_A_ADDR_SAMPLES_BASE + offset + i);
    }
    return length;
}

void XSimplesine_InterruptGlobalEnable(XSimplesine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_GIE, 1);
}

void XSimplesine_InterruptGlobalDisable(XSimplesine *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_GIE, 0);
}

void XSimplesine_InterruptEnable(XSimplesine *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_IER);
    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_IER, Register | Mask);
}

void XSimplesine_InterruptDisable(XSimplesine *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_IER);
    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_IER, Register & (~Mask));
}

void XSimplesine_InterruptClear(XSimplesine *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimplesine_WriteReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_ISR, Mask);
}

u32 XSimplesine_InterruptGetEnabled(XSimplesine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_IER);
}

u32 XSimplesine_InterruptGetStatus(XSimplesine *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimplesine_ReadReg(InstancePtr->Bus_a_BaseAddress, XSIMPLESINE_BUS_A_ADDR_ISR);
}

