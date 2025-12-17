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
#include "xmultisinemaster.h"

extern XMultisinemaster_Config XMultisinemaster_ConfigTable[];

#ifdef SDT
XMultisinemaster_Config *XMultisinemaster_LookupConfig(UINTPTR BaseAddress) {
	XMultisinemaster_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMultisinemaster_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMultisinemaster_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMultisinemaster_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMultisinemaster_Initialize(XMultisinemaster *InstancePtr, UINTPTR BaseAddress) {
	XMultisinemaster_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMultisinemaster_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMultisinemaster_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMultisinemaster_Config *XMultisinemaster_LookupConfig(u16 DeviceId) {
	XMultisinemaster_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULTISINEMASTER_NUM_INSTANCES; Index++) {
		if (XMultisinemaster_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMultisinemaster_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMultisinemaster_Initialize(XMultisinemaster *InstancePtr, u16 DeviceId) {
	XMultisinemaster_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMultisinemaster_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMultisinemaster_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

