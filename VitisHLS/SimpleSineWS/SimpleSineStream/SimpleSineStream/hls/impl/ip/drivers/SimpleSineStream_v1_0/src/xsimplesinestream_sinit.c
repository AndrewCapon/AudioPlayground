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
#include "xsimplesinestream.h"

extern XSimplesinestream_Config XSimplesinestream_ConfigTable[];

#ifdef SDT
XSimplesinestream_Config *XSimplesinestream_LookupConfig(UINTPTR BaseAddress) {
	XSimplesinestream_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSimplesinestream_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSimplesinestream_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSimplesinestream_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesinestream_Initialize(XSimplesinestream *InstancePtr, UINTPTR BaseAddress) {
	XSimplesinestream_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesinestream_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesinestream_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSimplesinestream_Config *XSimplesinestream_LookupConfig(u16 DeviceId) {
	XSimplesinestream_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIMPLESINESTREAM_NUM_INSTANCES; Index++) {
		if (XSimplesinestream_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSimplesinestream_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimplesinestream_Initialize(XSimplesinestream *InstancePtr, u16 DeviceId) {
	XSimplesinestream_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimplesinestream_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimplesinestream_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

