set moduleName sha3_256_hls
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 10
set C_modelName {sha3_256_hls}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict in_r { MEM_WIDTH 8 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ h_0 int 8 regular {pointer 1}  }
	{ h_1 int 8 regular {pointer 1}  }
	{ h_2 int 8 regular {pointer 1}  }
	{ h_3 int 8 regular {pointer 1}  }
	{ h_4 int 8 regular {pointer 1}  }
	{ h_5 int 8 regular {pointer 1}  }
	{ h_6 int 8 regular {pointer 1}  }
	{ h_7 int 8 regular {pointer 1}  }
	{ h_8 int 8 regular {pointer 1}  }
	{ h_9 int 8 regular {pointer 1}  }
	{ h_10 int 8 regular {pointer 1}  }
	{ h_11 int 8 regular {pointer 1}  }
	{ h_12 int 8 regular {pointer 1}  }
	{ h_13 int 8 regular {pointer 1}  }
	{ h_14 int 8 regular {pointer 1}  }
	{ h_15 int 8 regular {pointer 1}  }
	{ h_16 int 8 regular {pointer 1}  }
	{ h_17 int 8 regular {pointer 1}  }
	{ h_18 int 8 regular {pointer 1}  }
	{ h_19 int 8 regular {pointer 1}  }
	{ h_20 int 8 regular {pointer 1}  }
	{ h_21 int 8 regular {pointer 1}  }
	{ h_22 int 8 regular {pointer 1}  }
	{ h_23 int 8 regular {pointer 1}  }
	{ h_24 int 8 regular {pointer 1}  }
	{ h_25 int 8 regular {pointer 1}  }
	{ h_26 int 8 regular {pointer 1}  }
	{ h_27 int 8 regular {pointer 1}  }
	{ h_28 int 8 regular {pointer 1}  }
	{ h_29 int 8 regular {pointer 1}  }
	{ h_30 int 8 regular {pointer 1}  }
	{ h_31 int 8 regular {pointer 1}  }
	{ in_r int 8 regular {array 2048 { 1 1 } 1 1 }  }
	{ inlen int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "h_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_5", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_6", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_7", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_8", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_9", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_10", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_11", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_12", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_13", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_14", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_15", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_16", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_17", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_18", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_19", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_20", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_21", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_22", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_23", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_24", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_25", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_26", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_27", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_28", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_29", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_30", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_31", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ h_0 sc_out sc_lv 8 signal 0 } 
	{ h_0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ h_1 sc_out sc_lv 8 signal 1 } 
	{ h_1_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ h_2 sc_out sc_lv 8 signal 2 } 
	{ h_2_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ h_3 sc_out sc_lv 8 signal 3 } 
	{ h_3_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ h_4 sc_out sc_lv 8 signal 4 } 
	{ h_4_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ h_5 sc_out sc_lv 8 signal 5 } 
	{ h_5_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ h_6 sc_out sc_lv 8 signal 6 } 
	{ h_6_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ h_7 sc_out sc_lv 8 signal 7 } 
	{ h_7_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ h_8 sc_out sc_lv 8 signal 8 } 
	{ h_8_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ h_9 sc_out sc_lv 8 signal 9 } 
	{ h_9_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ h_10 sc_out sc_lv 8 signal 10 } 
	{ h_10_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ h_11 sc_out sc_lv 8 signal 11 } 
	{ h_11_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ h_12 sc_out sc_lv 8 signal 12 } 
	{ h_12_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ h_13 sc_out sc_lv 8 signal 13 } 
	{ h_13_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ h_14 sc_out sc_lv 8 signal 14 } 
	{ h_14_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ h_15 sc_out sc_lv 8 signal 15 } 
	{ h_15_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ h_16 sc_out sc_lv 8 signal 16 } 
	{ h_16_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ h_17 sc_out sc_lv 8 signal 17 } 
	{ h_17_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ h_18 sc_out sc_lv 8 signal 18 } 
	{ h_18_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ h_19 sc_out sc_lv 8 signal 19 } 
	{ h_19_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ h_20 sc_out sc_lv 8 signal 20 } 
	{ h_20_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ h_21 sc_out sc_lv 8 signal 21 } 
	{ h_21_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ h_22 sc_out sc_lv 8 signal 22 } 
	{ h_22_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ h_23 sc_out sc_lv 8 signal 23 } 
	{ h_23_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ h_24 sc_out sc_lv 8 signal 24 } 
	{ h_24_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ h_25 sc_out sc_lv 8 signal 25 } 
	{ h_25_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ h_26 sc_out sc_lv 8 signal 26 } 
	{ h_26_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ h_27 sc_out sc_lv 8 signal 27 } 
	{ h_27_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ h_28 sc_out sc_lv 8 signal 28 } 
	{ h_28_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ h_29 sc_out sc_lv 8 signal 29 } 
	{ h_29_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ h_30 sc_out sc_lv 8 signal 30 } 
	{ h_30_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ h_31 sc_out sc_lv 8 signal 31 } 
	{ h_31_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ in_r_address0 sc_out sc_lv 11 signal 32 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 32 } 
	{ in_r_q0 sc_in sc_lv 8 signal 32 } 
	{ in_r_address1 sc_out sc_lv 11 signal 32 } 
	{ in_r_ce1 sc_out sc_logic 1 signal 32 } 
	{ in_r_q1 sc_in sc_lv 8 signal 32 } 
	{ inlen sc_in sc_lv 64 signal 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "h_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_0", "role": "default" }} , 
 	{ "name": "h_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_0", "role": "ap_vld" }} , 
 	{ "name": "h_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_1", "role": "default" }} , 
 	{ "name": "h_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_1", "role": "ap_vld" }} , 
 	{ "name": "h_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_2", "role": "default" }} , 
 	{ "name": "h_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_2", "role": "ap_vld" }} , 
 	{ "name": "h_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_3", "role": "default" }} , 
 	{ "name": "h_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_3", "role": "ap_vld" }} , 
 	{ "name": "h_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_4", "role": "default" }} , 
 	{ "name": "h_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_4", "role": "ap_vld" }} , 
 	{ "name": "h_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_5", "role": "default" }} , 
 	{ "name": "h_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_5", "role": "ap_vld" }} , 
 	{ "name": "h_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_6", "role": "default" }} , 
 	{ "name": "h_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_6", "role": "ap_vld" }} , 
 	{ "name": "h_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_7", "role": "default" }} , 
 	{ "name": "h_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_7", "role": "ap_vld" }} , 
 	{ "name": "h_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_8", "role": "default" }} , 
 	{ "name": "h_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_8", "role": "ap_vld" }} , 
 	{ "name": "h_9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_9", "role": "default" }} , 
 	{ "name": "h_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_9", "role": "ap_vld" }} , 
 	{ "name": "h_10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_10", "role": "default" }} , 
 	{ "name": "h_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_10", "role": "ap_vld" }} , 
 	{ "name": "h_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_11", "role": "default" }} , 
 	{ "name": "h_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_11", "role": "ap_vld" }} , 
 	{ "name": "h_12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_12", "role": "default" }} , 
 	{ "name": "h_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_12", "role": "ap_vld" }} , 
 	{ "name": "h_13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_13", "role": "default" }} , 
 	{ "name": "h_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_13", "role": "ap_vld" }} , 
 	{ "name": "h_14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_14", "role": "default" }} , 
 	{ "name": "h_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_14", "role": "ap_vld" }} , 
 	{ "name": "h_15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_15", "role": "default" }} , 
 	{ "name": "h_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_15", "role": "ap_vld" }} , 
 	{ "name": "h_16", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_16", "role": "default" }} , 
 	{ "name": "h_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_16", "role": "ap_vld" }} , 
 	{ "name": "h_17", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_17", "role": "default" }} , 
 	{ "name": "h_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_17", "role": "ap_vld" }} , 
 	{ "name": "h_18", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_18", "role": "default" }} , 
 	{ "name": "h_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_18", "role": "ap_vld" }} , 
 	{ "name": "h_19", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_19", "role": "default" }} , 
 	{ "name": "h_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_19", "role": "ap_vld" }} , 
 	{ "name": "h_20", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_20", "role": "default" }} , 
 	{ "name": "h_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_20", "role": "ap_vld" }} , 
 	{ "name": "h_21", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_21", "role": "default" }} , 
 	{ "name": "h_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_21", "role": "ap_vld" }} , 
 	{ "name": "h_22", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_22", "role": "default" }} , 
 	{ "name": "h_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_22", "role": "ap_vld" }} , 
 	{ "name": "h_23", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_23", "role": "default" }} , 
 	{ "name": "h_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_23", "role": "ap_vld" }} , 
 	{ "name": "h_24", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_24", "role": "default" }} , 
 	{ "name": "h_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_24", "role": "ap_vld" }} , 
 	{ "name": "h_25", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_25", "role": "default" }} , 
 	{ "name": "h_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_25", "role": "ap_vld" }} , 
 	{ "name": "h_26", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_26", "role": "default" }} , 
 	{ "name": "h_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_26", "role": "ap_vld" }} , 
 	{ "name": "h_27", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_27", "role": "default" }} , 
 	{ "name": "h_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_27", "role": "ap_vld" }} , 
 	{ "name": "h_28", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_28", "role": "default" }} , 
 	{ "name": "h_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_28", "role": "ap_vld" }} , 
 	{ "name": "h_29", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_29", "role": "default" }} , 
 	{ "name": "h_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_29", "role": "ap_vld" }} , 
 	{ "name": "h_30", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_30", "role": "default" }} , 
 	{ "name": "h_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_30", "role": "ap_vld" }} , 
 	{ "name": "h_31", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_31", "role": "default" }} , 
 	{ "name": "h_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_31", "role": "ap_vld" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "in_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "in_r", "role": "address1" }} , 
 	{ "name": "in_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce1" }} , 
 	{ "name": "in_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q1" }} , 
 	{ "name": "inlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inlen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "26", "31"],
		"CDFG" : "sha3_256_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_6", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_7", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_8", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_9", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_10", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_10", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_11", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_11", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_12", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_12", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_13", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_13", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_14", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_14", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_15", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_15", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_16", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_16", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_17", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_17", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_18", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_18", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_19", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_19", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_20", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_20", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_21", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_21", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_22", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_22", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_23", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_23", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_24", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_24", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_25", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_25", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_26", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_26", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_27", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_27", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_28", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_28", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_29", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_29", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_30", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_30", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "h_31", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Port" : "h_31", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_keccak_absorb_once_hls_fu_180", "Port" : "in_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180", "Parent" : "0", "Child" : ["7", "9", "14", "17", "22", "23", "24", "25"],
		"CDFG" : "keccak_absorb_once_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_0", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "14", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_0", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "17", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_0", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_1", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "14", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_1", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "17", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_1", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_2", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "14", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_2", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "17", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_2", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_3", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "14", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_3", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "17", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_3", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_4", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "14", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_4", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "17", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_4", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "in_r", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "14", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "in_r", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "absorb_blocks", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "142", "FirstState" : "ap_ST_fsm_state71", "LastState" : ["ap_ST_fsm_state75"], "QuitState" : ["ap_ST_fsm_state71"], "PreState" : ["ap_ST_fsm_state70"], "PostState" : ["ap_ST_fsm_state76"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "keccak_absorb_once_hls_Pipeline_init_state",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "init_state", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Parent" : "6", "Child" : ["10", "11", "12", "13"],
		"CDFG" : "keccak_absorb_once_hls_Pipeline_absorb_remaining",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln262", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_0_lcssa_sel", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "absorb_remaining", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.mul_29ns_31ns_59_2_1_U74", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.urem_29ns_4ns_3_33_1_U75", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.sparsemux_11_3_64_1_1_U76", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Parent" : "6", "Child" : ["15", "16"],
		"CDFG" : "keccak_absorb_once_hls_Pipeline_absorb_word_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71", "EstimateLatencyMax" : "71",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "absorb_word_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216.sparsemux_11_3_64_1_1_U6", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_KeccakF1600_StatePermute_HLS_fu_233", "Parent" : "6", "Child" : ["18"],
		"CDFG" : "KeccakF1600_StatePermute_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_4", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392", "Parent" : "17", "Child" : ["19", "20", "21"],
		"CDFG" : "KeccakF1600_StatePermute_HLS_Pipeline_state_permute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Aba", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abe", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aga", "Type" : "None", "Direction" : "I"},
			{"Name" : "Age", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ago", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aka", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ake", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aki", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ako", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aku", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ama", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ame", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ami", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asa", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ase", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aso", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aba_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abe_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aga_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Age_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ago_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aka_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ake_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aki_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ako_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aku_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ama_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ame_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ami_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asa_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ase_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aso_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asu_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "state_permute", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U15", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U16", "Parent" : "18"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.mul_61ns_63ns_123_5_1_U87", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.urem_64ns_9ns_64_68_seq_1_U88", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.urem_61ns_4ns_3_65_seq_1_U89", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_fu_180.sparsemux_11_3_64_1_1_U90", "Parent" : "6"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_198", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "KeccakF1600_StatePermute_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_4", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_198.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392", "Parent" : "26", "Child" : ["28", "29", "30"],
		"CDFG" : "KeccakF1600_StatePermute_HLS_Pipeline_state_permute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Aba", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abe", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aga", "Type" : "None", "Direction" : "I"},
			{"Name" : "Age", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ago", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aka", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ake", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aki", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ako", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aku", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ama", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ame", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ami", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asa", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ase", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aso", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aba_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abe_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aga_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Age_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ago_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aka_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ake_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aki_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ako_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aku_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ama_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ame_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ami_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asa_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ase_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aso_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asu_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "state_permute", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_198.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U15", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_198.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U16", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_198.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha3_256_hls_Pipeline_extract_output_fu_207", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "sha3_256_hls_Pipeline_extract_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h_31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "h_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_3_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "extract_output", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha3_256_hls_Pipeline_extract_output_fu_207.sparsemux_9_2_64_1_1_U101", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha3_256_hls_Pipeline_extract_output_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"}]}


set ArgLastReadFirstWriteLatency {
	sha3_256_hls {
		h_0 {Type O LastRead -1 FirstWrite 0}
		h_1 {Type O LastRead -1 FirstWrite 0}
		h_2 {Type O LastRead -1 FirstWrite 0}
		h_3 {Type O LastRead -1 FirstWrite 0}
		h_4 {Type O LastRead -1 FirstWrite 0}
		h_5 {Type O LastRead -1 FirstWrite 0}
		h_6 {Type O LastRead -1 FirstWrite 0}
		h_7 {Type O LastRead -1 FirstWrite 0}
		h_8 {Type O LastRead -1 FirstWrite 0}
		h_9 {Type O LastRead -1 FirstWrite 0}
		h_10 {Type O LastRead -1 FirstWrite 0}
		h_11 {Type O LastRead -1 FirstWrite 0}
		h_12 {Type O LastRead -1 FirstWrite 0}
		h_13 {Type O LastRead -1 FirstWrite 0}
		h_14 {Type O LastRead -1 FirstWrite 0}
		h_15 {Type O LastRead -1 FirstWrite 0}
		h_16 {Type O LastRead -1 FirstWrite 0}
		h_17 {Type O LastRead -1 FirstWrite 0}
		h_18 {Type O LastRead -1 FirstWrite 0}
		h_19 {Type O LastRead -1 FirstWrite 0}
		h_20 {Type O LastRead -1 FirstWrite 0}
		h_21 {Type O LastRead -1 FirstWrite 0}
		h_22 {Type O LastRead -1 FirstWrite 0}
		h_23 {Type O LastRead -1 FirstWrite 0}
		h_24 {Type O LastRead -1 FirstWrite 0}
		h_25 {Type O LastRead -1 FirstWrite 0}
		h_26 {Type O LastRead -1 FirstWrite 0}
		h_27 {Type O LastRead -1 FirstWrite 0}
		h_28 {Type O LastRead -1 FirstWrite 0}
		h_29 {Type O LastRead -1 FirstWrite 0}
		h_30 {Type O LastRead -1 FirstWrite 0}
		h_31 {Type O LastRead -1 FirstWrite 0}
		in_r {Type I LastRead 31 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}}
	keccak_absorb_once_hls {
		s_0 {Type IO LastRead 133 FirstWrite 0}
		s_1 {Type IO LastRead 136 FirstWrite 0}
		s_2 {Type IO LastRead 133 FirstWrite 0}
		s_3 {Type IO LastRead 133 FirstWrite 0}
		s_4 {Type IO LastRead 133 FirstWrite 0}
		in_r {Type I LastRead 31 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}}
	keccak_absorb_once_hls_Pipeline_init_state {
		s_4 {Type O LastRead -1 FirstWrite 0}
		s_3 {Type O LastRead -1 FirstWrite 0}
		s_2 {Type O LastRead -1 FirstWrite 0}
		s_1 {Type O LastRead -1 FirstWrite 0}
		s_0 {Type O LastRead -1 FirstWrite 0}}
	keccak_absorb_once_hls_Pipeline_absorb_remaining {
		sub_ln262 {Type I LastRead 0 FirstWrite -1}
		pos_0_lcssa_sel {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 31 FirstWrite -1}
		s_0 {Type IO LastRead 33 FirstWrite 34}
		s_1 {Type IO LastRead 33 FirstWrite 34}
		s_2 {Type IO LastRead 33 FirstWrite 34}
		s_3 {Type IO LastRead 33 FirstWrite 34}
		s_4 {Type IO LastRead 33 FirstWrite 34}}
	keccak_absorb_once_hls_Pipeline_absorb_word_loop {
		s_4 {Type IO LastRead 0 FirstWrite 4}
		s_3 {Type IO LastRead 0 FirstWrite 4}
		s_2 {Type IO LastRead 0 FirstWrite 4}
		s_1 {Type IO LastRead 0 FirstWrite 4}
		s_0 {Type IO LastRead 0 FirstWrite 4}
		empty {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 4 FirstWrite -1}}
	KeccakF1600_StatePermute_HLS {
		state_0 {Type IO LastRead 3 FirstWrite 5}
		state_1 {Type IO LastRead 3 FirstWrite 5}
		state_2 {Type IO LastRead 3 FirstWrite 5}
		state_3 {Type IO LastRead 3 FirstWrite 5}
		state_4 {Type IO LastRead 3 FirstWrite 5}}
	KeccakF1600_StatePermute_HLS_Pipeline_state_permute {
		Aba {Type I LastRead 0 FirstWrite -1}
		Abe {Type I LastRead 0 FirstWrite -1}
		Abi {Type I LastRead 0 FirstWrite -1}
		Abo {Type I LastRead 0 FirstWrite -1}
		Abu {Type I LastRead 0 FirstWrite -1}
		Aga {Type I LastRead 0 FirstWrite -1}
		Age {Type I LastRead 0 FirstWrite -1}
		Agi {Type I LastRead 0 FirstWrite -1}
		Ago {Type I LastRead 0 FirstWrite -1}
		Agu {Type I LastRead 0 FirstWrite -1}
		Aka {Type I LastRead 0 FirstWrite -1}
		Ake {Type I LastRead 0 FirstWrite -1}
		Aki {Type I LastRead 0 FirstWrite -1}
		Ako {Type I LastRead 0 FirstWrite -1}
		Aku {Type I LastRead 0 FirstWrite -1}
		Ama {Type I LastRead 0 FirstWrite -1}
		Ame {Type I LastRead 0 FirstWrite -1}
		Ami {Type I LastRead 0 FirstWrite -1}
		Amo {Type I LastRead 0 FirstWrite -1}
		Amu {Type I LastRead 0 FirstWrite -1}
		Asa {Type I LastRead 0 FirstWrite -1}
		Ase {Type I LastRead 0 FirstWrite -1}
		Asi {Type I LastRead 0 FirstWrite -1}
		Aso {Type I LastRead 0 FirstWrite -1}
		Asu {Type I LastRead 0 FirstWrite -1}
		Aba_1_out {Type O LastRead -1 FirstWrite 1}
		Abe_1_out {Type O LastRead -1 FirstWrite 1}
		Abi_1_out {Type O LastRead -1 FirstWrite 1}
		Abo_1_out {Type O LastRead -1 FirstWrite 1}
		Abu_1_out {Type O LastRead -1 FirstWrite 1}
		Aga_1_out {Type O LastRead -1 FirstWrite 1}
		Age_1_out {Type O LastRead -1 FirstWrite 1}
		Agi_1_out {Type O LastRead -1 FirstWrite 1}
		Ago_1_out {Type O LastRead -1 FirstWrite 1}
		Agu_1_out {Type O LastRead -1 FirstWrite 1}
		Aka_1_out {Type O LastRead -1 FirstWrite 1}
		Ake_1_out {Type O LastRead -1 FirstWrite 1}
		Aki_1_out {Type O LastRead -1 FirstWrite 1}
		Ako_1_out {Type O LastRead -1 FirstWrite 1}
		Aku_1_out {Type O LastRead -1 FirstWrite 1}
		Ama_1_out {Type O LastRead -1 FirstWrite 1}
		Ame_1_out {Type O LastRead -1 FirstWrite 1}
		Ami_1_out {Type O LastRead -1 FirstWrite 1}
		Amo_1_out {Type O LastRead -1 FirstWrite 1}
		Amu_1_out {Type O LastRead -1 FirstWrite 1}
		Asa_1_out {Type O LastRead -1 FirstWrite 1}
		Ase_1_out {Type O LastRead -1 FirstWrite 1}
		Asi_1_out {Type O LastRead -1 FirstWrite 1}
		Aso_1_out {Type O LastRead -1 FirstWrite 1}
		Asu_1_out {Type O LastRead -1 FirstWrite 1}}
	KeccakF1600_StatePermute_HLS {
		state_0 {Type IO LastRead 3 FirstWrite 5}
		state_1 {Type IO LastRead 3 FirstWrite 5}
		state_2 {Type IO LastRead 3 FirstWrite 5}
		state_3 {Type IO LastRead 3 FirstWrite 5}
		state_4 {Type IO LastRead 3 FirstWrite 5}}
	KeccakF1600_StatePermute_HLS_Pipeline_state_permute {
		Aba {Type I LastRead 0 FirstWrite -1}
		Abe {Type I LastRead 0 FirstWrite -1}
		Abi {Type I LastRead 0 FirstWrite -1}
		Abo {Type I LastRead 0 FirstWrite -1}
		Abu {Type I LastRead 0 FirstWrite -1}
		Aga {Type I LastRead 0 FirstWrite -1}
		Age {Type I LastRead 0 FirstWrite -1}
		Agi {Type I LastRead 0 FirstWrite -1}
		Ago {Type I LastRead 0 FirstWrite -1}
		Agu {Type I LastRead 0 FirstWrite -1}
		Aka {Type I LastRead 0 FirstWrite -1}
		Ake {Type I LastRead 0 FirstWrite -1}
		Aki {Type I LastRead 0 FirstWrite -1}
		Ako {Type I LastRead 0 FirstWrite -1}
		Aku {Type I LastRead 0 FirstWrite -1}
		Ama {Type I LastRead 0 FirstWrite -1}
		Ame {Type I LastRead 0 FirstWrite -1}
		Ami {Type I LastRead 0 FirstWrite -1}
		Amo {Type I LastRead 0 FirstWrite -1}
		Amu {Type I LastRead 0 FirstWrite -1}
		Asa {Type I LastRead 0 FirstWrite -1}
		Ase {Type I LastRead 0 FirstWrite -1}
		Asi {Type I LastRead 0 FirstWrite -1}
		Aso {Type I LastRead 0 FirstWrite -1}
		Asu {Type I LastRead 0 FirstWrite -1}
		Aba_1_out {Type O LastRead -1 FirstWrite 1}
		Abe_1_out {Type O LastRead -1 FirstWrite 1}
		Abi_1_out {Type O LastRead -1 FirstWrite 1}
		Abo_1_out {Type O LastRead -1 FirstWrite 1}
		Abu_1_out {Type O LastRead -1 FirstWrite 1}
		Aga_1_out {Type O LastRead -1 FirstWrite 1}
		Age_1_out {Type O LastRead -1 FirstWrite 1}
		Agi_1_out {Type O LastRead -1 FirstWrite 1}
		Ago_1_out {Type O LastRead -1 FirstWrite 1}
		Agu_1_out {Type O LastRead -1 FirstWrite 1}
		Aka_1_out {Type O LastRead -1 FirstWrite 1}
		Ake_1_out {Type O LastRead -1 FirstWrite 1}
		Aki_1_out {Type O LastRead -1 FirstWrite 1}
		Ako_1_out {Type O LastRead -1 FirstWrite 1}
		Aku_1_out {Type O LastRead -1 FirstWrite 1}
		Ama_1_out {Type O LastRead -1 FirstWrite 1}
		Ame_1_out {Type O LastRead -1 FirstWrite 1}
		Ami_1_out {Type O LastRead -1 FirstWrite 1}
		Amo_1_out {Type O LastRead -1 FirstWrite 1}
		Amu_1_out {Type O LastRead -1 FirstWrite 1}
		Asa_1_out {Type O LastRead -1 FirstWrite 1}
		Ase_1_out {Type O LastRead -1 FirstWrite 1}
		Asi_1_out {Type O LastRead -1 FirstWrite 1}
		Aso_1_out {Type O LastRead -1 FirstWrite 1}
		Asu_1_out {Type O LastRead -1 FirstWrite 1}}
	sha3_256_hls_Pipeline_extract_output {
		h_31 {Type O LastRead -1 FirstWrite 0}
		h_30 {Type O LastRead -1 FirstWrite 0}
		h_29 {Type O LastRead -1 FirstWrite 0}
		h_28 {Type O LastRead -1 FirstWrite 0}
		h_27 {Type O LastRead -1 FirstWrite 0}
		h_26 {Type O LastRead -1 FirstWrite 0}
		h_25 {Type O LastRead -1 FirstWrite 0}
		h_24 {Type O LastRead -1 FirstWrite 0}
		h_23 {Type O LastRead -1 FirstWrite 0}
		h_22 {Type O LastRead -1 FirstWrite 0}
		h_21 {Type O LastRead -1 FirstWrite 0}
		h_20 {Type O LastRead -1 FirstWrite 0}
		h_19 {Type O LastRead -1 FirstWrite 0}
		h_18 {Type O LastRead -1 FirstWrite 0}
		h_17 {Type O LastRead -1 FirstWrite 0}
		h_16 {Type O LastRead -1 FirstWrite 0}
		h_15 {Type O LastRead -1 FirstWrite 0}
		h_14 {Type O LastRead -1 FirstWrite 0}
		h_13 {Type O LastRead -1 FirstWrite 0}
		h_12 {Type O LastRead -1 FirstWrite 0}
		h_11 {Type O LastRead -1 FirstWrite 0}
		h_10 {Type O LastRead -1 FirstWrite 0}
		h_9 {Type O LastRead -1 FirstWrite 0}
		h_8 {Type O LastRead -1 FirstWrite 0}
		h_7 {Type O LastRead -1 FirstWrite 0}
		h_6 {Type O LastRead -1 FirstWrite 0}
		h_5 {Type O LastRead -1 FirstWrite 0}
		h_4 {Type O LastRead -1 FirstWrite 0}
		h_3 {Type O LastRead -1 FirstWrite 0}
		h_2 {Type O LastRead -1 FirstWrite 0}
		h_1 {Type O LastRead -1 FirstWrite 0}
		h_0 {Type O LastRead -1 FirstWrite 0}
		s_load {Type I LastRead 0 FirstWrite -1}
		s_1_load {Type I LastRead 0 FirstWrite -1}
		s_2_load {Type I LastRead 0 FirstWrite -1}
		s_3_load {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h_0 { ap_vld {  { h_0 out_data 1 8 }  { h_0_ap_vld out_vld 1 1 } } }
	h_1 { ap_vld {  { h_1 out_data 1 8 }  { h_1_ap_vld out_vld 1 1 } } }
	h_2 { ap_vld {  { h_2 out_data 1 8 }  { h_2_ap_vld out_vld 1 1 } } }
	h_3 { ap_vld {  { h_3 out_data 1 8 }  { h_3_ap_vld out_vld 1 1 } } }
	h_4 { ap_vld {  { h_4 out_data 1 8 }  { h_4_ap_vld out_vld 1 1 } } }
	h_5 { ap_vld {  { h_5 out_data 1 8 }  { h_5_ap_vld out_vld 1 1 } } }
	h_6 { ap_vld {  { h_6 out_data 1 8 }  { h_6_ap_vld out_vld 1 1 } } }
	h_7 { ap_vld {  { h_7 out_data 1 8 }  { h_7_ap_vld out_vld 1 1 } } }
	h_8 { ap_vld {  { h_8 out_data 1 8 }  { h_8_ap_vld out_vld 1 1 } } }
	h_9 { ap_vld {  { h_9 out_data 1 8 }  { h_9_ap_vld out_vld 1 1 } } }
	h_10 { ap_vld {  { h_10 out_data 1 8 }  { h_10_ap_vld out_vld 1 1 } } }
	h_11 { ap_vld {  { h_11 out_data 1 8 }  { h_11_ap_vld out_vld 1 1 } } }
	h_12 { ap_vld {  { h_12 out_data 1 8 }  { h_12_ap_vld out_vld 1 1 } } }
	h_13 { ap_vld {  { h_13 out_data 1 8 }  { h_13_ap_vld out_vld 1 1 } } }
	h_14 { ap_vld {  { h_14 out_data 1 8 }  { h_14_ap_vld out_vld 1 1 } } }
	h_15 { ap_vld {  { h_15 out_data 1 8 }  { h_15_ap_vld out_vld 1 1 } } }
	h_16 { ap_vld {  { h_16 out_data 1 8 }  { h_16_ap_vld out_vld 1 1 } } }
	h_17 { ap_vld {  { h_17 out_data 1 8 }  { h_17_ap_vld out_vld 1 1 } } }
	h_18 { ap_vld {  { h_18 out_data 1 8 }  { h_18_ap_vld out_vld 1 1 } } }
	h_19 { ap_vld {  { h_19 out_data 1 8 }  { h_19_ap_vld out_vld 1 1 } } }
	h_20 { ap_vld {  { h_20 out_data 1 8 }  { h_20_ap_vld out_vld 1 1 } } }
	h_21 { ap_vld {  { h_21 out_data 1 8 }  { h_21_ap_vld out_vld 1 1 } } }
	h_22 { ap_vld {  { h_22 out_data 1 8 }  { h_22_ap_vld out_vld 1 1 } } }
	h_23 { ap_vld {  { h_23 out_data 1 8 }  { h_23_ap_vld out_vld 1 1 } } }
	h_24 { ap_vld {  { h_24 out_data 1 8 }  { h_24_ap_vld out_vld 1 1 } } }
	h_25 { ap_vld {  { h_25 out_data 1 8 }  { h_25_ap_vld out_vld 1 1 } } }
	h_26 { ap_vld {  { h_26 out_data 1 8 }  { h_26_ap_vld out_vld 1 1 } } }
	h_27 { ap_vld {  { h_27 out_data 1 8 }  { h_27_ap_vld out_vld 1 1 } } }
	h_28 { ap_vld {  { h_28 out_data 1 8 }  { h_28_ap_vld out_vld 1 1 } } }
	h_29 { ap_vld {  { h_29 out_data 1 8 }  { h_29_ap_vld out_vld 1 1 } } }
	h_30 { ap_vld {  { h_30 out_data 1 8 }  { h_30_ap_vld out_vld 1 1 } } }
	h_31 { ap_vld {  { h_31 out_data 1 8 }  { h_31_ap_vld out_vld 1 1 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 11 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 8 }  { in_r_address1 MemPortADDR2 1 11 }  { in_r_ce1 MemPortCE2 1 1 }  { in_r_q1 MemPortDOUT2 0 8 } } }
	inlen { ap_none {  { inlen in_data 0 64 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
