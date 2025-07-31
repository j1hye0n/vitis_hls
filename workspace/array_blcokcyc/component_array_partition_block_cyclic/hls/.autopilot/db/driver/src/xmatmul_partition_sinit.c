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
#include "xmatmul_partition.h"

extern XMatmul_partition_Config XMatmul_partition_ConfigTable[];

#ifdef SDT
XMatmul_partition_Config *XMatmul_partition_LookupConfig(UINTPTR BaseAddress) {
	XMatmul_partition_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMatmul_partition_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMatmul_partition_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMatmul_partition_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatmul_partition_Initialize(XMatmul_partition *InstancePtr, UINTPTR BaseAddress) {
	XMatmul_partition_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatmul_partition_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatmul_partition_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMatmul_partition_Config *XMatmul_partition_LookupConfig(u16 DeviceId) {
	XMatmul_partition_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATMUL_PARTITION_NUM_INSTANCES; Index++) {
		if (XMatmul_partition_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatmul_partition_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatmul_partition_Initialize(XMatmul_partition *InstancePtr, u16 DeviceId) {
	XMatmul_partition_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatmul_partition_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatmul_partition_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

