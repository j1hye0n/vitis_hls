set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {matmul_partition} -view {{matmul_partition_dataflow_ana.wcfg}} -tclbatch {matmul_partition.tcl} -protoinst {matmul_partition.protoinst}
