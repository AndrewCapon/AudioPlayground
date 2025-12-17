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
#include "xsimplesinemaster.h"

extern XSimplesinemaster_Config XSimplesinemaster_ConfigTable[];

#ifdef SDT
XSimplesinemaster_Config *XSimplesinemaster_LookupConfig(UINTPTR BaseAddress) {
	XSimplesinemaster_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSimplesinemaster_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSimplesinemaster_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSimplesinemaster_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesinemaster_Initialize(XSimplesinemaster *InstancePtr, UINTPTR BaseAddress) {
	XSimplesinemaster_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesinemaster_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesinemaster_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSimplesinemaster_Config *XSimplesinemaster_LookupConfig(u16 DeviceId) {
	XSimplesinemaster_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIMPLESINEMASTER_NUM_INSTANCES; Index++) {
		if (XSimplesinemaster_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSimplesinemaster_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesinemaster_Initialize(XSimplesinemaster *InstancePtr, u16 DeviceId) {
	XSimplesinemaster_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesinemaster_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesinemaster_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

