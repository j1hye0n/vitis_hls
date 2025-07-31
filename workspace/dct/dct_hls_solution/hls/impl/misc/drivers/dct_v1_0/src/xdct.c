// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdct.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDct_CfgInitialize(XDct *InstancePtr, XDct_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDct_Start(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDct_IsDone(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDct_IsIdle(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDct_IsReady(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDct_EnableAutoRestart(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDct_DisableAutoRestart(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XDct_Get_input_r_BaseAddress(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_INPUT_R_BASE);
}

u32 XDct_Get_input_r_HighAddress(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_INPUT_R_HIGH);
}

u32 XDct_Get_input_r_TotalBytes(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDCT_CONTROL_ADDR_INPUT_R_HIGH - XDCT_CONTROL_ADDR_INPUT_R_BASE + 1);
}

u32 XDct_Get_input_r_BitWidth(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDCT_CONTROL_WIDTH_INPUT_R;
}

u32 XDct_Get_input_r_Depth(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDCT_CONTROL_DEPTH_INPUT_R;
}

u32 XDct_Write_input_r_Words(XDct *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDCT_CONTROL_ADDR_INPUT_R_HIGH - XDCT_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_INPUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDct_Read_input_r_Words(XDct *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDCT_CONTROL_ADDR_INPUT_R_HIGH - XDCT_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_INPUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDct_Write_input_r_Bytes(XDct *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDCT_CONTROL_ADDR_INPUT_R_HIGH - XDCT_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_INPUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDct_Read_input_r_Bytes(XDct *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDCT_CONTROL_ADDR_INPUT_R_HIGH - XDCT_CONTROL_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_INPUT_R_BASE + offset + i);
    }
    return length;
}

u32 XDct_Get_output_r_BaseAddress(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_OUTPUT_R_BASE);
}

u32 XDct_Get_output_r_HighAddress(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_OUTPUT_R_HIGH);
}

u32 XDct_Get_output_r_TotalBytes(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDCT_CONTROL_ADDR_OUTPUT_R_HIGH - XDCT_CONTROL_ADDR_OUTPUT_R_BASE + 1);
}

u32 XDct_Get_output_r_BitWidth(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDCT_CONTROL_WIDTH_OUTPUT_R;
}

u32 XDct_Get_output_r_Depth(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDCT_CONTROL_DEPTH_OUTPUT_R;
}

u32 XDct_Write_output_r_Words(XDct *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDCT_CONTROL_ADDR_OUTPUT_R_HIGH - XDCT_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_OUTPUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDct_Read_output_r_Words(XDct *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDCT_CONTROL_ADDR_OUTPUT_R_HIGH - XDCT_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_OUTPUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDct_Write_output_r_Bytes(XDct *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDCT_CONTROL_ADDR_OUTPUT_R_HIGH - XDCT_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_OUTPUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDct_Read_output_r_Bytes(XDct *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDCT_CONTROL_ADDR_OUTPUT_R_HIGH - XDCT_CONTROL_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XDCT_CONTROL_ADDR_OUTPUT_R_BASE + offset + i);
    }
    return length;
}

void XDct_InterruptGlobalEnable(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_GIE, 1);
}

void XDct_InterruptGlobalDisable(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_GIE, 0);
}

void XDct_InterruptEnable(XDct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER);
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER, Register | Mask);
}

void XDct_InterruptDisable(XDct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER);
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDct_InterruptClear(XDct *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_ISR, Mask);
}

u32 XDct_InterruptGetEnabled(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER);
}

u32 XDct_InterruptGetStatus(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_ISR);
}

