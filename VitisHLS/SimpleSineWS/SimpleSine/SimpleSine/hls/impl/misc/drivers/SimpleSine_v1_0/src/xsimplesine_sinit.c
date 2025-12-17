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
#include "xsimplesine.h"

extern XSimplesine_Config XSimplesine_ConfigTable[];

#ifdef SDT
XSimplesine_Config *XSimplesine_LookupConfig(UINTPTR BaseAddress) {
	XSimplesine_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSimplesine_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSimplesine_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSimplesine_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesine_Initialize(XSimplesine *InstancePtr, UINTPTR BaseAddress) {
	XSimplesine_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesine_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesine_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSimplesine_Config *XSimplesine_LookupConfig(u16 DeviceId) {
	XSimplesine_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIMPLESINE_NUM_INSTANCES; Index++) {
		if (XSimplesine_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSimplesine_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesine_Initialize(XSimplesine *InstancePtr, u16 DeviceId) {
	XSimplesine_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesine_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesine_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

