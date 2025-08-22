set SynModuleInfo {
  {SRCNAME pqcrystals_kyber_fips202_ref_sha3_256.1_Pipeline_VITIS_LOOP_476_1 MODELNAME pqcrystals_kyber_fips202_ref_sha3_256_1_Pipeline_VITIS_LOOP_476_1 RTLNAME sha3_256_hw_pqcrystals_kyber_fips202_ref_sha3_256_1_Pipeline_VITIS_LOOP_476_1
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
  {SRCNAME KeccakF1600_StatePermute.1_Pipeline_state_permute MODELNAME KeccakF1600_StatePermute_1_Pipeline_state_permute RTLNAME sha3_256_hw_KeccakF1600_StatePermute_1_Pipeline_state_permute}
  {SRCNAME KeccakF1600_StatePermute.1 MODELNAME KeccakF1600_StatePermute_1 RTLNAME sha3_256_hw_KeccakF1600_StatePermute_1}
  {SRCNAME pqcrystals_kyber_fips202_ref_sha3_256.1 MODELNAME pqcrystals_kyber_fips202_ref_sha3_256_1 RTLNAME sha3_256_hw_pqcrystals_kyber_fips202_ref_sha3_256_1
    SUBMODULES {
      {MODELNAME sha3_256_hw_urem_64s_9ns_33_68_seq_1 RTLNAME sha3_256_hw_urem_64s_9ns_33_68_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hw_pqcrystals_kyber_fips202_ref_sha3_256_1_s_RAM_AUTO_1R1W RTLNAME sha3_256_hw_pqcrystals_kyber_fips202_ref_sha3_256_1_s_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sha3_256_hw MODELNAME sha3_256_hw RTLNAME sha3_256_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME sha3_256_hw_gmem_m_axi RTLNAME sha3_256_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sha3_256_hw_control_s_axi RTLNAME sha3_256_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sha3_256_hw_control_r_s_axi RTLNAME sha3_256_hw_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
