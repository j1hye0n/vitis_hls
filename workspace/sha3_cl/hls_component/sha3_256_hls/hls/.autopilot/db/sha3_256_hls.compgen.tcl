# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sha3_256_hls_s_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
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
    id 140 \
    name h_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_0 \
    op interface \
    ports { h_0 { O 8 vector } h_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name h_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_1 \
    op interface \
    ports { h_1 { O 8 vector } h_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name h_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_2 \
    op interface \
    ports { h_2 { O 8 vector } h_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name h_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_3 \
    op interface \
    ports { h_3 { O 8 vector } h_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name h_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_4 \
    op interface \
    ports { h_4 { O 8 vector } h_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name h_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_5 \
    op interface \
    ports { h_5 { O 8 vector } h_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name h_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_6 \
    op interface \
    ports { h_6 { O 8 vector } h_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name h_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_7 \
    op interface \
    ports { h_7 { O 8 vector } h_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name h_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_8 \
    op interface \
    ports { h_8 { O 8 vector } h_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name h_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_9 \
    op interface \
    ports { h_9 { O 8 vector } h_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name h_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_10 \
    op interface \
    ports { h_10 { O 8 vector } h_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name h_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_11 \
    op interface \
    ports { h_11 { O 8 vector } h_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name h_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_12 \
    op interface \
    ports { h_12 { O 8 vector } h_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name h_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_13 \
    op interface \
    ports { h_13 { O 8 vector } h_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name h_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_14 \
    op interface \
    ports { h_14 { O 8 vector } h_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name h_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_15 \
    op interface \
    ports { h_15 { O 8 vector } h_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name h_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_16 \
    op interface \
    ports { h_16 { O 8 vector } h_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name h_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_17 \
    op interface \
    ports { h_17 { O 8 vector } h_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name h_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_18 \
    op interface \
    ports { h_18 { O 8 vector } h_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name h_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_19 \
    op interface \
    ports { h_19 { O 8 vector } h_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name h_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_20 \
    op interface \
    ports { h_20 { O 8 vector } h_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name h_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_21 \
    op interface \
    ports { h_21 { O 8 vector } h_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name h_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_22 \
    op interface \
    ports { h_22 { O 8 vector } h_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name h_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_23 \
    op interface \
    ports { h_23 { O 8 vector } h_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name h_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_24 \
    op interface \
    ports { h_24 { O 8 vector } h_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name h_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_25 \
    op interface \
    ports { h_25 { O 8 vector } h_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name h_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_26 \
    op interface \
    ports { h_26 { O 8 vector } h_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name h_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_27 \
    op interface \
    ports { h_27 { O 8 vector } h_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name h_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_28 \
    op interface \
    ports { h_28 { O 8 vector } h_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name h_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_29 \
    op interface \
    ports { h_29 { O 8 vector } h_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name h_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_30 \
    op interface \
    ports { h_30 { O 8 vector } h_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name h_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_31 \
    op interface \
    ports { h_31 { O 8 vector } h_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
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


