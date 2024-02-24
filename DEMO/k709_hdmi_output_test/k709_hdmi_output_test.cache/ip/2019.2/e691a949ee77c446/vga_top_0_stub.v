// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Mar 21 22:13:33 2020
// Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vga_top_0_stub.v
// Design      : vga_top_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga_top,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(RED, GREEN, BLUE, HSYNC, VSYNC, READY, CLK, RST_N)
/* synthesis syn_black_box black_box_pad_pin="RED[7:0],GREEN[7:0],BLUE[7:0],HSYNC,VSYNC,READY,CLK,RST_N" */;
  output [7:0]RED;
  output [7:0]GREEN;
  output [7:0]BLUE;
  output HSYNC;
  output VSYNC;
  output READY;
  input CLK;
  input RST_N;
endmodule
