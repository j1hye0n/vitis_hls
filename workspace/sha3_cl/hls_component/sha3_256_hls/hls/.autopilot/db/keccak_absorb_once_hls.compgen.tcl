# This script segment is generated automatically by AutoPilot

set name sha3_256_hls_mul_61ns_63ns_123_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name sha3_256_hls_urem_64ns_9ns_64_68_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto_seq} LATENCY 67 ALLOW_PRAGMA 1
}


set name sha3_256_hls_urem_61ns_4ns_3_65_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto_seq} LATENCY 64 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name s_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename s_0 \
    op interface \
    ports { s_0_address0 { O 3 vector } s_0_ce0 { O 1 bit } s_0_we0 { O 1 bit } s_0_d0 { O 64 vector } s_0_q0 { I 64 vector } s_0_address1 { O 3 vector } s_0_ce1 { O 1 bit } s_0_we1 { O 1 bit } s_0_d1 { O 64 vector } s_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name s_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename s_1 \
    op interface \
    ports { s_1_address0 { O 3 vector } s_1_ce0 { O 1 bit } s_1_we0 { O 1 bit } s_1_d0 { O 64 vector } s_1_q0 { I 64 vector } s_1_address1 { O 3 vector } s_1_ce1 { O 1 bit } s_1_we1 { O 1 bit } s_1_d1 { O 64 vector } s_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name s_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename s_2 \
    op interface \
    ports { s_2_address0 { O 3 vector } s_2_ce0 { O 1 bit } s_2_we0 { O 1 bit } s_2_d0 { O 64 vector } s_2_q0 { I 64 vector } s_2_address1 { O 3 vector } s_2_ce1 { O 1 bit } s_2_we1 { O 1 bit } s_2_d1 { O 64 vector } s_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name s_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename s_3 \
    op interface \
    ports { s_3_address0 { O 3 vector } s_3_ce0 { O 1 bit } s_3_we0 { O 1 bit } s_3_d0 { O 64 vector } s_3_q0 { I 64 vector } s_3_address1 { O 3 vector } s_3_ce1 { O 1 bit } s_3_we1 { O 1 bit } s_3_d1 { O 64 vector } s_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name s_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename s_4 \
    op interface \
    ports { s_4_address0 { O 3 vector } s_4_ce0 { O 1 bit } s_4_we0 { O 1 bit } s_4_d0 { O 64 vector } s_4_q0 { I 64 vector } s_4_address1 { O 3 vector } s_4_ce1 { O 1 bit } s_4_we1 { O 1 bit } s_4_d1 { O 64 vector } s_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name in_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename in_r \
    op interface \
    ports { in_r_address0 { O 11 vector } in_r_ce0 { O 1 bit } in_r_q0 { I 8 vector } in_r_address1 { O 11 vector } in_r_ce1 { O 1 bit } in_r_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name inlen \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inlen \
    op interface \
    ports { inlen { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


