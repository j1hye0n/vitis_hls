
/tools/xilinx/Vivado/2024.2/bin/xelab xil_defaultlib.apatb_matmul_partition_top glbl -Oenable_linking_all_libraries  -prj matmul_partition.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_24 -L floating_point_v7_1_19 --lib "ieee_proposed=./ieee_proposed" -s matmul_partition -debug all
/tools/xilinx/Vivado/2024.2/bin/xsim --noieeewarnings matmul_partition -tclbatch matmul_partition.tcl -gui -view matmul_partition_dataflow_ana.wcfg -protoinst matmul_partition.protoinst

