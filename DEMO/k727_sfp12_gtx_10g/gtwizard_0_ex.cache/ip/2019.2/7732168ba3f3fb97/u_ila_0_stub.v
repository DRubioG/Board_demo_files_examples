// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Jul  9 16:07:47 2020
// Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u_ila_0_stub.v
// Design      : u_ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[1:0],probe1[63:0],probe2[1:0],probe3[63:0],probe4[7:0],probe5[79:0],probe6[79:0],probe7[7:0],probe8[0:0],probe9[0:0]" */;
  input clk;
  input [1:0]probe0;
  input [63:0]probe1;
  input [1:0]probe2;
  input [63:0]probe3;
  input [7:0]probe4;
  input [79:0]probe5;
  input [79:0]probe6;
  input [7:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
endmodule
