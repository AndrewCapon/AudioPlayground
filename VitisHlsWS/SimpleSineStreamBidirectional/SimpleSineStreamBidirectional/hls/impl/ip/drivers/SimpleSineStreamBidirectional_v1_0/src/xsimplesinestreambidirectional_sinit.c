// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xsimplesinestreambidirectional.h"

extern XSimplesinestreambidirectional_Config XSimplesinestreambidirectional_ConfigTable[];

#ifdef SDT
XSimplesinestreambidirectional_Config *XSimplesinestreambidirectional_LookupConfig(UINTPTR BaseAddress) {
	XSimplesinestreambidirectional_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSimplesinestreambidirectional_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSimplesinestreambidirectional_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSimplesinestreambidirectional_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesinestreambidirectional_Initialize(XSimplesinestreambidirectional *InstancePtr, UINTPTR BaseAddress) {
	XSimplesinestreambidirectional_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesinestreambidirectional_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesinestreambidirectional_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSimplesinestreambidirectional_Config *XSimplesinestreambidirectional_LookupConfig(u16 DeviceId) {
	XSimplesinestreambidirectional_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIMPLESINESTREAMBIDIRECTIONAL_NUM_INSTANCES; Index++) {
		if (XSimplesinestreambidirectional_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSimplesinestreambidirectional_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesinestreambidirectional_Initialize(XSimplesinestreambidirectional *InstancePtr, u16 DeviceId) {
	XSimplesinestreambidirectional_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesinestreambidirectional_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesinestreambidirectional_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

