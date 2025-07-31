set ModuleHierarchy {[{
"Name" : "sha3_256_hw","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_sha3_256_hw_Pipeline_VITIS_LOOP_472_1_fu_228","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_472_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_sha3_256_hw_Pipeline_VITIS_LOOP_761_1_VITIS_LOOP_43_1_fu_241","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_761_1_VITIS_LOOP_43_1","ID" : "4","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_479_2","ID" : "5","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_KeccakF1600_StatePermute_fu_234","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "state_permute","ID" : "7","Type" : "no"},]},],
	"SubLoops" : [
	{"Name" : "absorb_loop2_VITIS_LOOP_26_1","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "absorb_loop3","ID" : "9","Type" : "no"},]
}]}