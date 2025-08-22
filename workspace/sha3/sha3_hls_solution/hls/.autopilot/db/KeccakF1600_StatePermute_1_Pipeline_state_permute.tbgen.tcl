set moduleName KeccakF1600_StatePermute_1_Pipeline_state_permute
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
set cdfgNum 9
set C_modelName {KeccakF1600_StatePermute.1_Pipeline_state_permute}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ Asu int 64 regular  }
	{ Aba int 64 regular  }
	{ Abe int 64 regular  }
	{ Abi int 64 regular  }
	{ Abo int 64 regular  }
	{ Abu int 64 regular  }
	{ Aga int 64 regular  }
	{ Age int 64 regular  }
	{ Agi int 64 regular  }
	{ Ago int 64 regular  }
	{ Agu int 64 regular  }
	{ Aka int 64 regular  }
	{ Ake int 64 regular  }
	{ Aki int 64 regular  }
	{ Ako int 64 regular  }
	{ Aku int 64 regular  }
	{ Ama int 64 regular  }
	{ Ame int 64 regular  }
	{ Ami int 64 regular  }
	{ Amo int 64 regular  }
	{ Amu int 64 regular  }
	{ Asa int 64 regular  }
	{ Ase int 64 regular  }
	{ Asi int 64 regular  }
	{ Aso int 64 regular  }
	{ Asu_1_out int 64 regular {pointer 1}  }
	{ Aba_1_out int 64 regular {pointer 1}  }
	{ Abe_1_out int 64 regular {pointer 1}  }
	{ Abi_1_out int 64 regular {pointer 1}  }
	{ Abo_1_out int 64 regular {pointer 1}  }
	{ Abu_1_out int 64 regular {pointer 1}  }
	{ Aga_1_out int 64 regular {pointer 1}  }
	{ Age_1_out int 64 regular {pointer 1}  }
	{ Agi_1_out int 64 regular {pointer 1}  }
	{ Ago_1_out int 64 regular {pointer 1}  }
	{ Agu_1_out int 64 regular {pointer 1}  }
	{ Aka_1_out int 64 regular {pointer 1}  }
	{ Ake_1_out int 64 regular {pointer 1}  }
	{ Aki_1_out int 64 regular {pointer 1}  }
	{ Ako_1_out int 64 regular {pointer 1}  }
	{ Aku_1_out int 64 regular {pointer 1}  }
	{ Ama_1_out int 64 regular {pointer 1}  }
	{ Ame_1_out int 64 regular {pointer 1}  }
	{ Ami_1_out int 64 regular {pointer 1}  }
	{ Amo_1_out int 64 regular {pointer 1}  }
	{ Amu_1_out int 64 regular {pointer 1}  }
	{ Asa_1_out int 64 regular {pointer 1}  }
	{ Ase_1_out int 64 regular {pointer 1}  }
	{ Asi_1_out int 64 regular {pointer 1}  }
	{ Aso_1_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Asu", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Aba", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Abe", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Abi", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Abo", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Abu", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Aga", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Age", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Agi", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ago", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Agu", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Aka", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ake", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Aki", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ako", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Aku", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ama", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ame", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ami", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Amo", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Amu", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Asa", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ase", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Asi", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Aso", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Asu_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Aba_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Abe_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Abi_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Abo_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Abu_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Aga_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Age_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Agi_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ago_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Agu_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Aka_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ake_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Aki_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ako_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Aku_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ama_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ame_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ami_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Amo_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Amu_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Asa_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ase_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Asi_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Aso_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Asu sc_in sc_lv 64 signal 0 } 
	{ Aba sc_in sc_lv 64 signal 1 } 
	{ Abe sc_in sc_lv 64 signal 2 } 
	{ Abi sc_in sc_lv 64 signal 3 } 
	{ Abo sc_in sc_lv 64 signal 4 } 
	{ Abu sc_in sc_lv 64 signal 5 } 
	{ Aga sc_in sc_lv 64 signal 6 } 
	{ Age sc_in sc_lv 64 signal 7 } 
	{ Agi sc_in sc_lv 64 signal 8 } 
	{ Ago sc_in sc_lv 64 signal 9 } 
	{ Agu sc_in sc_lv 64 signal 10 } 
	{ Aka sc_in sc_lv 64 signal 11 } 
	{ Ake sc_in sc_lv 64 signal 12 } 
	{ Aki sc_in sc_lv 64 signal 13 } 
	{ Ako sc_in sc_lv 64 signal 14 } 
	{ Aku sc_in sc_lv 64 signal 15 } 
	{ Ama sc_in sc_lv 64 signal 16 } 
	{ Ame sc_in sc_lv 64 signal 17 } 
	{ Ami sc_in sc_lv 64 signal 18 } 
	{ Amo sc_in sc_lv 64 signal 19 } 
	{ Amu sc_in sc_lv 64 signal 20 } 
	{ Asa sc_in sc_lv 64 signal 21 } 
	{ Ase sc_in sc_lv 64 signal 22 } 
	{ Asi sc_in sc_lv 64 signal 23 } 
	{ Aso sc_in sc_lv 64 signal 24 } 
	{ Asu_1_out sc_out sc_lv 64 signal 25 } 
	{ Asu_1_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ Aba_1_out sc_out sc_lv 64 signal 26 } 
	{ Aba_1_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ Abe_1_out sc_out sc_lv 64 signal 27 } 
	{ Abe_1_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ Abi_1_out sc_out sc_lv 64 signal 28 } 
	{ Abi_1_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ Abo_1_out sc_out sc_lv 64 signal 29 } 
	{ Abo_1_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ Abu_1_out sc_out sc_lv 64 signal 30 } 
	{ Abu_1_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ Aga_1_out sc_out sc_lv 64 signal 31 } 
	{ Aga_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ Age_1_out sc_out sc_lv 64 signal 32 } 
	{ Age_1_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ Agi_1_out sc_out sc_lv 64 signal 33 } 
	{ Agi_1_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ Ago_1_out sc_out sc_lv 64 signal 34 } 
	{ Ago_1_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ Agu_1_out sc_out sc_lv 64 signal 35 } 
	{ Agu_1_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ Aka_1_out sc_out sc_lv 64 signal 36 } 
	{ Aka_1_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ Ake_1_out sc_out sc_lv 64 signal 37 } 
	{ Ake_1_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ Aki_1_out sc_out sc_lv 64 signal 38 } 
	{ Aki_1_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ Ako_1_out sc_out sc_lv 64 signal 39 } 
	{ Ako_1_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ Aku_1_out sc_out sc_lv 64 signal 40 } 
	{ Aku_1_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ Ama_1_out sc_out sc_lv 64 signal 41 } 
	{ Ama_1_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ Ame_1_out sc_out sc_lv 64 signal 42 } 
	{ Ame_1_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ Ami_1_out sc_out sc_lv 64 signal 43 } 
	{ Ami_1_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ Amo_1_out sc_out sc_lv 64 signal 44 } 
	{ Amo_1_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ Amu_1_out sc_out sc_lv 64 signal 45 } 
	{ Amu_1_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ Asa_1_out sc_out sc_lv 64 signal 46 } 
	{ Asa_1_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ Ase_1_out sc_out sc_lv 64 signal 47 } 
	{ Ase_1_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ Asi_1_out sc_out sc_lv 64 signal 48 } 
	{ Asi_1_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ Aso_1_out sc_out sc_lv 64 signal 49 } 
	{ Aso_1_out_ap_vld sc_out sc_logic 1 outvld 49 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Asu", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Asu", "role": "default" }} , 
 	{ "name": "Aba", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aba", "role": "default" }} , 
 	{ "name": "Abe", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abe", "role": "default" }} , 
 	{ "name": "Abi", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abi", "role": "default" }} , 
 	{ "name": "Abo", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abo", "role": "default" }} , 
 	{ "name": "Abu", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abu", "role": "default" }} , 
 	{ "name": "Aga", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aga", "role": "default" }} , 
 	{ "name": "Age", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Age", "role": "default" }} , 
 	{ "name": "Agi", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Agi", "role": "default" }} , 
 	{ "name": "Ago", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ago", "role": "default" }} , 
 	{ "name": "Agu", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Agu", "role": "default" }} , 
 	{ "name": "Aka", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aka", "role": "default" }} , 
 	{ "name": "Ake", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ake", "role": "default" }} , 
 	{ "name": "Aki", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aki", "role": "default" }} , 
 	{ "name": "Ako", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ako", "role": "default" }} , 
 	{ "name": "Aku", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aku", "role": "default" }} , 
 	{ "name": "Ama", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ama", "role": "default" }} , 
 	{ "name": "Ame", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ame", "role": "default" }} , 
 	{ "name": "Ami", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ami", "role": "default" }} , 
 	{ "name": "Amo", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Amo", "role": "default" }} , 
 	{ "name": "Amu", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Amu", "role": "default" }} , 
 	{ "name": "Asa", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Asa", "role": "default" }} , 
 	{ "name": "Ase", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ase", "role": "default" }} , 
 	{ "name": "Asi", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Asi", "role": "default" }} , 
 	{ "name": "Aso", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aso", "role": "default" }} , 
 	{ "name": "Asu_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Asu_1_out", "role": "default" }} , 
 	{ "name": "Asu_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Asu_1_out", "role": "ap_vld" }} , 
 	{ "name": "Aba_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aba_1_out", "role": "default" }} , 
 	{ "name": "Aba_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Aba_1_out", "role": "ap_vld" }} , 
 	{ "name": "Abe_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abe_1_out", "role": "default" }} , 
 	{ "name": "Abe_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Abe_1_out", "role": "ap_vld" }} , 
 	{ "name": "Abi_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abi_1_out", "role": "default" }} , 
 	{ "name": "Abi_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Abi_1_out", "role": "ap_vld" }} , 
 	{ "name": "Abo_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abo_1_out", "role": "default" }} , 
 	{ "name": "Abo_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Abo_1_out", "role": "ap_vld" }} , 
 	{ "name": "Abu_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Abu_1_out", "role": "default" }} , 
 	{ "name": "Abu_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Abu_1_out", "role": "ap_vld" }} , 
 	{ "name": "Aga_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aga_1_out", "role": "default" }} , 
 	{ "name": "Aga_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Aga_1_out", "role": "ap_vld" }} , 
 	{ "name": "Age_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Age_1_out", "role": "default" }} , 
 	{ "name": "Age_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Age_1_out", "role": "ap_vld" }} , 
 	{ "name": "Agi_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Agi_1_out", "role": "default" }} , 
 	{ "name": "Agi_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Agi_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ago_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ago_1_out", "role": "default" }} , 
 	{ "name": "Ago_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ago_1_out", "role": "ap_vld" }} , 
 	{ "name": "Agu_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Agu_1_out", "role": "default" }} , 
 	{ "name": "Agu_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Agu_1_out", "role": "ap_vld" }} , 
 	{ "name": "Aka_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aka_1_out", "role": "default" }} , 
 	{ "name": "Aka_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Aka_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ake_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ake_1_out", "role": "default" }} , 
 	{ "name": "Ake_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ake_1_out", "role": "ap_vld" }} , 
 	{ "name": "Aki_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aki_1_out", "role": "default" }} , 
 	{ "name": "Aki_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Aki_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ako_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ako_1_out", "role": "default" }} , 
 	{ "name": "Ako_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ako_1_out", "role": "ap_vld" }} , 
 	{ "name": "Aku_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aku_1_out", "role": "default" }} , 
 	{ "name": "Aku_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Aku_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ama_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ama_1_out", "role": "default" }} , 
 	{ "name": "Ama_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ama_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ame_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ame_1_out", "role": "default" }} , 
 	{ "name": "Ame_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ame_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ami_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ami_1_out", "role": "default" }} , 
 	{ "name": "Ami_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ami_1_out", "role": "ap_vld" }} , 
 	{ "name": "Amo_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Amo_1_out", "role": "default" }} , 
 	{ "name": "Amo_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Amo_1_out", "role": "ap_vld" }} , 
 	{ "name": "Amu_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Amu_1_out", "role": "default" }} , 
 	{ "name": "Amu_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Amu_1_out", "role": "ap_vld" }} , 
 	{ "name": "Asa_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Asa_1_out", "role": "default" }} , 
 	{ "name": "Asa_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Asa_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ase_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ase_1_out", "role": "default" }} , 
 	{ "name": "Ase_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ase_1_out", "role": "ap_vld" }} , 
 	{ "name": "Asi_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Asi_1_out", "role": "default" }} , 
 	{ "name": "Asi_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Asi_1_out", "role": "ap_vld" }} , 
 	{ "name": "Aso_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Aso_1_out", "role": "default" }} , 
 	{ "name": "Aso_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Aso_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeccakF1600_StatePermute_1_Pipeline_state_permute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Asu", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "Asu_1_out", "Type" : "Vld", "Direction" : "O"},
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
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "state_permute", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.KeccakF_RoundConstants_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeccakF1600_StatePermute_1_Pipeline_state_permute {
		Asu {Type I LastRead 0 FirstWrite -1}
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
		Asu_1_out {Type O LastRead -1 FirstWrite 1}
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
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "15", "Max" : "15"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Asu { ap_none {  { Asu in_data 0 64 } } }
	Aba { ap_none {  { Aba in_data 0 64 } } }
	Abe { ap_none {  { Abe in_data 0 64 } } }
	Abi { ap_none {  { Abi in_data 0 64 } } }
	Abo { ap_none {  { Abo in_data 0 64 } } }
	Abu { ap_none {  { Abu in_data 0 64 } } }
	Aga { ap_none {  { Aga in_data 0 64 } } }
	Age { ap_none {  { Age in_data 0 64 } } }
	Agi { ap_none {  { Agi in_data 0 64 } } }
	Ago { ap_none {  { Ago in_data 0 64 } } }
	Agu { ap_none {  { Agu in_data 0 64 } } }
	Aka { ap_none {  { Aka in_data 0 64 } } }
	Ake { ap_none {  { Ake in_data 0 64 } } }
	Aki { ap_none {  { Aki in_data 0 64 } } }
	Ako { ap_none {  { Ako in_data 0 64 } } }
	Aku { ap_none {  { Aku in_data 0 64 } } }
	Ama { ap_none {  { Ama in_data 0 64 } } }
	Ame { ap_none {  { Ame in_data 0 64 } } }
	Ami { ap_none {  { Ami in_data 0 64 } } }
	Amo { ap_none {  { Amo in_data 0 64 } } }
	Amu { ap_none {  { Amu in_data 0 64 } } }
	Asa { ap_none {  { Asa in_data 0 64 } } }
	Ase { ap_none {  { Ase in_data 0 64 } } }
	Asi { ap_none {  { Asi in_data 0 64 } } }
	Aso { ap_none {  { Aso in_data 0 64 } } }
	Asu_1_out { ap_vld {  { Asu_1_out out_data 1 64 }  { Asu_1_out_ap_vld out_vld 1 1 } } }
	Aba_1_out { ap_vld {  { Aba_1_out out_data 1 64 }  { Aba_1_out_ap_vld out_vld 1 1 } } }
	Abe_1_out { ap_vld {  { Abe_1_out out_data 1 64 }  { Abe_1_out_ap_vld out_vld 1 1 } } }
	Abi_1_out { ap_vld {  { Abi_1_out out_data 1 64 }  { Abi_1_out_ap_vld out_vld 1 1 } } }
	Abo_1_out { ap_vld {  { Abo_1_out out_data 1 64 }  { Abo_1_out_ap_vld out_vld 1 1 } } }
	Abu_1_out { ap_vld {  { Abu_1_out out_data 1 64 }  { Abu_1_out_ap_vld out_vld 1 1 } } }
	Aga_1_out { ap_vld {  { Aga_1_out out_data 1 64 }  { Aga_1_out_ap_vld out_vld 1 1 } } }
	Age_1_out { ap_vld {  { Age_1_out out_data 1 64 }  { Age_1_out_ap_vld out_vld 1 1 } } }
	Agi_1_out { ap_vld {  { Agi_1_out out_data 1 64 }  { Agi_1_out_ap_vld out_vld 1 1 } } }
	Ago_1_out { ap_vld {  { Ago_1_out out_data 1 64 }  { Ago_1_out_ap_vld out_vld 1 1 } } }
	Agu_1_out { ap_vld {  { Agu_1_out out_data 1 64 }  { Agu_1_out_ap_vld out_vld 1 1 } } }
	Aka_1_out { ap_vld {  { Aka_1_out out_data 1 64 }  { Aka_1_out_ap_vld out_vld 1 1 } } }
	Ake_1_out { ap_vld {  { Ake_1_out out_data 1 64 }  { Ake_1_out_ap_vld out_vld 1 1 } } }
	Aki_1_out { ap_vld {  { Aki_1_out out_data 1 64 }  { Aki_1_out_ap_vld out_vld 1 1 } } }
	Ako_1_out { ap_vld {  { Ako_1_out out_data 1 64 }  { Ako_1_out_ap_vld out_vld 1 1 } } }
	Aku_1_out { ap_vld {  { Aku_1_out out_data 1 64 }  { Aku_1_out_ap_vld out_vld 1 1 } } }
	Ama_1_out { ap_vld {  { Ama_1_out out_data 1 64 }  { Ama_1_out_ap_vld out_vld 1 1 } } }
	Ame_1_out { ap_vld {  { Ame_1_out out_data 1 64 }  { Ame_1_out_ap_vld out_vld 1 1 } } }
	Ami_1_out { ap_vld {  { Ami_1_out out_data 1 64 }  { Ami_1_out_ap_vld out_vld 1 1 } } }
	Amo_1_out { ap_vld {  { Amo_1_out out_data 1 64 }  { Amo_1_out_ap_vld out_vld 1 1 } } }
	Amu_1_out { ap_vld {  { Amu_1_out out_data 1 64 }  { Amu_1_out_ap_vld out_vld 1 1 } } }
	Asa_1_out { ap_vld {  { Asa_1_out out_data 1 64 }  { Asa_1_out_ap_vld out_vld 1 1 } } }
	Ase_1_out { ap_vld {  { Ase_1_out out_data 1 64 }  { Ase_1_out_ap_vld out_vld 1 1 } } }
	Asi_1_out { ap_vld {  { Asi_1_out out_data 1 64 }  { Asi_1_out_ap_vld out_vld 1 1 } } }
	Aso_1_out { ap_vld {  { Aso_1_out out_data 1 64 }  { Aso_1_out_ap_vld out_vld 1 1 } } }
}
