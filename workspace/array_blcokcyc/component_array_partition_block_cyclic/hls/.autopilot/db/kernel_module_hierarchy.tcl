set ModuleHierarchy {[{
"Name" : "matmul_partition","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_matmul_partition_Pipeline_readA_fu_259","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "readA","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_matmul_partition_Pipeline_readB_fu_284","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "readB","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "loop2_lreorder1_lreorder2","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_matmul_partition_Pipeline_writeC_fu_349","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "writeC","ID" : "8","Type" : "pipeline"},]},]
}]}