set SynModuleInfo {
  {SRCNAME keccak_absorb_once_hls_Pipeline_init_state MODELNAME keccak_absorb_once_hls_Pipeline_init_state RTLNAME sha3_256_hls_keccak_absorb_once_hls_Pipeline_init_state
    SUBMODULES {
      {MODELNAME sha3_256_hls_flow_control_loop_pipe_sequential_init RTLNAME sha3_256_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sha3_256_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME keccak_absorb_once_hls_Pipeline_absorb_word_loop MODELNAME keccak_absorb_once_hls_Pipeline_absorb_word_loop RTLNAME sha3_256_hls_keccak_absorb_once_hls_Pipeline_absorb_word_loop
    SUBMODULES {
      {MODELNAME sha3_256_hls_sparsemux_11_3_64_1_1 RTLNAME sha3_256_hls_sparsemux_11_3_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME KeccakF1600_StatePermute_HLS_Pipeline_state_permute MODELNAME KeccakF1600_StatePermute_HLS_Pipeline_state_permute RTLNAME sha3_256_hls_KeccakF1600_StatePermute_HLS_Pipeline_state_permute
    SUBMODULES {
      {MODELNAME sha3_256_hls_sparsemux_25_5_64_1_1 RTLNAME sha3_256_hls_sparsemux_25_5_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME KeccakF1600_StatePermute_HLS MODELNAME KeccakF1600_StatePermute_HLS RTLNAME sha3_256_hls_KeccakF1600_StatePermute_HLS}
  {SRCNAME keccak_absorb_once_hls_Pipeline_absorb_remaining MODELNAME keccak_absorb_once_hls_Pipeline_absorb_remaining RTLNAME sha3_256_hls_keccak_absorb_once_hls_Pipeline_absorb_remaining
    SUBMODULES {
      {MODELNAME sha3_256_hls_mul_29ns_31ns_59_2_1 RTLNAME sha3_256_hls_mul_29ns_31ns_59_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hls_urem_29ns_4ns_3_33_1 RTLNAME sha3_256_hls_urem_29ns_4ns_3_33_1 BINDTYPE op TYPE urem IMPL auto LATENCY 32 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME keccak_absorb_once_hls MODELNAME keccak_absorb_once_hls RTLNAME sha3_256_hls_keccak_absorb_once_hls
    SUBMODULES {
      {MODELNAME sha3_256_hls_mul_61ns_63ns_123_5_1 RTLNAME sha3_256_hls_mul_61ns_63ns_123_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hls_urem_64ns_9ns_64_68_seq_1 RTLNAME sha3_256_hls_urem_64ns_9ns_64_68_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME sha3_256_hls_urem_61ns_4ns_3_65_seq_1 RTLNAME sha3_256_hls_urem_61ns_4ns_3_65_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 64 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sha3_256_hls_Pipeline_extract_output MODELNAME sha3_256_hls_Pipeline_extract_output RTLNAME sha3_256_hls_sha3_256_hls_Pipeline_extract_output
    SUBMODULES {
      {MODELNAME sha3_256_hls_sparsemux_9_2_64_1_1 RTLNAME sha3_256_hls_sparsemux_9_2_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME sha3_256_hls MODELNAME sha3_256_hls RTLNAME sha3_256_hls IS_TOP 1
    SUBMODULES {
      {MODELNAME sha3_256_hls_s_RAM_AUTO_1R1W RTLNAME sha3_256_hls_s_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
