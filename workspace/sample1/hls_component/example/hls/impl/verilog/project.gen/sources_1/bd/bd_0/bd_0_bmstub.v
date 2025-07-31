// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bd_0 (
  ap_clk,
  ap_rst_n,
  interrupt,
  s_axi_BUS_A_araddr,
  s_axi_BUS_A_arready,
  s_axi_BUS_A_arvalid,
  s_axi_BUS_A_awaddr,
  s_axi_BUS_A_awready,
  s_axi_BUS_A_awvalid,
  s_axi_BUS_A_bready,
  s_axi_BUS_A_bresp,
  s_axi_BUS_A_bvalid,
  s_axi_BUS_A_rdata,
  s_axi_BUS_A_rready,
  s_axi_BUS_A_rresp,
  s_axi_BUS_A_rvalid,
  s_axi_BUS_A_wdata,
  s_axi_BUS_A_wready,
  s_axi_BUS_A_wstrb,
  s_axi_BUS_A_wvalid
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AP_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, INSERT_VIP 0" *)
  input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *)
  (* X_INTERFACE_MODE = "slave RST.AP_RST_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.INTERRUPT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi_BUS_A" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_BUS_A, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000.0, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [5:0]s_axi_BUS_A_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY" *)
  output s_axi_BUS_A_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID" *)
  input s_axi_BUS_A_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR" *)
  input [5:0]s_axi_BUS_A_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY" *)
  output s_axi_BUS_A_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID" *)
  input s_axi_BUS_A_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY" *)
  input s_axi_BUS_A_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP" *)
  output [1:0]s_axi_BUS_A_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID" *)
  output s_axi_BUS_A_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA" *)
  output [31:0]s_axi_BUS_A_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY" *)
  input s_axi_BUS_A_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP" *)
  output [1:0]s_axi_BUS_A_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID" *)
  output s_axi_BUS_A_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA" *)
  input [31:0]s_axi_BUS_A_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY" *)
  output s_axi_BUS_A_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB" *)
  input [3:0]s_axi_BUS_A_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID" *)
  input s_axi_BUS_A_wvalid;

  // stub module has no contents

endmodule
