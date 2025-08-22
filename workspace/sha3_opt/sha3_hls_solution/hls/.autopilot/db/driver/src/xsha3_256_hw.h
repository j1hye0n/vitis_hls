// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSHA3_256_HW_H
#define XSHA3_256_HW_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsha3_256_hw_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XSha3_256_hw_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XSha3_256_hw;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSha3_256_hw_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSha3_256_hw_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSha3_256_hw_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSha3_256_hw_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XSha3_256_hw_Initialize(XSha3_256_hw *InstancePtr, UINTPTR BaseAddress);
XSha3_256_hw_Config* XSha3_256_hw_LookupConfig(UINTPTR BaseAddress);
#else
int XSha3_256_hw_Initialize(XSha3_256_hw *InstancePtr, u16 DeviceId);
XSha3_256_hw_Config* XSha3_256_hw_LookupConfig(u16 DeviceId);
#endif
int XSha3_256_hw_CfgInitialize(XSha3_256_hw *InstancePtr, XSha3_256_hw_Config *ConfigPtr);
#else
int XSha3_256_hw_Initialize(XSha3_256_hw *InstancePtr, const char* InstanceName);
int XSha3_256_hw_Release(XSha3_256_hw *InstancePtr);
#endif

void XSha3_256_hw_Start(XSha3_256_hw *InstancePtr);
u32 XSha3_256_hw_IsDone(XSha3_256_hw *InstancePtr);
u32 XSha3_256_hw_IsIdle(XSha3_256_hw *InstancePtr);
u32 XSha3_256_hw_IsReady(XSha3_256_hw *InstancePtr);
void XSha3_256_hw_EnableAutoRestart(XSha3_256_hw *InstancePtr);
void XSha3_256_hw_DisableAutoRestart(XSha3_256_hw *InstancePtr);

void XSha3_256_hw_Set_inlen(XSha3_256_hw *InstancePtr, u32 Data);
u32 XSha3_256_hw_Get_inlen(XSha3_256_hw *InstancePtr);
void XSha3_256_hw_Set_out_r(XSha3_256_hw *InstancePtr, u64 Data);
u64 XSha3_256_hw_Get_out_r(XSha3_256_hw *InstancePtr);
void XSha3_256_hw_Set_in_r(XSha3_256_hw *InstancePtr, u64 Data);
u64 XSha3_256_hw_Get_in_r(XSha3_256_hw *InstancePtr);

void XSha3_256_hw_InterruptGlobalEnable(XSha3_256_hw *InstancePtr);
void XSha3_256_hw_InterruptGlobalDisable(XSha3_256_hw *InstancePtr);
void XSha3_256_hw_InterruptEnable(XSha3_256_hw *InstancePtr, u32 Mask);
void XSha3_256_hw_InterruptDisable(XSha3_256_hw *InstancePtr, u32 Mask);
void XSha3_256_hw_InterruptClear(XSha3_256_hw *InstancePtr, u32 Mask);
u32 XSha3_256_hw_InterruptGetEnabled(XSha3_256_hw *InstancePtr);
u32 XSha3_256_hw_InterruptGetStatus(XSha3_256_hw *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
