set SynModuleInfo {
  {SRCNAME keccak_absorb_once.1_Pipeline_VITIS_LOOP_477_1 MODELNAME keccak_absorb_once_1_Pipeline_VITIS_LOOP_477_1 RTLNAME sha3_256_hw_keccak_absorb_once_1_Pipeline_VITIS_LOOP_477_1
    SUBMODULES {
      {MODELNAME sha3_256_hw_flow_control_loop_pipe_sequential_init RTLNAME sha3_256_hw_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sha3_256_hw_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME KeccakF1600_StatePermute_Pipeline_state_permute MODELNAME KeccakF1600_StatePermute_Pipeline_state_permute RTLNAME sha3_256_hw_KeccakF1600_StatePermute_Pipeline_state_permute
    SUBMODULES {
      {MODELNAME sha3_256_hw_KeccakF1600_StatePermute_Pipeline_state_permute_KeccakF_RoundConstants_ROM_AUbkb RTLNAME sha3_256_hw_KeccakF1600_StatePermute_Pipeline_state_permute_KeccakF_RoundConstants_ROM_AUbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME KeccakF1600_StatePermute MODELNAME KeccakF1600_StatePermute RTLNAME sha3_256_hw_KeccakF1600_StatePermute}
  {SRCNAME keccak_absorb_once.1 MODELNAME keccak_absorb_once_1 RTLNAME sha3_256_hw_keccak_absorb_once_1
    SUBMODULES {
      {MODELNAME sha3_256_hw_urem_64s_9ns_33_68_seq_1 RTLNAME sha3_256_hw_urem_64s_9ns_33_68_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hw_keccak_absorb_once_1_local_block_RAM_AUTO_1R1W RTLNAME sha3_256_hw_keccak_absorb_once_1_local_block_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sha3_256_hw MODELNAME sha3_256_hw RTLNAME sha3_256_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME sha3_256_hw_s_RAM_AUTO_1R1W RTLNAME sha3_256_hw_s_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hw_gmem_m_axi RTLNAME sha3_256_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sha3_256_hw_control_s_axi RTLNAME sha3_256_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sha3_256_hw_control_r_s_axi RTLNAME sha3_256_hw_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
