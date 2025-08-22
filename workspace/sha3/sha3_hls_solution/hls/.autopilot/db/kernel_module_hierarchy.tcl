set ModuleHierarchy {[{
"Name" : "sha3_256_hw","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_pqcrystals_kyber_fips202_ref_sha3_256_1_fu_74","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_pqcrystals_kyber_fips202_ref_sha3_256_1_Pipeline_VITIS_LOOP_476_1_fu_258","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_476_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_KeccakF1600_StatePermute_1_fu_271","ID" : "4","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_KeccakF1600_StatePermute_1_Pipeline_state_permute_fu_390","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "state_permute","ID" : "6","Type" : "pipeline"},]},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_480_2","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_KeccakF1600_StatePermute_fu_264","ID" : "8","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_KeccakF1600_StatePermute_Pipeline_state_permute_fu_390","ID" : "9","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "state_permute","ID" : "10","Type" : "pipeline"},]},]},]},
		{"Name" : "absorb_loop3","ID" : "11","Type" : "no"},
		{"Name" : "VITIS_LOOP_764_1_VITIS_LOOP_44_1","ID" : "12","Type" : "pipeline"},]},]
}]}