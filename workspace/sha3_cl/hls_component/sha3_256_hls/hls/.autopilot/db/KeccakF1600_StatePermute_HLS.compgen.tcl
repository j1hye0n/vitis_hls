# This script segment is generated automatically by AutoPilot

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
    id 69 \
    name state_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state_0 \
    op interface \
    ports { state_0_address0 { O 3 vector } state_0_ce0 { O 1 bit } state_0_we0 { O 1 bit } state_0_d0 { O 64 vector } state_0_q0 { I 64 vector } state_0_address1 { O 3 vector } state_0_ce1 { O 1 bit } state_0_we1 { O 1 bit } state_0_d1 { O 64 vector } state_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name state_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state_1 \
    op interface \
    ports { state_1_address0 { O 3 vector } state_1_ce0 { O 1 bit } state_1_we0 { O 1 bit } state_1_d0 { O 64 vector } state_1_q0 { I 64 vector } state_1_address1 { O 3 vector } state_1_ce1 { O 1 bit } state_1_we1 { O 1 bit } state_1_d1 { O 64 vector } state_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name state_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state_2 \
    op interface \
    ports { state_2_address0 { O 3 vector } state_2_ce0 { O 1 bit } state_2_we0 { O 1 bit } state_2_d0 { O 64 vector } state_2_q0 { I 64 vector } state_2_address1 { O 3 vector } state_2_ce1 { O 1 bit } state_2_we1 { O 1 bit } state_2_d1 { O 64 vector } state_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name state_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state_3 \
    op interface \
    ports { state_3_address0 { O 3 vector } state_3_ce0 { O 1 bit } state_3_we0 { O 1 bit } state_3_d0 { O 64 vector } state_3_q0 { I 64 vector } state_3_address1 { O 3 vector } state_3_ce1 { O 1 bit } state_3_we1 { O 1 bit } state_3_d1 { O 64 vector } state_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name state_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state_4 \
    op interface \
    ports { state_4_address0 { O 3 vector } state_4_ce0 { O 1 bit } state_4_we0 { O 1 bit } state_4_d0 { O 64 vector } state_4_q0 { I 64 vector } state_4_address1 { O 3 vector } state_4_ce1 { O 1 bit } state_4_we1 { O 1 bit } state_4_d1 { O 64 vector } state_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state_4'"
}
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


