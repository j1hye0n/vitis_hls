set SynModuleInfo {
  {SRCNAME sha3_256_hw_Pipeline_VITIS_LOOP_472_1 MODELNAME sha3_256_hw_Pipeline_VITIS_LOOP_472_1 RTLNAME sha3_256_hw_sha3_256_hw_Pipeline_VITIS_LOOP_472_1
    SUBMODULES {
      {MODELNAME sha3_256_hw_flow_control_loop_pipe_sequential_init RTLNAME sha3_256_hw_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sha3_256_hw_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME KeccakF1600_StatePermute MODELNAME KeccakF1600_StatePermute RTLNAME sha3_256_hw_KeccakF1600_StatePermute
    SUBMODULES {
      {MODELNAME sha3_256_hw_KeccakF1600_StatePermute_KeccakF_RoundConstants_ROM_AUTO_1R RTLNAME sha3_256_hw_KeccakF1600_StatePermute_KeccakF_RoundConstants_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sha3_256_hw_Pipeline_VITIS_LOOP_759_1_VITIS_LOOP_43_1 MODELNAME sha3_256_hw_Pipeline_VITIS_LOOP_759_1_VITIS_LOOP_43_1 RTLNAME sha3_256_hw_sha3_256_hw_Pipeline_VITIS_LOOP_759_1_VITIS_LOOP_43_1}
  {SRCNAME sha3_256_hw MODELNAME sha3_256_hw RTLNAME sha3_256_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME sha3_256_hw_mul_32ns_34ns_65_2_1 RTLNAME sha3_256_hw_mul_32ns_34ns_65_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hw_urem_32ns_9ns_32_36_seq_1 RTLNAME sha3_256_hw_urem_32ns_9ns_32_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hw_urem_32ns_9ns_8_36_seq_1 RTLNAME sha3_256_hw_urem_32ns_9ns_8_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hw_s_RAM_AUTO_1R1W RTLNAME sha3_256_hw_s_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hw_gmem_m_axi RTLNAME sha3_256_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sha3_256_hw_control_s_axi RTLNAME sha3_256_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sha3_256_hw_control_r_s_axi RTLNAME sha3_256_hw_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
