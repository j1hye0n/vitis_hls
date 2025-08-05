set moduleName sha3_256_hls_Pipeline_extract_output
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {sha3_256_hls_Pipeline_extract_output}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ h_31 int 8 regular {pointer 1}  }
	{ h_30 int 8 regular {pointer 1}  }
	{ h_29 int 8 regular {pointer 1}  }
	{ h_28 int 8 regular {pointer 1}  }
	{ h_27 int 8 regular {pointer 1}  }
	{ h_26 int 8 regular {pointer 1}  }
	{ h_25 int 8 regular {pointer 1}  }
	{ h_24 int 8 regular {pointer 1}  }
	{ h_23 int 8 regular {pointer 1}  }
	{ h_22 int 8 regular {pointer 1}  }
	{ h_21 int 8 regular {pointer 1}  }
	{ h_20 int 8 regular {pointer 1}  }
	{ h_19 int 8 regular {pointer 1}  }
	{ h_18 int 8 regular {pointer 1}  }
	{ h_17 int 8 regular {pointer 1}  }
	{ h_16 int 8 regular {pointer 1}  }
	{ h_15 int 8 regular {pointer 1}  }
	{ h_14 int 8 regular {pointer 1}  }
	{ h_13 int 8 regular {pointer 1}  }
	{ h_12 int 8 regular {pointer 1}  }
	{ h_11 int 8 regular {pointer 1}  }
	{ h_10 int 8 regular {pointer 1}  }
	{ h_9 int 8 regular {pointer 1}  }
	{ h_8 int 8 regular {pointer 1}  }
	{ h_7 int 8 regular {pointer 1}  }
	{ h_6 int 8 regular {pointer 1}  }
	{ h_5 int 8 regular {pointer 1}  }
	{ h_4 int 8 regular {pointer 1}  }
	{ h_3 int 8 regular {pointer 1}  }
	{ h_2 int 8 regular {pointer 1}  }
	{ h_1 int 8 regular {pointer 1}  }
	{ h_0 int 8 regular {pointer 1}  }
	{ s_load int 64 regular  }
	{ s_1_load int 64 regular  }
	{ s_2_load int 64 regular  }
	{ s_3_load int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "h_31", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_30", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_29", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_28", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_27", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_26", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_25", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_24", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_23", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_22", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_21", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_20", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_19", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_18", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_17", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_16", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_15", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_14", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_13", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_12", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_11", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_10", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_9", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_8", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_7", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_6", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_5", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_1_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_2_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_3_load", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ h_31 sc_out sc_lv 8 signal 0 } 
	{ h_31_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ h_30 sc_out sc_lv 8 signal 1 } 
	{ h_30_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ h_29 sc_out sc_lv 8 signal 2 } 
	{ h_29_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ h_28 sc_out sc_lv 8 signal 3 } 
	{ h_28_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ h_27 sc_out sc_lv 8 signal 4 } 
	{ h_27_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ h_26 sc_out sc_lv 8 signal 5 } 
	{ h_26_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ h_25 sc_out sc_lv 8 signal 6 } 
	{ h_25_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ h_24 sc_out sc_lv 8 signal 7 } 
	{ h_24_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ h_23 sc_out sc_lv 8 signal 8 } 
	{ h_23_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ h_22 sc_out sc_lv 8 signal 9 } 
	{ h_22_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ h_21 sc_out sc_lv 8 signal 10 } 
	{ h_21_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ h_20 sc_out sc_lv 8 signal 11 } 
	{ h_20_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ h_19 sc_out sc_lv 8 signal 12 } 
	{ h_19_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ h_18 sc_out sc_lv 8 signal 13 } 
	{ h_18_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ h_17 sc_out sc_lv 8 signal 14 } 
	{ h_17_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ h_16 sc_out sc_lv 8 signal 15 } 
	{ h_16_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ h_15 sc_out sc_lv 8 signal 16 } 
	{ h_15_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ h_14 sc_out sc_lv 8 signal 17 } 
	{ h_14_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ h_13 sc_out sc_lv 8 signal 18 } 
	{ h_13_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ h_12 sc_out sc_lv 8 signal 19 } 
	{ h_12_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ h_11 sc_out sc_lv 8 signal 20 } 
	{ h_11_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ h_10 sc_out sc_lv 8 signal 21 } 
	{ h_10_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ h_9 sc_out sc_lv 8 signal 22 } 
	{ h_9_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ h_8 sc_out sc_lv 8 signal 23 } 
	{ h_8_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ h_7 sc_out sc_lv 8 signal 24 } 
	{ h_7_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ h_6 sc_out sc_lv 8 signal 25 } 
	{ h_6_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ h_5 sc_out sc_lv 8 signal 26 } 
	{ h_5_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ h_4 sc_out sc_lv 8 signal 27 } 
	{ h_4_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ h_3 sc_out sc_lv 8 signal 28 } 
	{ h_3_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ h_2 sc_out sc_lv 8 signal 29 } 
	{ h_2_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ h_1 sc_out sc_lv 8 signal 30 } 
	{ h_1_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ h_0 sc_out sc_lv 8 signal 31 } 
	{ h_0_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ s_load sc_in sc_lv 64 signal 32 } 
	{ s_1_load sc_in sc_lv 64 signal 33 } 
	{ s_2_load sc_in sc_lv 64 signal 34 } 
	{ s_3_load sc_in sc_lv 64 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "h_31", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_31", "role": "default" }} , 
 	{ "name": "h_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_31", "role": "ap_vld" }} , 
 	{ "name": "h_30", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_30", "role": "default" }} , 
 	{ "name": "h_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_30", "role": "ap_vld" }} , 
 	{ "name": "h_29", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_29", "role": "default" }} , 
 	{ "name": "h_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_29", "role": "ap_vld" }} , 
 	{ "name": "h_28", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_28", "role": "default" }} , 
 	{ "name": "h_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_28", "role": "ap_vld" }} , 
 	{ "name": "h_27", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_27", "role": "default" }} , 
 	{ "name": "h_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_27", "role": "ap_vld" }} , 
 	{ "name": "h_26", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_26", "role": "default" }} , 
 	{ "name": "h_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_26", "role": "ap_vld" }} , 
 	{ "name": "h_25", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_25", "role": "default" }} , 
 	{ "name": "h_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_25", "role": "ap_vld" }} , 
 	{ "name": "h_24", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_24", "role": "default" }} , 
 	{ "name": "h_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_24", "role": "ap_vld" }} , 
 	{ "name": "h_23", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_23", "role": "default" }} , 
 	{ "name": "h_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_23", "role": "ap_vld" }} , 
 	{ "name": "h_22", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_22", "role": "default" }} , 
 	{ "name": "h_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_22", "role": "ap_vld" }} , 
 	{ "name": "h_21", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_21", "role": "default" }} , 
 	{ "name": "h_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_21", "role": "ap_vld" }} , 
 	{ "name": "h_20", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_20", "role": "default" }} , 
 	{ "name": "h_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_20", "role": "ap_vld" }} , 
 	{ "name": "h_19", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_19", "role": "default" }} , 
 	{ "name": "h_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_19", "role": "ap_vld" }} , 
 	{ "name": "h_18", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_18", "role": "default" }} , 
 	{ "name": "h_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_18", "role": "ap_vld" }} , 
 	{ "name": "h_17", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_17", "role": "default" }} , 
 	{ "name": "h_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_17", "role": "ap_vld" }} , 
 	{ "name": "h_16", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_16", "role": "default" }} , 
 	{ "name": "h_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_16", "role": "ap_vld" }} , 
 	{ "name": "h_15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_15", "role": "default" }} , 
 	{ "name": "h_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_15", "role": "ap_vld" }} , 
 	{ "name": "h_14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_14", "role": "default" }} , 
 	{ "name": "h_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_14", "role": "ap_vld" }} , 
 	{ "name": "h_13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_13", "role": "default" }} , 
 	{ "name": "h_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_13", "role": "ap_vld" }} , 
 	{ "name": "h_12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_12", "role": "default" }} , 
 	{ "name": "h_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_12", "role": "ap_vld" }} , 
 	{ "name": "h_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_11", "role": "default" }} , 
 	{ "name": "h_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_11", "role": "ap_vld" }} , 
 	{ "name": "h_10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_10", "role": "default" }} , 
 	{ "name": "h_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_10", "role": "ap_vld" }} , 
 	{ "name": "h_9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_9", "role": "default" }} , 
 	{ "name": "h_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_9", "role": "ap_vld" }} , 
 	{ "name": "h_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_8", "role": "default" }} , 
 	{ "name": "h_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_8", "role": "ap_vld" }} , 
 	{ "name": "h_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_7", "role": "default" }} , 
 	{ "name": "h_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_7", "role": "ap_vld" }} , 
 	{ "name": "h_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_6", "role": "default" }} , 
 	{ "name": "h_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_6", "role": "ap_vld" }} , 
 	{ "name": "h_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_5", "role": "default" }} , 
 	{ "name": "h_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_5", "role": "ap_vld" }} , 
 	{ "name": "h_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_4", "role": "default" }} , 
 	{ "name": "h_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_4", "role": "ap_vld" }} , 
 	{ "name": "h_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_3", "role": "default" }} , 
 	{ "name": "h_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_3", "role": "ap_vld" }} , 
 	{ "name": "h_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_2", "role": "default" }} , 
 	{ "name": "h_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_2", "role": "ap_vld" }} , 
 	{ "name": "h_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_1", "role": "default" }} , 
 	{ "name": "h_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_1", "role": "ap_vld" }} , 
 	{ "name": "h_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_0", "role": "default" }} , 
 	{ "name": "h_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "h_0", "role": "ap_vld" }} , 
 	{ "name": "s_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_load", "role": "default" }} , 
 	{ "name": "s_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1_load", "role": "default" }} , 
 	{ "name": "s_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2_load", "role": "default" }} , 
 	{ "name": "s_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U101", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h_31 { ap_vld {  { h_31 out_data 1 8 }  { h_31_ap_vld out_vld 1 1 } } }
	h_30 { ap_vld {  { h_30 out_data 1 8 }  { h_30_ap_vld out_vld 1 1 } } }
	h_29 { ap_vld {  { h_29 out_data 1 8 }  { h_29_ap_vld out_vld 1 1 } } }
	h_28 { ap_vld {  { h_28 out_data 1 8 }  { h_28_ap_vld out_vld 1 1 } } }
	h_27 { ap_vld {  { h_27 out_data 1 8 }  { h_27_ap_vld out_vld 1 1 } } }
	h_26 { ap_vld {  { h_26 out_data 1 8 }  { h_26_ap_vld out_vld 1 1 } } }
	h_25 { ap_vld {  { h_25 out_data 1 8 }  { h_25_ap_vld out_vld 1 1 } } }
	h_24 { ap_vld {  { h_24 out_data 1 8 }  { h_24_ap_vld out_vld 1 1 } } }
	h_23 { ap_vld {  { h_23 out_data 1 8 }  { h_23_ap_vld out_vld 1 1 } } }
	h_22 { ap_vld {  { h_22 out_data 1 8 }  { h_22_ap_vld out_vld 1 1 } } }
	h_21 { ap_vld {  { h_21 out_data 1 8 }  { h_21_ap_vld out_vld 1 1 } } }
	h_20 { ap_vld {  { h_20 out_data 1 8 }  { h_20_ap_vld out_vld 1 1 } } }
	h_19 { ap_vld {  { h_19 out_data 1 8 }  { h_19_ap_vld out_vld 1 1 } } }
	h_18 { ap_vld {  { h_18 out_data 1 8 }  { h_18_ap_vld out_vld 1 1 } } }
	h_17 { ap_vld {  { h_17 out_data 1 8 }  { h_17_ap_vld out_vld 1 1 } } }
	h_16 { ap_vld {  { h_16 out_data 1 8 }  { h_16_ap_vld out_vld 1 1 } } }
	h_15 { ap_vld {  { h_15 out_data 1 8 }  { h_15_ap_vld out_vld 1 1 } } }
	h_14 { ap_vld {  { h_14 out_data 1 8 }  { h_14_ap_vld out_vld 1 1 } } }
	h_13 { ap_vld {  { h_13 out_data 1 8 }  { h_13_ap_vld out_vld 1 1 } } }
	h_12 { ap_vld {  { h_12 out_data 1 8 }  { h_12_ap_vld out_vld 1 1 } } }
	h_11 { ap_vld {  { h_11 out_data 1 8 }  { h_11_ap_vld out_vld 1 1 } } }
	h_10 { ap_vld {  { h_10 out_data 1 8 }  { h_10_ap_vld out_vld 1 1 } } }
	h_9 { ap_vld {  { h_9 out_data 1 8 }  { h_9_ap_vld out_vld 1 1 } } }
	h_8 { ap_vld {  { h_8 out_data 1 8 }  { h_8_ap_vld out_vld 1 1 } } }
	h_7 { ap_vld {  { h_7 out_data 1 8 }  { h_7_ap_vld out_vld 1 1 } } }
	h_6 { ap_vld {  { h_6 out_data 1 8 }  { h_6_ap_vld out_vld 1 1 } } }
	h_5 { ap_vld {  { h_5 out_data 1 8 }  { h_5_ap_vld out_vld 1 1 } } }
	h_4 { ap_vld {  { h_4 out_data 1 8 }  { h_4_ap_vld out_vld 1 1 } } }
	h_3 { ap_vld {  { h_3 out_data 1 8 }  { h_3_ap_vld out_vld 1 1 } } }
	h_2 { ap_vld {  { h_2 out_data 1 8 }  { h_2_ap_vld out_vld 1 1 } } }
	h_1 { ap_vld {  { h_1 out_data 1 8 }  { h_1_ap_vld out_vld 1 1 } } }
	h_0 { ap_vld {  { h_0 out_data 1 8 }  { h_0_ap_vld out_vld 1 1 } } }
	s_load { ap_none {  { s_load in_data 0 64 } } }
	s_1_load { ap_none {  { s_1_load in_data 0 64 } } }
	s_2_load { ap_none {  { s_2_load in_data 0 64 } } }
	s_3_load { ap_none {  { s_3_load in_data 0 64 } } }
}
