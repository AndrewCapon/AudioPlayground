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
#include "xmultisine.h"

extern XMultisine_Config XMultisine_ConfigTable[];

#ifdef SDT
XMultisine_Config *XMultisine_LookupConfig(UINTPTR BaseAddress) {
	XMultisine_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMultisine_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMultisine_ConfigTable[Index].Bus_a_BaseAddress == BaseAddress) {
			ConfigPtr = &XMultisine_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMultisine_Initialize(XMultisine *InstancePtr, UINTPTR BaseAddress) {
	XMultisine_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMultisine_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMultisine_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMultisine_Config *XMultisine_LookupConfig(u16 DeviceId) {
	XMultisine_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULTISINE_NUM_INSTANCES; Index++) {
		if (XMultisine_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMultisine_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMultisine_Initialize(XMultisine *InstancePtr, u16 DeviceId) {
	XMultisine_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMultisine_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMultisine_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

