// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsha3_256_hw.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSha3_256_hw_CfgInitialize(XSha3_256_hw *InstancePtr, XSha3_256_hw_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSha3_256_hw_Start(XSha3_256_hw *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSha3_256_hw_IsDone(XSha3_256_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSha3_256_hw_IsIdle(XSha3_256_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSha3_256_hw_IsReady(XSha3_256_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSha3_256_hw_EnableAutoRestart(XSha3_256_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSha3_256_hw_DisableAutoRestart(XSha3_256_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_AP_CTRL, 0);
}

void XSha3_256_hw_Set_inlen(XSha3_256_hw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_INLEN_DATA, Data);
}

u32 XSha3_256_hw_Get_inlen(XSha3_256_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_INLEN_DATA);
    return Data;
}

void XSha3_256_hw_Set_out_r(XSha3_256_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_OUT_R_DATA, (u32)(Data));
    XSha3_256_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSha3_256_hw_Get_out_r(XSha3_256_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha3_256_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_OUT_R_DATA);
    Data += (u64)XSha3_256_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XSha3_256_hw_Set_in_r(XSha3_256_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_IN_R_DATA, (u32)(Data));
    XSha3_256_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSha3_256_hw_Get_in_r(XSha3_256_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha3_256_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_IN_R_DATA);
    Data += (u64)XSha3_256_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XSHA3_256_HW_CONTROL_R_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XSha3_256_hw_InterruptGlobalEnable(XSha3_256_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_GIE, 1);
}

void XSha3_256_hw_InterruptGlobalDisable(XSha3_256_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_GIE, 0);
}

void XSha3_256_hw_InterruptEnable(XSha3_256_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_IER);
    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_IER, Register | Mask);
}

void XSha3_256_hw_InterruptDisable(XSha3_256_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_IER);
    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSha3_256_hw_InterruptClear(XSha3_256_hw *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha3_256_hw_WriteReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_ISR, Mask);
}

u32 XSha3_256_hw_InterruptGetEnabled(XSha3_256_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_IER);
}

u32 XSha3_256_hw_InterruptGetStatus(XSha3_256_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSha3_256_hw_ReadReg(InstancePtr->Control_BaseAddress, XSHA3_256_HW_CONTROL_ADDR_ISR);
}

