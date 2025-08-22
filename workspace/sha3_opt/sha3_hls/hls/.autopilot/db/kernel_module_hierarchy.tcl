set ModuleHierarchy {[{
"Name" : "sha3_256_hw","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_keccak_absorb_once_1_fu_183","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_keccak_absorb_once_1_Pipeline_VITIS_LOOP_477_1_fu_238","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_477_1","ID" : "3","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "process_blocks_loop","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_KeccakF1600_StatePermute_fu_244","ID" : "5","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_KeccakF1600_StatePermute_Pipeline_state_permute_fu_390","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "state_permute","ID" : "7","Type" : "pipeline"},]},]},],
		"SubLoops" : [
		{"Name" : "copy_to_local_loop","ID" : "8","Type" : "no"},
		{"Name" : "absorb_from_local_loop","ID" : "9","Type" : "no"},]},
		{"Name" : "absorb_loop3","ID" : "10","Type" : "no"},]},
	{"Name" : "grp_KeccakF1600_StatePermute_fu_194","ID" : "11","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_KeccakF1600_StatePermute_Pipeline_state_permute_fu_390","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "state_permute","ID" : "13","Type" : "pipeline"},]},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_790_1_VITIS_LOOP_44_1","ID" : "14","Type" : "pipeline"},]
}]}