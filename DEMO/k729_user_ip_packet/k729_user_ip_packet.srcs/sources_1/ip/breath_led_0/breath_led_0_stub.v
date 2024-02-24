// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Jun 28 20:35:09 2020
// Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Administrator/Desktop/K7325/DEMO/k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/breath_led_0_stub.v
// Design      : breath_led_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "breath_led,Vivado 2019.2" *)
module breath_led_0(clk, rstn, led)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,led[7:0]" */;
  input clk;
  input rstn;
  output [7:0]led;
endmodule
