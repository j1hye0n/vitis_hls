set SynModuleInfo {
  {SRCNAME matmul_partition_Pipeline_readA MODELNAME matmul_partition_Pipeline_readA RTLNAME matmul_partition_matmul_partition_Pipeline_readA
    SUBMODULES {
      {MODELNAME matmul_partition_flow_control_loop_pipe_sequential_init RTLNAME matmul_partition_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matmul_partition_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matmul_partition_Pipeline_readB MODELNAME matmul_partition_Pipeline_readB RTLNAME matmul_partition_matmul_partition_Pipeline_readB}
  {SRCNAME matmul_partition_Pipeline_loop2_lreorder1_lreorder2 MODELNAME matmul_partition_Pipeline_loop2_lreorder1_lreorder2 RTLNAME matmul_partition_matmul_partition_Pipeline_loop2_lreorder1_lreorder2
    SUBMODULES {
      {MODELNAME matmul_partition_mul_32s_32s_32_2_1 RTLNAME matmul_partition_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matmul_partition_sparsemux_9_2_32_1_1 RTLNAME matmul_partition_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_7_2_32_1_1 RTLNAME matmul_partition_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME matmul_partition_sparsemux_33_4_32_1_1 RTLNAME matmul_partition_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_31_4_32_1_1 RTLNAME matmul_partition_sparsemux_31_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_29_4_32_1_1 RTLNAME matmul_partition_sparsemux_29_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_27_4_32_1_1 RTLNAME matmul_partition_sparsemux_27_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_25_4_32_1_1 RTLNAME matmul_partition_sparsemux_25_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_23_4_32_1_1 RTLNAME matmul_partition_sparsemux_23_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_21_4_32_1_1 RTLNAME matmul_partition_sparsemux_21_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_19_4_32_1_1 RTLNAME matmul_partition_sparsemux_19_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_17_3_32_1_1 RTLNAME matmul_partition_sparsemux_17_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_15_3_32_1_1 RTLNAME matmul_partition_sparsemux_15_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_13_3_32_1_1 RTLNAME matmul_partition_sparsemux_13_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME matmul_partition_sparsemux_11_3_32_1_1 RTLNAME matmul_partition_sparsemux_11_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME matmul_partition_Pipeline_writeC MODELNAME matmul_partition_Pipeline_writeC RTLNAME matmul_partition_matmul_partition_Pipeline_writeC}
  {SRCNAME matmul_partition MODELNAME matmul_partition RTLNAME matmul_partition IS_TOP 1
    SUBMODULES {
      {MODELNAME matmul_partition_mul_31ns_32ns_63_2_1 RTLNAME matmul_partition_mul_31ns_32ns_63_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME matmul_partition_mul_31ns_63ns_94_5_1 RTLNAME matmul_partition_mul_31ns_63ns_94_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME matmul_partition_A_RAM_AUTO_1R1W RTLNAME matmul_partition_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmul_partition_C_RAM_AUTO_1R1W RTLNAME matmul_partition_C_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmul_partition_gmem_m_axi RTLNAME matmul_partition_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matmul_partition_control_s_axi RTLNAME matmul_partition_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
