set moduleName KeccakF1600_StatePermute_HLS
set isTopModule 0
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
set C_modelName {KeccakF1600_StatePermute_HLS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict state_0 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict state_1 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict state_2 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict state_3 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict state_4 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ state_0 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ state_1 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ state_2 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ state_3 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ state_4 int 64 regular {array 5 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "state_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "state_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "state_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "state_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "state_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_0_address0 sc_out sc_lv 3 signal 0 } 
	{ state_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ state_0_we0 sc_out sc_logic 1 signal 0 } 
	{ state_0_d0 sc_out sc_lv 64 signal 0 } 
	{ state_0_q0 sc_in sc_lv 64 signal 0 } 
	{ state_0_address1 sc_out sc_lv 3 signal 0 } 
	{ state_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ state_0_we1 sc_out sc_logic 1 signal 0 } 
	{ state_0_d1 sc_out sc_lv 64 signal 0 } 
	{ state_0_q1 sc_in sc_lv 64 signal 0 } 
	{ state_1_address0 sc_out sc_lv 3 signal 1 } 
	{ state_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ state_1_we0 sc_out sc_logic 1 signal 1 } 
	{ state_1_d0 sc_out sc_lv 64 signal 1 } 
	{ state_1_q0 sc_in sc_lv 64 signal 1 } 
	{ state_1_address1 sc_out sc_lv 3 signal 1 } 
	{ state_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ state_1_we1 sc_out sc_logic 1 signal 1 } 
	{ state_1_d1 sc_out sc_lv 64 signal 1 } 
	{ state_1_q1 sc_in sc_lv 64 signal 1 } 
	{ state_2_address0 sc_out sc_lv 3 signal 2 } 
	{ state_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ state_2_we0 sc_out sc_logic 1 signal 2 } 
	{ state_2_d0 sc_out sc_lv 64 signal 2 } 
	{ state_2_q0 sc_in sc_lv 64 signal 2 } 
	{ state_2_address1 sc_out sc_lv 3 signal 2 } 
	{ state_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ state_2_we1 sc_out sc_logic 1 signal 2 } 
	{ state_2_d1 sc_out sc_lv 64 signal 2 } 
	{ state_2_q1 sc_in sc_lv 64 signal 2 } 
	{ state_3_address0 sc_out sc_lv 3 signal 3 } 
	{ state_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ state_3_we0 sc_out sc_logic 1 signal 3 } 
	{ state_3_d0 sc_out sc_lv 64 signal 3 } 
	{ state_3_q0 sc_in sc_lv 64 signal 3 } 
	{ state_3_address1 sc_out sc_lv 3 signal 3 } 
	{ state_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ state_3_we1 sc_out sc_logic 1 signal 3 } 
	{ state_3_d1 sc_out sc_lv 64 signal 3 } 
	{ state_3_q1 sc_in sc_lv 64 signal 3 } 
	{ state_4_address0 sc_out sc_lv 3 signal 4 } 
	{ state_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ state_4_we0 sc_out sc_logic 1 signal 4 } 
	{ state_4_d0 sc_out sc_lv 64 signal 4 } 
	{ state_4_q0 sc_in sc_lv 64 signal 4 } 
	{ state_4_address1 sc_out sc_lv 3 signal 4 } 
	{ state_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ state_4_we1 sc_out sc_logic 1 signal 4 } 
	{ state_4_d1 sc_out sc_lv 64 signal 4 } 
	{ state_4_q1 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_0", "role": "address0" }} , 
 	{ "name": "state_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_0", "role": "ce0" }} , 
 	{ "name": "state_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_0", "role": "we0" }} , 
 	{ "name": "state_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_0", "role": "d0" }} , 
 	{ "name": "state_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_0", "role": "q0" }} , 
 	{ "name": "state_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_0", "role": "address1" }} , 
 	{ "name": "state_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_0", "role": "ce1" }} , 
 	{ "name": "state_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_0", "role": "we1" }} , 
 	{ "name": "state_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_0", "role": "d1" }} , 
 	{ "name": "state_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_0", "role": "q1" }} , 
 	{ "name": "state_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_1", "role": "address0" }} , 
 	{ "name": "state_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_1", "role": "ce0" }} , 
 	{ "name": "state_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_1", "role": "we0" }} , 
 	{ "name": "state_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_1", "role": "d0" }} , 
 	{ "name": "state_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_1", "role": "q0" }} , 
 	{ "name": "state_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_1", "role": "address1" }} , 
 	{ "name": "state_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_1", "role": "ce1" }} , 
 	{ "name": "state_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_1", "role": "we1" }} , 
 	{ "name": "state_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_1", "role": "d1" }} , 
 	{ "name": "state_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_1", "role": "q1" }} , 
 	{ "name": "state_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_2", "role": "address0" }} , 
 	{ "name": "state_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_2", "role": "ce0" }} , 
 	{ "name": "state_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_2", "role": "we0" }} , 
 	{ "name": "state_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_2", "role": "d0" }} , 
 	{ "name": "state_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_2", "role": "q0" }} , 
 	{ "name": "state_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_2", "role": "address1" }} , 
 	{ "name": "state_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_2", "role": "ce1" }} , 
 	{ "name": "state_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_2", "role": "we1" }} , 
 	{ "name": "state_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_2", "role": "d1" }} , 
 	{ "name": "state_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_2", "role": "q1" }} , 
 	{ "name": "state_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_3", "role": "address0" }} , 
 	{ "name": "state_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_3", "role": "ce0" }} , 
 	{ "name": "state_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_3", "role": "we0" }} , 
 	{ "name": "state_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_3", "role": "d0" }} , 
 	{ "name": "state_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_3", "role": "q0" }} , 
 	{ "name": "state_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_3", "role": "address1" }} , 
 	{ "name": "state_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_3", "role": "ce1" }} , 
 	{ "name": "state_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_3", "role": "we1" }} , 
 	{ "name": "state_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_3", "role": "d1" }} , 
 	{ "name": "state_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_3", "role": "q1" }} , 
 	{ "name": "state_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_4", "role": "address0" }} , 
 	{ "name": "state_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_4", "role": "ce0" }} , 
 	{ "name": "state_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_4", "role": "we0" }} , 
 	{ "name": "state_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_4", "role": "d0" }} , 
 	{ "name": "state_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_4", "role": "q0" }} , 
 	{ "name": "state_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "state_4", "role": "address1" }} , 
 	{ "name": "state_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_4", "role": "ce1" }} , 
 	{ "name": "state_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state_4", "role": "we1" }} , 
 	{ "name": "state_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_4", "role": "d1" }} , 
 	{ "name": "state_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "state_4", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392", "Parent" : "0", "Child" : ["2", "3", "4"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U15", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U16", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
		Asu_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_0 { ap_memory {  { state_0_address0 mem_address 1 3 }  { state_0_ce0 mem_ce 1 1 }  { state_0_we0 mem_we 1 1 }  { state_0_d0 mem_din 1 64 }  { state_0_q0 mem_dout 0 64 }  { state_0_address1 MemPortADDR2 1 3 }  { state_0_ce1 MemPortCE2 1 1 }  { state_0_we1 MemPortWE2 1 1 }  { state_0_d1 MemPortDIN2 1 64 }  { state_0_q1 MemPortDOUT2 0 64 } } }
	state_1 { ap_memory {  { state_1_address0 mem_address 1 3 }  { state_1_ce0 mem_ce 1 1 }  { state_1_we0 mem_we 1 1 }  { state_1_d0 mem_din 1 64 }  { state_1_q0 mem_dout 0 64 }  { state_1_address1 MemPortADDR2 1 3 }  { state_1_ce1 MemPortCE2 1 1 }  { state_1_we1 MemPortWE2 1 1 }  { state_1_d1 MemPortDIN2 1 64 }  { state_1_q1 MemPortDOUT2 0 64 } } }
	state_2 { ap_memory {  { state_2_address0 mem_address 1 3 }  { state_2_ce0 mem_ce 1 1 }  { state_2_we0 mem_we 1 1 }  { state_2_d0 mem_din 1 64 }  { state_2_q0 mem_dout 0 64 }  { state_2_address1 MemPortADDR2 1 3 }  { state_2_ce1 MemPortCE2 1 1 }  { state_2_we1 MemPortWE2 1 1 }  { state_2_d1 MemPortDIN2 1 64 }  { state_2_q1 MemPortDOUT2 0 64 } } }
	state_3 { ap_memory {  { state_3_address0 mem_address 1 3 }  { state_3_ce0 mem_ce 1 1 }  { state_3_we0 mem_we 1 1 }  { state_3_d0 mem_din 1 64 }  { state_3_q0 mem_dout 0 64 }  { state_3_address1 MemPortADDR2 1 3 }  { state_3_ce1 MemPortCE2 1 1 }  { state_3_we1 MemPortWE2 1 1 }  { state_3_d1 MemPortDIN2 1 64 }  { state_3_q1 MemPortDOUT2 0 64 } } }
	state_4 { ap_memory {  { state_4_address0 mem_address 1 3 }  { state_4_ce0 mem_ce 1 1 }  { state_4_we0 mem_we 1 1 }  { state_4_d0 mem_din 1 64 }  { state_4_q0 mem_dout 0 64 }  { state_4_address1 MemPortADDR2 1 3 }  { state_4_ce1 MemPortCE2 1 1 }  { state_4_we1 MemPortWE2 1 1 }  { state_4_d1 MemPortDIN2 1 64 }  { state_4_q1 MemPortDOUT2 0 64 } } }
}
