set ModuleHierarchy {[{
"Name" : "sha3_256_hls","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_keccak_absorb_once_hls_fu_180","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "init_state","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "absorb_remaining","ID" : "5","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "absorb_blocks","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "absorb_word_loop","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_KeccakF1600_StatePermute_HLS_fu_233","ID" : "9","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "state_permute","ID" : "11","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_KeccakF1600_StatePermute_HLS_fu_198","ID" : "12","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "state_permute","ID" : "14","Type" : "pipeline"},]},]},
	{"Name" : "grp_sha3_256_hls_Pipeline_extract_output_fu_207","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "extract_output","ID" : "16","Type" : "pipeline"},]},]
}]}