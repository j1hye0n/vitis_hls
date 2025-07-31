// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatmul_partition.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatmul_partition_CfgInitialize(XMatmul_partition *InstancePtr, XMatmul_partition_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatmul_partition_Set_in1(XMatmul_partition *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA, (u32)(Data));
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA + 4, (u32)(Data >> 32));
}

u64 XMatmul_partition_Get_in1(XMatmul_partition *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA);
    Data += (u64)XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA + 4) << 32;
    return Data;
}

void XMatmul_partition_Set_in2(XMatmul_partition *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA, (u32)(Data));
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA + 4, (u32)(Data >> 32));
}

u64 XMatmul_partition_Get_in2(XMatmul_partition *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA);
    Data += (u64)XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA + 4) << 32;
    return Data;
}

void XMatmul_partition_Set_out_r(XMatmul_partition *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XMatmul_partition_Get_out_r(XMatmul_partition *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

