// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Jun 28 20:35:09 2020
// Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Desktop/K7325/DEMO/k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/breath_led_0_sim_netlist.v
// Design      : breath_led_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "breath_led_0,breath_led,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "breath_led,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module breath_led_0
   (clk,
    rstn,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  output [7:0]led;

  wire clk;
  wire [7:0]led;
  wire rstn;

  breath_led_0_breath_led inst
       (.clk(clk),
        .led(led),
        .rstn(rstn));
endmodule

(* ORIG_REF_NAME = "breath_led" *) 
module breath_led_0_breath_led
   (led,
    rstn,
    clk);
  output [7:0]led;
  input rstn;
  input clk;

  wire breath_dir;
  wire breath_dir_i_1_n_0;
  wire clk;
  wire compare_value;
  wire compare_value0_carry__0_i_1_n_0;
  wire compare_value0_carry__0_i_2_n_0;
  wire compare_value0_carry__0_n_0;
  wire compare_value0_carry__0_n_1;
  wire compare_value0_carry__0_n_2;
  wire compare_value0_carry__0_n_3;
  wire compare_value0_carry__1_n_0;
  wire compare_value0_carry__1_n_1;
  wire compare_value0_carry__1_n_2;
  wire compare_value0_carry__1_n_3;
  wire compare_value0_carry__2_n_1;
  wire compare_value0_carry__2_n_2;
  wire compare_value0_carry__2_n_3;
  wire compare_value0_carry_i_1_n_0;
  wire compare_value0_carry_n_0;
  wire compare_value0_carry_n_1;
  wire compare_value0_carry_n_2;
  wire compare_value0_carry_n_3;
  wire \compare_value[0]_i_10_n_0 ;
  wire \compare_value[0]_i_11_n_0 ;
  wire \compare_value[0]_i_12_n_0 ;
  wire \compare_value[0]_i_13_n_0 ;
  wire \compare_value[0]_i_14_n_0 ;
  wire \compare_value[0]_i_15_n_0 ;
  wire \compare_value[0]_i_16_n_0 ;
  wire \compare_value[0]_i_17_n_0 ;
  wire \compare_value[0]_i_18_n_0 ;
  wire \compare_value[0]_i_19_n_0 ;
  wire \compare_value[0]_i_20_n_0 ;
  wire \compare_value[0]_i_3_n_0 ;
  wire \compare_value[0]_i_4_n_0 ;
  wire \compare_value[0]_i_5_n_0 ;
  wire \compare_value[0]_i_6_n_0 ;
  wire \compare_value[0]_i_7_n_0 ;
  wire \compare_value[0]_i_8_n_0 ;
  wire \compare_value[0]_i_9_n_0 ;
  wire \compare_value[12]_i_2_n_0 ;
  wire \compare_value[12]_i_3_n_0 ;
  wire \compare_value[12]_i_4_n_0 ;
  wire \compare_value[12]_i_5_n_0 ;
  wire \compare_value[16]_i_2_n_0 ;
  wire \compare_value[16]_i_3_n_0 ;
  wire \compare_value[16]_i_4_n_0 ;
  wire \compare_value[16]_i_5_n_0 ;
  wire \compare_value[20]_i_2_n_0 ;
  wire \compare_value[20]_i_3_n_0 ;
  wire \compare_value[20]_i_4_n_0 ;
  wire \compare_value[20]_i_5_n_0 ;
  wire \compare_value[24]_i_2_n_0 ;
  wire \compare_value[24]_i_3_n_0 ;
  wire \compare_value[24]_i_4_n_0 ;
  wire \compare_value[24]_i_5_n_0 ;
  wire \compare_value[28]_i_2_n_0 ;
  wire \compare_value[28]_i_3_n_0 ;
  wire \compare_value[28]_i_4_n_0 ;
  wire \compare_value[28]_i_5_n_0 ;
  wire \compare_value[4]_i_2_n_0 ;
  wire \compare_value[4]_i_3_n_0 ;
  wire \compare_value[4]_i_4_n_0 ;
  wire \compare_value[4]_i_5_n_0 ;
  wire \compare_value[8]_i_2_n_0 ;
  wire \compare_value[8]_i_3_n_0 ;
  wire \compare_value[8]_i_4_n_0 ;
  wire \compare_value[8]_i_5_n_0 ;
  wire [31:0]compare_value_reg;
  wire \compare_value_reg[0]_i_2_n_0 ;
  wire \compare_value_reg[0]_i_2_n_1 ;
  wire \compare_value_reg[0]_i_2_n_2 ;
  wire \compare_value_reg[0]_i_2_n_3 ;
  wire \compare_value_reg[0]_i_2_n_4 ;
  wire \compare_value_reg[0]_i_2_n_5 ;
  wire \compare_value_reg[0]_i_2_n_6 ;
  wire \compare_value_reg[0]_i_2_n_7 ;
  wire \compare_value_reg[12]_i_1_n_0 ;
  wire \compare_value_reg[12]_i_1_n_1 ;
  wire \compare_value_reg[12]_i_1_n_2 ;
  wire \compare_value_reg[12]_i_1_n_3 ;
  wire \compare_value_reg[12]_i_1_n_4 ;
  wire \compare_value_reg[12]_i_1_n_5 ;
  wire \compare_value_reg[12]_i_1_n_6 ;
  wire \compare_value_reg[12]_i_1_n_7 ;
  wire \compare_value_reg[16]_i_1_n_0 ;
  wire \compare_value_reg[16]_i_1_n_1 ;
  wire \compare_value_reg[16]_i_1_n_2 ;
  wire \compare_value_reg[16]_i_1_n_3 ;
  wire \compare_value_reg[16]_i_1_n_4 ;
  wire \compare_value_reg[16]_i_1_n_5 ;
  wire \compare_value_reg[16]_i_1_n_6 ;
  wire \compare_value_reg[16]_i_1_n_7 ;
  wire \compare_value_reg[20]_i_1_n_0 ;
  wire \compare_value_reg[20]_i_1_n_1 ;
  wire \compare_value_reg[20]_i_1_n_2 ;
  wire \compare_value_reg[20]_i_1_n_3 ;
  wire \compare_value_reg[20]_i_1_n_4 ;
  wire \compare_value_reg[20]_i_1_n_5 ;
  wire \compare_value_reg[20]_i_1_n_6 ;
  wire \compare_value_reg[20]_i_1_n_7 ;
  wire \compare_value_reg[24]_i_1_n_0 ;
  wire \compare_value_reg[24]_i_1_n_1 ;
  wire \compare_value_reg[24]_i_1_n_2 ;
  wire \compare_value_reg[24]_i_1_n_3 ;
  wire \compare_value_reg[24]_i_1_n_4 ;
  wire \compare_value_reg[24]_i_1_n_5 ;
  wire \compare_value_reg[24]_i_1_n_6 ;
  wire \compare_value_reg[24]_i_1_n_7 ;
  wire \compare_value_reg[28]_i_1_n_1 ;
  wire \compare_value_reg[28]_i_1_n_2 ;
  wire \compare_value_reg[28]_i_1_n_3 ;
  wire \compare_value_reg[28]_i_1_n_4 ;
  wire \compare_value_reg[28]_i_1_n_5 ;
  wire \compare_value_reg[28]_i_1_n_6 ;
  wire \compare_value_reg[28]_i_1_n_7 ;
  wire \compare_value_reg[4]_i_1_n_0 ;
  wire \compare_value_reg[4]_i_1_n_1 ;
  wire \compare_value_reg[4]_i_1_n_2 ;
  wire \compare_value_reg[4]_i_1_n_3 ;
  wire \compare_value_reg[4]_i_1_n_4 ;
  wire \compare_value_reg[4]_i_1_n_5 ;
  wire \compare_value_reg[4]_i_1_n_6 ;
  wire \compare_value_reg[4]_i_1_n_7 ;
  wire \compare_value_reg[8]_i_1_n_0 ;
  wire \compare_value_reg[8]_i_1_n_1 ;
  wire \compare_value_reg[8]_i_1_n_2 ;
  wire \compare_value_reg[8]_i_1_n_3 ;
  wire \compare_value_reg[8]_i_1_n_4 ;
  wire \compare_value_reg[8]_i_1_n_5 ;
  wire \compare_value_reg[8]_i_1_n_6 ;
  wire \compare_value_reg[8]_i_1_n_7 ;
  wire \counter_breath[0]_i_2_n_0 ;
  wire \counter_breath[0]_i_3_n_0 ;
  wire \counter_breath[0]_i_4_n_0 ;
  wire \counter_breath[0]_i_5_n_0 ;
  wire \counter_breath[0]_i_6_n_0 ;
  wire \counter_breath[12]_i_2_n_0 ;
  wire \counter_breath[12]_i_3_n_0 ;
  wire \counter_breath[12]_i_4_n_0 ;
  wire \counter_breath[12]_i_5_n_0 ;
  wire \counter_breath[16]_i_2_n_0 ;
  wire \counter_breath[16]_i_3_n_0 ;
  wire \counter_breath[16]_i_4_n_0 ;
  wire \counter_breath[16]_i_5_n_0 ;
  wire \counter_breath[20]_i_2_n_0 ;
  wire \counter_breath[20]_i_3_n_0 ;
  wire \counter_breath[20]_i_4_n_0 ;
  wire \counter_breath[20]_i_5_n_0 ;
  wire \counter_breath[24]_i_2_n_0 ;
  wire \counter_breath[24]_i_3_n_0 ;
  wire \counter_breath[24]_i_4_n_0 ;
  wire \counter_breath[4]_i_2_n_0 ;
  wire \counter_breath[4]_i_3_n_0 ;
  wire \counter_breath[4]_i_4_n_0 ;
  wire \counter_breath[4]_i_5_n_0 ;
  wire \counter_breath[8]_i_2_n_0 ;
  wire \counter_breath[8]_i_3_n_0 ;
  wire \counter_breath[8]_i_4_n_0 ;
  wire \counter_breath[8]_i_5_n_0 ;
  wire [27:8]counter_breath_reg;
  wire \counter_breath_reg[0]_i_1_n_0 ;
  wire \counter_breath_reg[0]_i_1_n_1 ;
  wire \counter_breath_reg[0]_i_1_n_2 ;
  wire \counter_breath_reg[0]_i_1_n_3 ;
  wire \counter_breath_reg[0]_i_1_n_4 ;
  wire \counter_breath_reg[0]_i_1_n_5 ;
  wire \counter_breath_reg[0]_i_1_n_6 ;
  wire \counter_breath_reg[0]_i_1_n_7 ;
  wire \counter_breath_reg[12]_i_1_n_0 ;
  wire \counter_breath_reg[12]_i_1_n_1 ;
  wire \counter_breath_reg[12]_i_1_n_2 ;
  wire \counter_breath_reg[12]_i_1_n_3 ;
  wire \counter_breath_reg[12]_i_1_n_4 ;
  wire \counter_breath_reg[12]_i_1_n_5 ;
  wire \counter_breath_reg[12]_i_1_n_6 ;
  wire \counter_breath_reg[12]_i_1_n_7 ;
  wire \counter_breath_reg[16]_i_1_n_0 ;
  wire \counter_breath_reg[16]_i_1_n_1 ;
  wire \counter_breath_reg[16]_i_1_n_2 ;
  wire \counter_breath_reg[16]_i_1_n_3 ;
  wire \counter_breath_reg[16]_i_1_n_4 ;
  wire \counter_breath_reg[16]_i_1_n_5 ;
  wire \counter_breath_reg[16]_i_1_n_6 ;
  wire \counter_breath_reg[16]_i_1_n_7 ;
  wire \counter_breath_reg[20]_i_1_n_0 ;
  wire \counter_breath_reg[20]_i_1_n_1 ;
  wire \counter_breath_reg[20]_i_1_n_2 ;
  wire \counter_breath_reg[20]_i_1_n_3 ;
  wire \counter_breath_reg[20]_i_1_n_4 ;
  wire \counter_breath_reg[20]_i_1_n_5 ;
  wire \counter_breath_reg[20]_i_1_n_6 ;
  wire \counter_breath_reg[20]_i_1_n_7 ;
  wire \counter_breath_reg[24]_i_1_n_0 ;
  wire \counter_breath_reg[24]_i_1_n_2 ;
  wire \counter_breath_reg[24]_i_1_n_3 ;
  wire \counter_breath_reg[24]_i_1_n_5 ;
  wire \counter_breath_reg[24]_i_1_n_6 ;
  wire \counter_breath_reg[24]_i_1_n_7 ;
  wire \counter_breath_reg[4]_i_1_n_0 ;
  wire \counter_breath_reg[4]_i_1_n_1 ;
  wire \counter_breath_reg[4]_i_1_n_2 ;
  wire \counter_breath_reg[4]_i_1_n_3 ;
  wire \counter_breath_reg[4]_i_1_n_4 ;
  wire \counter_breath_reg[4]_i_1_n_5 ;
  wire \counter_breath_reg[4]_i_1_n_6 ;
  wire \counter_breath_reg[4]_i_1_n_7 ;
  wire \counter_breath_reg[8]_i_1_n_0 ;
  wire \counter_breath_reg[8]_i_1_n_1 ;
  wire \counter_breath_reg[8]_i_1_n_2 ;
  wire \counter_breath_reg[8]_i_1_n_3 ;
  wire \counter_breath_reg[8]_i_1_n_4 ;
  wire \counter_breath_reg[8]_i_1_n_5 ;
  wire \counter_breath_reg[8]_i_1_n_6 ;
  wire \counter_breath_reg[8]_i_1_n_7 ;
  wire \counter_breath_reg_n_0_[0] ;
  wire \counter_breath_reg_n_0_[1] ;
  wire \counter_breath_reg_n_0_[2] ;
  wire \counter_breath_reg_n_0_[3] ;
  wire \counter_breath_reg_n_0_[4] ;
  wire \counter_breath_reg_n_0_[5] ;
  wire \counter_breath_reg_n_0_[6] ;
  wire \counter_breath_reg_n_0_[7] ;
  wire \counter_compare[0]_i_2_n_0 ;
  wire \counter_compare[0]_i_3_n_0 ;
  wire \counter_compare[0]_i_4_n_0 ;
  wire \counter_compare[0]_i_5_n_0 ;
  wire \counter_compare[12]_i_2_n_0 ;
  wire \counter_compare[12]_i_3_n_0 ;
  wire \counter_compare[12]_i_4_n_0 ;
  wire \counter_compare[12]_i_5_n_0 ;
  wire \counter_compare[4]_i_2_n_0 ;
  wire \counter_compare[4]_i_3_n_0 ;
  wire \counter_compare[4]_i_4_n_0 ;
  wire \counter_compare[4]_i_5_n_0 ;
  wire \counter_compare[8]_i_2_n_0 ;
  wire \counter_compare[8]_i_3_n_0 ;
  wire \counter_compare[8]_i_4_n_0 ;
  wire \counter_compare[8]_i_5_n_0 ;
  wire [16:4]counter_compare_reg;
  wire \counter_compare_reg[0]_i_1_n_0 ;
  wire \counter_compare_reg[0]_i_1_n_1 ;
  wire \counter_compare_reg[0]_i_1_n_2 ;
  wire \counter_compare_reg[0]_i_1_n_3 ;
  wire \counter_compare_reg[0]_i_1_n_4 ;
  wire \counter_compare_reg[0]_i_1_n_5 ;
  wire \counter_compare_reg[0]_i_1_n_6 ;
  wire \counter_compare_reg[0]_i_1_n_7 ;
  wire \counter_compare_reg[12]_i_1_n_0 ;
  wire \counter_compare_reg[12]_i_1_n_1 ;
  wire \counter_compare_reg[12]_i_1_n_2 ;
  wire \counter_compare_reg[12]_i_1_n_3 ;
  wire \counter_compare_reg[12]_i_1_n_4 ;
  wire \counter_compare_reg[12]_i_1_n_5 ;
  wire \counter_compare_reg[12]_i_1_n_6 ;
  wire \counter_compare_reg[12]_i_1_n_7 ;
  wire \counter_compare_reg[16]_i_1_n_3 ;
  wire \counter_compare_reg[4]_i_1_n_0 ;
  wire \counter_compare_reg[4]_i_1_n_1 ;
  wire \counter_compare_reg[4]_i_1_n_2 ;
  wire \counter_compare_reg[4]_i_1_n_3 ;
  wire \counter_compare_reg[4]_i_1_n_4 ;
  wire \counter_compare_reg[4]_i_1_n_5 ;
  wire \counter_compare_reg[4]_i_1_n_6 ;
  wire \counter_compare_reg[4]_i_1_n_7 ;
  wire \counter_compare_reg[8]_i_1_n_0 ;
  wire \counter_compare_reg[8]_i_1_n_1 ;
  wire \counter_compare_reg[8]_i_1_n_2 ;
  wire \counter_compare_reg[8]_i_1_n_3 ;
  wire \counter_compare_reg[8]_i_1_n_4 ;
  wire \counter_compare_reg[8]_i_1_n_5 ;
  wire \counter_compare_reg[8]_i_1_n_6 ;
  wire \counter_compare_reg[8]_i_1_n_7 ;
  wire \counter_compare_reg_n_0_[0] ;
  wire \counter_compare_reg_n_0_[1] ;
  wire \counter_compare_reg_n_0_[2] ;
  wire \counter_compare_reg_n_0_[3] ;
  wire \counter_pwm[0]_i_2_n_0 ;
  wire \counter_pwm[0]_i_3_n_0 ;
  wire \counter_pwm[0]_i_4_n_0 ;
  wire \counter_pwm[0]_i_5_n_0 ;
  wire \counter_pwm[0]_i_6_n_0 ;
  wire \counter_pwm[0]_i_7_n_0 ;
  wire \counter_pwm[0]_i_8_n_0 ;
  wire \counter_pwm[12]_i_2_n_0 ;
  wire \counter_pwm[12]_i_3_n_0 ;
  wire \counter_pwm[12]_i_4_n_0 ;
  wire \counter_pwm[12]_i_5_n_0 ;
  wire \counter_pwm[4]_i_2_n_0 ;
  wire \counter_pwm[4]_i_3_n_0 ;
  wire \counter_pwm[4]_i_4_n_0 ;
  wire \counter_pwm[4]_i_5_n_0 ;
  wire \counter_pwm[8]_i_2_n_0 ;
  wire \counter_pwm[8]_i_3_n_0 ;
  wire \counter_pwm[8]_i_4_n_0 ;
  wire \counter_pwm[8]_i_5_n_0 ;
  wire [16:0]counter_pwm_reg;
  wire \counter_pwm_reg[0]_i_1_n_0 ;
  wire \counter_pwm_reg[0]_i_1_n_1 ;
  wire \counter_pwm_reg[0]_i_1_n_2 ;
  wire \counter_pwm_reg[0]_i_1_n_3 ;
  wire \counter_pwm_reg[0]_i_1_n_4 ;
  wire \counter_pwm_reg[0]_i_1_n_5 ;
  wire \counter_pwm_reg[0]_i_1_n_6 ;
  wire \counter_pwm_reg[0]_i_1_n_7 ;
  wire \counter_pwm_reg[12]_i_1_n_0 ;
  wire \counter_pwm_reg[12]_i_1_n_1 ;
  wire \counter_pwm_reg[12]_i_1_n_2 ;
  wire \counter_pwm_reg[12]_i_1_n_3 ;
  wire \counter_pwm_reg[12]_i_1_n_4 ;
  wire \counter_pwm_reg[12]_i_1_n_5 ;
  wire \counter_pwm_reg[12]_i_1_n_6 ;
  wire \counter_pwm_reg[12]_i_1_n_7 ;
  wire \counter_pwm_reg[16]_i_1_n_3 ;
  wire \counter_pwm_reg[4]_i_1_n_0 ;
  wire \counter_pwm_reg[4]_i_1_n_1 ;
  wire \counter_pwm_reg[4]_i_1_n_2 ;
  wire \counter_pwm_reg[4]_i_1_n_3 ;
  wire \counter_pwm_reg[4]_i_1_n_4 ;
  wire \counter_pwm_reg[4]_i_1_n_5 ;
  wire \counter_pwm_reg[4]_i_1_n_6 ;
  wire \counter_pwm_reg[4]_i_1_n_7 ;
  wire \counter_pwm_reg[8]_i_1_n_0 ;
  wire \counter_pwm_reg[8]_i_1_n_1 ;
  wire \counter_pwm_reg[8]_i_1_n_2 ;
  wire \counter_pwm_reg[8]_i_1_n_3 ;
  wire \counter_pwm_reg[8]_i_1_n_4 ;
  wire \counter_pwm_reg[8]_i_1_n_5 ;
  wire \counter_pwm_reg[8]_i_1_n_6 ;
  wire \counter_pwm_reg[8]_i_1_n_7 ;
  wire [15:0]data;
  wire [7:0]led;
  wire led_breath_view;
  wire led_breath_view0_carry__0_n_0;
  wire led_breath_view0_carry__0_n_1;
  wire led_breath_view0_carry__0_n_2;
  wire led_breath_view0_carry__0_n_3;
  wire led_breath_view0_carry__1_n_0;
  wire led_breath_view0_carry__1_n_1;
  wire led_breath_view0_carry__1_n_2;
  wire led_breath_view0_carry__1_n_3;
  wire led_breath_view0_carry__2_n_0;
  wire led_breath_view0_carry__2_n_1;
  wire led_breath_view0_carry__2_n_2;
  wire led_breath_view0_carry__2_n_3;
  wire led_breath_view0_carry_i_1__0_n_0;
  wire led_breath_view0_carry_i_1__1_n_0;
  wire led_breath_view0_carry_i_1__2_n_0;
  wire led_breath_view0_carry_i_1_n_0;
  wire led_breath_view0_carry_i_2__0_n_0;
  wire led_breath_view0_carry_i_2__1_n_0;
  wire led_breath_view0_carry_i_2__2_n_0;
  wire led_breath_view0_carry_i_2_n_0;
  wire led_breath_view0_carry_i_3__0_n_0;
  wire led_breath_view0_carry_i_3__1_n_0;
  wire led_breath_view0_carry_i_3__2_n_0;
  wire led_breath_view0_carry_i_3_n_0;
  wire led_breath_view0_carry_i_4__0_n_0;
  wire led_breath_view0_carry_i_4__1_n_0;
  wire led_breath_view0_carry_i_4__2_n_0;
  wire led_breath_view0_carry_i_4_n_0;
  wire led_breath_view0_carry_i_5__0_n_0;
  wire led_breath_view0_carry_i_5__1_n_0;
  wire led_breath_view0_carry_i_5__2_n_0;
  wire led_breath_view0_carry_i_5_n_0;
  wire led_breath_view0_carry_i_6__0_n_0;
  wire led_breath_view0_carry_i_6__1_n_0;
  wire led_breath_view0_carry_i_6__2_n_0;
  wire led_breath_view0_carry_i_6_n_0;
  wire led_breath_view0_carry_i_7__0_n_0;
  wire led_breath_view0_carry_i_7__1_n_0;
  wire led_breath_view0_carry_i_7__2_n_0;
  wire led_breath_view0_carry_i_7_n_0;
  wire led_breath_view0_carry_i_8__0_n_0;
  wire led_breath_view0_carry_i_8__1_n_0;
  wire led_breath_view0_carry_i_8__2_n_0;
  wire led_breath_view0_carry_i_8_n_0;
  wire led_breath_view0_carry_n_0;
  wire led_breath_view0_carry_n_1;
  wire led_breath_view0_carry_n_2;
  wire led_breath_view0_carry_n_3;
  wire led_breath_view_i_1_n_0;
  wire \led_number[0]_i_1_n_0 ;
  wire \led_number[0]_i_2_n_0 ;
  wire \led_number[1]_i_1_n_0 ;
  wire \led_number[1]_i_2_n_0 ;
  wire \led_number[2]_i_1_n_0 ;
  wire \led_number_reg_n_0_[0] ;
  wire \led_number_reg_n_0_[1] ;
  wire \led_number_reg_n_0_[2] ;
  wire \led_number_state[0]_i_1_n_0 ;
  wire \led_number_state[1]_i_1_n_0 ;
  wire \led_number_state[2]_i_1_n_0 ;
  wire \led_number_state[3]_i_1_n_0 ;
  wire \led_number_state[3]_i_2_n_0 ;
  wire \led_number_state[3]_i_3_n_0 ;
  wire \led_number_state[3]_i_4_n_0 ;
  wire \led_number_state[3]_i_5_n_0 ;
  wire \led_number_state[3]_i_6_n_0 ;
  wire \led_number_state[3]_i_7_n_0 ;
  wire \led_number_state[3]_i_8_n_0 ;
  wire \led_number_state_reg_n_0_[0] ;
  wire \led_number_state_reg_n_0_[1] ;
  wire \led_number_state_reg_n_0_[2] ;
  wire \led_number_state_reg_n_0_[3] ;
  wire \led_reg[0]_i_1_n_0 ;
  wire \led_reg[1]_i_1_n_0 ;
  wire \led_reg[2]_i_1_n_0 ;
  wire \led_reg[3]_i_1_n_0 ;
  wire \led_reg[4]_i_1_n_0 ;
  wire \led_reg[5]_i_1_n_0 ;
  wire \led_reg[6]_i_1_n_0 ;
  wire \led_reg[7]_i_1_n_0 ;
  wire \led_reg[7]_i_2_n_0 ;
  wire rstn;
  wire [3:3]NLW_compare_value0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_compare_value_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:2]\NLW_counter_breath_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_breath_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_counter_compare_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_compare_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_counter_pwm_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_pwm_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_led_breath_view0_carry_O_UNCONNECTED;
  wire [3:0]NLW_led_breath_view0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_led_breath_view0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_led_breath_view0_carry__2_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    breath_dir_i_1
       (.I0(\led_number_state[3]_i_4_n_0 ),
        .I1(breath_dir),
        .O(breath_dir_i_1_n_0));
  FDCE breath_dir_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(breath_dir_i_1_n_0),
        .Q(breath_dir));
  CARRY4 compare_value0_carry
       (.CI(1'b0),
        .CO({compare_value0_carry_n_0,compare_value0_carry_n_1,compare_value0_carry_n_2,compare_value0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,compare_value_reg[1],1'b0}),
        .O(data[3:0]),
        .S({compare_value_reg[3:2],compare_value0_carry_i_1_n_0,compare_value_reg[0]}));
  CARRY4 compare_value0_carry__0
       (.CI(compare_value0_carry_n_0),
        .CO({compare_value0_carry__0_n_0,compare_value0_carry__0_n_1,compare_value0_carry__0_n_2,compare_value0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,compare_value_reg[5:4]}),
        .O(data[7:4]),
        .S({compare_value_reg[7:6],compare_value0_carry__0_i_1_n_0,compare_value0_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    compare_value0_carry__0_i_1
       (.I0(compare_value_reg[5]),
        .O(compare_value0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    compare_value0_carry__0_i_2
       (.I0(compare_value_reg[4]),
        .O(compare_value0_carry__0_i_2_n_0));
  CARRY4 compare_value0_carry__1
       (.CI(compare_value0_carry__0_n_0),
        .CO({compare_value0_carry__1_n_0,compare_value0_carry__1_n_1,compare_value0_carry__1_n_2,compare_value0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data[11:8]),
        .S(compare_value_reg[11:8]));
  CARRY4 compare_value0_carry__2
       (.CI(compare_value0_carry__1_n_0),
        .CO({NLW_compare_value0_carry__2_CO_UNCONNECTED[3],compare_value0_carry__2_n_1,compare_value0_carry__2_n_2,compare_value0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data[15:12]),
        .S(compare_value_reg[15:12]));
  LUT1 #(
    .INIT(2'h1)) 
    compare_value0_carry_i_1
       (.I0(compare_value_reg[1]),
        .O(compare_value0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000005555FF7F)) 
    \compare_value[0]_i_1 
       (.I0(\compare_value[0]_i_3_n_0 ),
        .I1(compare_value_reg[14]),
        .I2(compare_value_reg[15]),
        .I3(\compare_value[0]_i_4_n_0 ),
        .I4(\compare_value[0]_i_5_n_0 ),
        .I5(\compare_value[0]_i_6_n_0 ),
        .O(compare_value));
  LUT3 #(
    .INIT(8'hB8)) 
    \compare_value[0]_i_10 
       (.I0(compare_value_reg[0]),
        .I1(breath_dir),
        .I2(data[0]),
        .O(\compare_value[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \compare_value[0]_i_11 
       (.I0(compare_value_reg[19]),
        .I1(compare_value_reg[20]),
        .I2(compare_value_reg[23]),
        .I3(compare_value_reg[16]),
        .I4(compare_value_reg[28]),
        .O(\compare_value[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \compare_value[0]_i_12 
       (.I0(compare_value_reg[17]),
        .I1(compare_value_reg[18]),
        .I2(compare_value_reg[5]),
        .I3(compare_value_reg[4]),
        .I4(compare_value_reg[11]),
        .I5(compare_value_reg[12]),
        .O(\compare_value[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \compare_value[0]_i_13 
       (.I0(compare_value_reg[22]),
        .I1(compare_value_reg[25]),
        .I2(compare_value_reg[26]),
        .I3(compare_value_reg[21]),
        .I4(compare_value_reg[30]),
        .I5(compare_value_reg[29]),
        .O(\compare_value[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \compare_value[0]_i_14 
       (.I0(compare_value_reg[9]),
        .I1(compare_value_reg[10]),
        .I2(compare_value_reg[13]),
        .I3(compare_value_reg[15]),
        .I4(\compare_value[0]_i_20_n_0 ),
        .O(\compare_value[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \compare_value[0]_i_15 
       (.I0(\compare_value[0]_i_17_n_0 ),
        .I1(compare_value_reg[7]),
        .I2(compare_value_reg[14]),
        .I3(compare_value_reg[0]),
        .I4(compare_value_reg[2]),
        .O(\compare_value[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0155FFFFFFFFFFFF)) 
    \compare_value[0]_i_16 
       (.I0(compare_value_reg[7]),
        .I1(compare_value_reg[4]),
        .I2(compare_value_reg[5]),
        .I3(compare_value_reg[6]),
        .I4(compare_value_reg[9]),
        .I5(compare_value_reg[8]),
        .O(\compare_value[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \compare_value[0]_i_17 
       (.I0(compare_value_reg[27]),
        .I1(compare_value_reg[24]),
        .I2(compare_value_reg[31]),
        .O(\compare_value[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \compare_value[0]_i_18 
       (.I0(counter_compare_reg[6]),
        .I1(counter_compare_reg[4]),
        .I2(counter_compare_reg[5]),
        .I3(counter_compare_reg[7]),
        .I4(counter_compare_reg[8]),
        .I5(counter_compare_reg[9]),
        .O(\compare_value[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \compare_value[0]_i_19 
       (.I0(counter_compare_reg[10]),
        .I1(counter_compare_reg[11]),
        .I2(counter_compare_reg[12]),
        .I3(counter_compare_reg[13]),
        .O(\compare_value[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \compare_value[0]_i_20 
       (.I0(compare_value_reg[8]),
        .I1(compare_value_reg[6]),
        .I2(compare_value_reg[3]),
        .I3(compare_value_reg[1]),
        .O(\compare_value[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \compare_value[0]_i_3 
       (.I0(\compare_value[0]_i_11_n_0 ),
        .I1(\compare_value[0]_i_12_n_0 ),
        .I2(\compare_value[0]_i_13_n_0 ),
        .I3(\compare_value[0]_i_14_n_0 ),
        .I4(\compare_value[0]_i_15_n_0 ),
        .I5(breath_dir),
        .O(\compare_value[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \compare_value[0]_i_4 
       (.I0(\compare_value[0]_i_16_n_0 ),
        .I1(compare_value_reg[10]),
        .I2(compare_value_reg[13]),
        .I3(compare_value_reg[11]),
        .I4(compare_value_reg[12]),
        .O(\compare_value[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \compare_value[0]_i_5 
       (.I0(\compare_value[0]_i_13_n_0 ),
        .I1(\compare_value[0]_i_17_n_0 ),
        .I2(compare_value_reg[18]),
        .I3(compare_value_reg[17]),
        .I4(breath_dir),
        .I5(\compare_value[0]_i_11_n_0 ),
        .O(\compare_value[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000777F)) 
    \compare_value[0]_i_6 
       (.I0(counter_compare_reg[15]),
        .I1(counter_compare_reg[14]),
        .I2(\compare_value[0]_i_18_n_0 ),
        .I3(\compare_value[0]_i_19_n_0 ),
        .I4(counter_compare_reg[16]),
        .O(\compare_value[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[0]_i_7 
       (.I0(data[3]),
        .I1(compare_value_reg[3]),
        .I2(breath_dir),
        .O(\compare_value[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[0]_i_8 
       (.I0(data[2]),
        .I1(compare_value_reg[2]),
        .I2(breath_dir),
        .O(\compare_value[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[0]_i_9 
       (.I0(data[1]),
        .I1(compare_value_reg[1]),
        .I2(breath_dir),
        .O(\compare_value[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[12]_i_2 
       (.I0(data[15]),
        .I1(compare_value_reg[15]),
        .I2(breath_dir),
        .O(\compare_value[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[12]_i_3 
       (.I0(data[14]),
        .I1(compare_value_reg[14]),
        .I2(breath_dir),
        .O(\compare_value[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[12]_i_4 
       (.I0(data[13]),
        .I1(compare_value_reg[13]),
        .I2(breath_dir),
        .O(\compare_value[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[12]_i_5 
       (.I0(data[12]),
        .I1(compare_value_reg[12]),
        .I2(breath_dir),
        .O(\compare_value[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[16]_i_2 
       (.I0(compare_value_reg[19]),
        .I1(breath_dir),
        .O(\compare_value[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[16]_i_3 
       (.I0(compare_value_reg[18]),
        .I1(breath_dir),
        .O(\compare_value[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[16]_i_4 
       (.I0(compare_value_reg[17]),
        .I1(breath_dir),
        .O(\compare_value[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[16]_i_5 
       (.I0(compare_value_reg[16]),
        .I1(breath_dir),
        .O(\compare_value[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[20]_i_2 
       (.I0(compare_value_reg[23]),
        .I1(breath_dir),
        .O(\compare_value[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[20]_i_3 
       (.I0(compare_value_reg[22]),
        .I1(breath_dir),
        .O(\compare_value[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[20]_i_4 
       (.I0(compare_value_reg[21]),
        .I1(breath_dir),
        .O(\compare_value[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[20]_i_5 
       (.I0(compare_value_reg[20]),
        .I1(breath_dir),
        .O(\compare_value[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[24]_i_2 
       (.I0(compare_value_reg[27]),
        .I1(breath_dir),
        .O(\compare_value[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[24]_i_3 
       (.I0(compare_value_reg[26]),
        .I1(breath_dir),
        .O(\compare_value[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[24]_i_4 
       (.I0(compare_value_reg[25]),
        .I1(breath_dir),
        .O(\compare_value[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[24]_i_5 
       (.I0(compare_value_reg[24]),
        .I1(breath_dir),
        .O(\compare_value[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \compare_value[28]_i_2 
       (.I0(breath_dir),
        .I1(compare_value_reg[31]),
        .O(\compare_value[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[28]_i_3 
       (.I0(compare_value_reg[30]),
        .I1(breath_dir),
        .O(\compare_value[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[28]_i_4 
       (.I0(compare_value_reg[29]),
        .I1(breath_dir),
        .O(\compare_value[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \compare_value[28]_i_5 
       (.I0(compare_value_reg[28]),
        .I1(breath_dir),
        .O(\compare_value[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[4]_i_2 
       (.I0(data[7]),
        .I1(compare_value_reg[7]),
        .I2(breath_dir),
        .O(\compare_value[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[4]_i_3 
       (.I0(data[6]),
        .I1(compare_value_reg[6]),
        .I2(breath_dir),
        .O(\compare_value[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \compare_value[4]_i_4 
       (.I0(compare_value_reg[5]),
        .I1(breath_dir),
        .I2(data[5]),
        .O(\compare_value[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \compare_value[4]_i_5 
       (.I0(compare_value_reg[4]),
        .I1(breath_dir),
        .I2(data[4]),
        .O(\compare_value[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[8]_i_2 
       (.I0(data[11]),
        .I1(compare_value_reg[11]),
        .I2(breath_dir),
        .O(\compare_value[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[8]_i_3 
       (.I0(data[10]),
        .I1(compare_value_reg[10]),
        .I2(breath_dir),
        .O(\compare_value[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[8]_i_4 
       (.I0(data[9]),
        .I1(compare_value_reg[9]),
        .I2(breath_dir),
        .O(\compare_value[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \compare_value[8]_i_5 
       (.I0(data[8]),
        .I1(compare_value_reg[8]),
        .I2(breath_dir),
        .O(\compare_value[8]_i_5_n_0 ));
  FDCE \compare_value_reg[0] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[0]_i_2_n_7 ),
        .Q(compare_value_reg[0]));
  CARRY4 \compare_value_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\compare_value_reg[0]_i_2_n_0 ,\compare_value_reg[0]_i_2_n_1 ,\compare_value_reg[0]_i_2_n_2 ,\compare_value_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({breath_dir,breath_dir,breath_dir,1'b0}),
        .O({\compare_value_reg[0]_i_2_n_4 ,\compare_value_reg[0]_i_2_n_5 ,\compare_value_reg[0]_i_2_n_6 ,\compare_value_reg[0]_i_2_n_7 }),
        .S({\compare_value[0]_i_7_n_0 ,\compare_value[0]_i_8_n_0 ,\compare_value[0]_i_9_n_0 ,\compare_value[0]_i_10_n_0 }));
  FDCE \compare_value_reg[10] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[8]_i_1_n_5 ),
        .Q(compare_value_reg[10]));
  FDCE \compare_value_reg[11] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[8]_i_1_n_4 ),
        .Q(compare_value_reg[11]));
  FDCE \compare_value_reg[12] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[12]_i_1_n_7 ),
        .Q(compare_value_reg[12]));
  CARRY4 \compare_value_reg[12]_i_1 
       (.CI(\compare_value_reg[8]_i_1_n_0 ),
        .CO({\compare_value_reg[12]_i_1_n_0 ,\compare_value_reg[12]_i_1_n_1 ,\compare_value_reg[12]_i_1_n_2 ,\compare_value_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({breath_dir,breath_dir,breath_dir,breath_dir}),
        .O({\compare_value_reg[12]_i_1_n_4 ,\compare_value_reg[12]_i_1_n_5 ,\compare_value_reg[12]_i_1_n_6 ,\compare_value_reg[12]_i_1_n_7 }),
        .S({\compare_value[12]_i_2_n_0 ,\compare_value[12]_i_3_n_0 ,\compare_value[12]_i_4_n_0 ,\compare_value[12]_i_5_n_0 }));
  FDCE \compare_value_reg[13] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[12]_i_1_n_6 ),
        .Q(compare_value_reg[13]));
  FDCE \compare_value_reg[14] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[12]_i_1_n_5 ),
        .Q(compare_value_reg[14]));
  FDCE \compare_value_reg[15] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[12]_i_1_n_4 ),
        .Q(compare_value_reg[15]));
  FDCE \compare_value_reg[16] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[16]_i_1_n_7 ),
        .Q(compare_value_reg[16]));
  CARRY4 \compare_value_reg[16]_i_1 
       (.CI(\compare_value_reg[12]_i_1_n_0 ),
        .CO({\compare_value_reg[16]_i_1_n_0 ,\compare_value_reg[16]_i_1_n_1 ,\compare_value_reg[16]_i_1_n_2 ,\compare_value_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({breath_dir,breath_dir,breath_dir,breath_dir}),
        .O({\compare_value_reg[16]_i_1_n_4 ,\compare_value_reg[16]_i_1_n_5 ,\compare_value_reg[16]_i_1_n_6 ,\compare_value_reg[16]_i_1_n_7 }),
        .S({\compare_value[16]_i_2_n_0 ,\compare_value[16]_i_3_n_0 ,\compare_value[16]_i_4_n_0 ,\compare_value[16]_i_5_n_0 }));
  FDCE \compare_value_reg[17] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[16]_i_1_n_6 ),
        .Q(compare_value_reg[17]));
  FDCE \compare_value_reg[18] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[16]_i_1_n_5 ),
        .Q(compare_value_reg[18]));
  FDCE \compare_value_reg[19] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[16]_i_1_n_4 ),
        .Q(compare_value_reg[19]));
  FDCE \compare_value_reg[1] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[0]_i_2_n_6 ),
        .Q(compare_value_reg[1]));
  FDCE \compare_value_reg[20] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[20]_i_1_n_7 ),
        .Q(compare_value_reg[20]));
  CARRY4 \compare_value_reg[20]_i_1 
       (.CI(\compare_value_reg[16]_i_1_n_0 ),
        .CO({\compare_value_reg[20]_i_1_n_0 ,\compare_value_reg[20]_i_1_n_1 ,\compare_value_reg[20]_i_1_n_2 ,\compare_value_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({breath_dir,breath_dir,breath_dir,breath_dir}),
        .O({\compare_value_reg[20]_i_1_n_4 ,\compare_value_reg[20]_i_1_n_5 ,\compare_value_reg[20]_i_1_n_6 ,\compare_value_reg[20]_i_1_n_7 }),
        .S({\compare_value[20]_i_2_n_0 ,\compare_value[20]_i_3_n_0 ,\compare_value[20]_i_4_n_0 ,\compare_value[20]_i_5_n_0 }));
  FDCE \compare_value_reg[21] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[20]_i_1_n_6 ),
        .Q(compare_value_reg[21]));
  FDCE \compare_value_reg[22] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[20]_i_1_n_5 ),
        .Q(compare_value_reg[22]));
  FDCE \compare_value_reg[23] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[20]_i_1_n_4 ),
        .Q(compare_value_reg[23]));
  FDCE \compare_value_reg[24] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[24]_i_1_n_7 ),
        .Q(compare_value_reg[24]));
  CARRY4 \compare_value_reg[24]_i_1 
       (.CI(\compare_value_reg[20]_i_1_n_0 ),
        .CO({\compare_value_reg[24]_i_1_n_0 ,\compare_value_reg[24]_i_1_n_1 ,\compare_value_reg[24]_i_1_n_2 ,\compare_value_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({breath_dir,breath_dir,breath_dir,breath_dir}),
        .O({\compare_value_reg[24]_i_1_n_4 ,\compare_value_reg[24]_i_1_n_5 ,\compare_value_reg[24]_i_1_n_6 ,\compare_value_reg[24]_i_1_n_7 }),
        .S({\compare_value[24]_i_2_n_0 ,\compare_value[24]_i_3_n_0 ,\compare_value[24]_i_4_n_0 ,\compare_value[24]_i_5_n_0 }));
  FDCE \compare_value_reg[25] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[24]_i_1_n_6 ),
        .Q(compare_value_reg[25]));
  FDCE \compare_value_reg[26] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[24]_i_1_n_5 ),
        .Q(compare_value_reg[26]));
  FDCE \compare_value_reg[27] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[24]_i_1_n_4 ),
        .Q(compare_value_reg[27]));
  FDCE \compare_value_reg[28] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[28]_i_1_n_7 ),
        .Q(compare_value_reg[28]));
  CARRY4 \compare_value_reg[28]_i_1 
       (.CI(\compare_value_reg[24]_i_1_n_0 ),
        .CO({\NLW_compare_value_reg[28]_i_1_CO_UNCONNECTED [3],\compare_value_reg[28]_i_1_n_1 ,\compare_value_reg[28]_i_1_n_2 ,\compare_value_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,breath_dir,breath_dir,breath_dir}),
        .O({\compare_value_reg[28]_i_1_n_4 ,\compare_value_reg[28]_i_1_n_5 ,\compare_value_reg[28]_i_1_n_6 ,\compare_value_reg[28]_i_1_n_7 }),
        .S({\compare_value[28]_i_2_n_0 ,\compare_value[28]_i_3_n_0 ,\compare_value[28]_i_4_n_0 ,\compare_value[28]_i_5_n_0 }));
  FDCE \compare_value_reg[29] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[28]_i_1_n_6 ),
        .Q(compare_value_reg[29]));
  FDCE \compare_value_reg[2] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[0]_i_2_n_5 ),
        .Q(compare_value_reg[2]));
  FDCE \compare_value_reg[30] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[28]_i_1_n_5 ),
        .Q(compare_value_reg[30]));
  FDCE \compare_value_reg[31] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[28]_i_1_n_4 ),
        .Q(compare_value_reg[31]));
  FDCE \compare_value_reg[3] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[0]_i_2_n_4 ),
        .Q(compare_value_reg[3]));
  FDCE \compare_value_reg[4] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[4]_i_1_n_7 ),
        .Q(compare_value_reg[4]));
  CARRY4 \compare_value_reg[4]_i_1 
       (.CI(\compare_value_reg[0]_i_2_n_0 ),
        .CO({\compare_value_reg[4]_i_1_n_0 ,\compare_value_reg[4]_i_1_n_1 ,\compare_value_reg[4]_i_1_n_2 ,\compare_value_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({breath_dir,breath_dir,1'b0,1'b0}),
        .O({\compare_value_reg[4]_i_1_n_4 ,\compare_value_reg[4]_i_1_n_5 ,\compare_value_reg[4]_i_1_n_6 ,\compare_value_reg[4]_i_1_n_7 }),
        .S({\compare_value[4]_i_2_n_0 ,\compare_value[4]_i_3_n_0 ,\compare_value[4]_i_4_n_0 ,\compare_value[4]_i_5_n_0 }));
  FDCE \compare_value_reg[5] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[4]_i_1_n_6 ),
        .Q(compare_value_reg[5]));
  FDCE \compare_value_reg[6] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[4]_i_1_n_5 ),
        .Q(compare_value_reg[6]));
  FDCE \compare_value_reg[7] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[4]_i_1_n_4 ),
        .Q(compare_value_reg[7]));
  FDCE \compare_value_reg[8] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[8]_i_1_n_7 ),
        .Q(compare_value_reg[8]));
  CARRY4 \compare_value_reg[8]_i_1 
       (.CI(\compare_value_reg[4]_i_1_n_0 ),
        .CO({\compare_value_reg[8]_i_1_n_0 ,\compare_value_reg[8]_i_1_n_1 ,\compare_value_reg[8]_i_1_n_2 ,\compare_value_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({breath_dir,breath_dir,breath_dir,breath_dir}),
        .O({\compare_value_reg[8]_i_1_n_4 ,\compare_value_reg[8]_i_1_n_5 ,\compare_value_reg[8]_i_1_n_6 ,\compare_value_reg[8]_i_1_n_7 }),
        .S({\compare_value[8]_i_2_n_0 ,\compare_value[8]_i_3_n_0 ,\compare_value[8]_i_4_n_0 ,\compare_value[8]_i_5_n_0 }));
  FDCE \compare_value_reg[9] 
       (.C(clk),
        .CE(compare_value),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\compare_value_reg[8]_i_1_n_6 ),
        .Q(compare_value_reg[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[0]_i_2 
       (.I0(\counter_breath_reg_n_0_[0] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[0]_i_3 
       (.I0(\counter_breath_reg_n_0_[3] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[0]_i_4 
       (.I0(\counter_breath_reg_n_0_[2] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[0]_i_5 
       (.I0(\counter_breath_reg_n_0_[1] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_breath[0]_i_6 
       (.I0(\counter_breath_reg_n_0_[0] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[12]_i_2 
       (.I0(counter_breath_reg[15]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[12]_i_3 
       (.I0(counter_breath_reg[14]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[12]_i_4 
       (.I0(counter_breath_reg[13]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[12]_i_5 
       (.I0(counter_breath_reg[12]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[16]_i_2 
       (.I0(counter_breath_reg[19]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[16]_i_3 
       (.I0(counter_breath_reg[18]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[16]_i_4 
       (.I0(counter_breath_reg[17]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[16]_i_5 
       (.I0(counter_breath_reg[16]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[20]_i_2 
       (.I0(counter_breath_reg[23]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[20]_i_3 
       (.I0(counter_breath_reg[22]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[20]_i_4 
       (.I0(counter_breath_reg[21]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[20]_i_5 
       (.I0(counter_breath_reg[20]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[24]_i_2 
       (.I0(counter_breath_reg[26]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[24]_i_3 
       (.I0(counter_breath_reg[25]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[24]_i_4 
       (.I0(counter_breath_reg[24]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[4]_i_2 
       (.I0(\counter_breath_reg_n_0_[7] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[4]_i_3 
       (.I0(\counter_breath_reg_n_0_[6] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[4]_i_4 
       (.I0(\counter_breath_reg_n_0_[5] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[4]_i_5 
       (.I0(\counter_breath_reg_n_0_[4] ),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[8]_i_2 
       (.I0(counter_breath_reg[11]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[8]_i_3 
       (.I0(counter_breath_reg[10]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[8]_i_4 
       (.I0(counter_breath_reg[9]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_breath[8]_i_5 
       (.I0(counter_breath_reg[8]),
        .I1(\led_number_state[3]_i_4_n_0 ),
        .O(\counter_breath[8]_i_5_n_0 ));
  FDCE \counter_breath_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[0]_i_1_n_7 ),
        .Q(\counter_breath_reg_n_0_[0] ));
  CARRY4 \counter_breath_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_breath_reg[0]_i_1_n_0 ,\counter_breath_reg[0]_i_1_n_1 ,\counter_breath_reg[0]_i_1_n_2 ,\counter_breath_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter_breath[0]_i_2_n_0 }),
        .O({\counter_breath_reg[0]_i_1_n_4 ,\counter_breath_reg[0]_i_1_n_5 ,\counter_breath_reg[0]_i_1_n_6 ,\counter_breath_reg[0]_i_1_n_7 }),
        .S({\counter_breath[0]_i_3_n_0 ,\counter_breath[0]_i_4_n_0 ,\counter_breath[0]_i_5_n_0 ,\counter_breath[0]_i_6_n_0 }));
  FDCE \counter_breath_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[8]_i_1_n_5 ),
        .Q(counter_breath_reg[10]));
  FDCE \counter_breath_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[8]_i_1_n_4 ),
        .Q(counter_breath_reg[11]));
  FDCE \counter_breath_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[12]_i_1_n_7 ),
        .Q(counter_breath_reg[12]));
  CARRY4 \counter_breath_reg[12]_i_1 
       (.CI(\counter_breath_reg[8]_i_1_n_0 ),
        .CO({\counter_breath_reg[12]_i_1_n_0 ,\counter_breath_reg[12]_i_1_n_1 ,\counter_breath_reg[12]_i_1_n_2 ,\counter_breath_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_breath_reg[12]_i_1_n_4 ,\counter_breath_reg[12]_i_1_n_5 ,\counter_breath_reg[12]_i_1_n_6 ,\counter_breath_reg[12]_i_1_n_7 }),
        .S({\counter_breath[12]_i_2_n_0 ,\counter_breath[12]_i_3_n_0 ,\counter_breath[12]_i_4_n_0 ,\counter_breath[12]_i_5_n_0 }));
  FDCE \counter_breath_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[12]_i_1_n_6 ),
        .Q(counter_breath_reg[13]));
  FDCE \counter_breath_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[12]_i_1_n_5 ),
        .Q(counter_breath_reg[14]));
  FDCE \counter_breath_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[12]_i_1_n_4 ),
        .Q(counter_breath_reg[15]));
  FDCE \counter_breath_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[16]_i_1_n_7 ),
        .Q(counter_breath_reg[16]));
  CARRY4 \counter_breath_reg[16]_i_1 
       (.CI(\counter_breath_reg[12]_i_1_n_0 ),
        .CO({\counter_breath_reg[16]_i_1_n_0 ,\counter_breath_reg[16]_i_1_n_1 ,\counter_breath_reg[16]_i_1_n_2 ,\counter_breath_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_breath_reg[16]_i_1_n_4 ,\counter_breath_reg[16]_i_1_n_5 ,\counter_breath_reg[16]_i_1_n_6 ,\counter_breath_reg[16]_i_1_n_7 }),
        .S({\counter_breath[16]_i_2_n_0 ,\counter_breath[16]_i_3_n_0 ,\counter_breath[16]_i_4_n_0 ,\counter_breath[16]_i_5_n_0 }));
  FDCE \counter_breath_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[16]_i_1_n_6 ),
        .Q(counter_breath_reg[17]));
  FDCE \counter_breath_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[16]_i_1_n_5 ),
        .Q(counter_breath_reg[18]));
  FDCE \counter_breath_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[16]_i_1_n_4 ),
        .Q(counter_breath_reg[19]));
  FDCE \counter_breath_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[0]_i_1_n_6 ),
        .Q(\counter_breath_reg_n_0_[1] ));
  FDCE \counter_breath_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[20]_i_1_n_7 ),
        .Q(counter_breath_reg[20]));
  CARRY4 \counter_breath_reg[20]_i_1 
       (.CI(\counter_breath_reg[16]_i_1_n_0 ),
        .CO({\counter_breath_reg[20]_i_1_n_0 ,\counter_breath_reg[20]_i_1_n_1 ,\counter_breath_reg[20]_i_1_n_2 ,\counter_breath_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_breath_reg[20]_i_1_n_4 ,\counter_breath_reg[20]_i_1_n_5 ,\counter_breath_reg[20]_i_1_n_6 ,\counter_breath_reg[20]_i_1_n_7 }),
        .S({\counter_breath[20]_i_2_n_0 ,\counter_breath[20]_i_3_n_0 ,\counter_breath[20]_i_4_n_0 ,\counter_breath[20]_i_5_n_0 }));
  FDCE \counter_breath_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[20]_i_1_n_6 ),
        .Q(counter_breath_reg[21]));
  FDCE \counter_breath_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[20]_i_1_n_5 ),
        .Q(counter_breath_reg[22]));
  FDCE \counter_breath_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[20]_i_1_n_4 ),
        .Q(counter_breath_reg[23]));
  FDCE \counter_breath_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[24]_i_1_n_7 ),
        .Q(counter_breath_reg[24]));
  CARRY4 \counter_breath_reg[24]_i_1 
       (.CI(\counter_breath_reg[20]_i_1_n_0 ),
        .CO({\counter_breath_reg[24]_i_1_n_0 ,\NLW_counter_breath_reg[24]_i_1_CO_UNCONNECTED [2],\counter_breath_reg[24]_i_1_n_2 ,\counter_breath_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_breath_reg[24]_i_1_O_UNCONNECTED [3],\counter_breath_reg[24]_i_1_n_5 ,\counter_breath_reg[24]_i_1_n_6 ,\counter_breath_reg[24]_i_1_n_7 }),
        .S({1'b1,\counter_breath[24]_i_2_n_0 ,\counter_breath[24]_i_3_n_0 ,\counter_breath[24]_i_4_n_0 }));
  FDCE \counter_breath_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[24]_i_1_n_6 ),
        .Q(counter_breath_reg[25]));
  FDCE \counter_breath_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[24]_i_1_n_5 ),
        .Q(counter_breath_reg[26]));
  FDCE \counter_breath_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[24]_i_1_n_0 ),
        .Q(counter_breath_reg[27]));
  FDCE \counter_breath_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[0]_i_1_n_5 ),
        .Q(\counter_breath_reg_n_0_[2] ));
  FDCE \counter_breath_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[0]_i_1_n_4 ),
        .Q(\counter_breath_reg_n_0_[3] ));
  FDCE \counter_breath_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[4]_i_1_n_7 ),
        .Q(\counter_breath_reg_n_0_[4] ));
  CARRY4 \counter_breath_reg[4]_i_1 
       (.CI(\counter_breath_reg[0]_i_1_n_0 ),
        .CO({\counter_breath_reg[4]_i_1_n_0 ,\counter_breath_reg[4]_i_1_n_1 ,\counter_breath_reg[4]_i_1_n_2 ,\counter_breath_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_breath_reg[4]_i_1_n_4 ,\counter_breath_reg[4]_i_1_n_5 ,\counter_breath_reg[4]_i_1_n_6 ,\counter_breath_reg[4]_i_1_n_7 }),
        .S({\counter_breath[4]_i_2_n_0 ,\counter_breath[4]_i_3_n_0 ,\counter_breath[4]_i_4_n_0 ,\counter_breath[4]_i_5_n_0 }));
  FDCE \counter_breath_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[4]_i_1_n_6 ),
        .Q(\counter_breath_reg_n_0_[5] ));
  FDCE \counter_breath_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[4]_i_1_n_5 ),
        .Q(\counter_breath_reg_n_0_[6] ));
  FDCE \counter_breath_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[4]_i_1_n_4 ),
        .Q(\counter_breath_reg_n_0_[7] ));
  FDCE \counter_breath_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[8]_i_1_n_7 ),
        .Q(counter_breath_reg[8]));
  CARRY4 \counter_breath_reg[8]_i_1 
       (.CI(\counter_breath_reg[4]_i_1_n_0 ),
        .CO({\counter_breath_reg[8]_i_1_n_0 ,\counter_breath_reg[8]_i_1_n_1 ,\counter_breath_reg[8]_i_1_n_2 ,\counter_breath_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_breath_reg[8]_i_1_n_4 ,\counter_breath_reg[8]_i_1_n_5 ,\counter_breath_reg[8]_i_1_n_6 ,\counter_breath_reg[8]_i_1_n_7 }),
        .S({\counter_breath[8]_i_2_n_0 ,\counter_breath[8]_i_3_n_0 ,\counter_breath[8]_i_4_n_0 ,\counter_breath[8]_i_5_n_0 }));
  FDCE \counter_breath_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_breath_reg[8]_i_1_n_6 ),
        .Q(counter_breath_reg[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[0]_i_2 
       (.I0(\counter_compare_reg_n_0_[3] ),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[0]_i_3 
       (.I0(\counter_compare_reg_n_0_[2] ),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[0]_i_4 
       (.I0(\counter_compare_reg_n_0_[1] ),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \counter_compare[0]_i_5 
       (.I0(\counter_compare_reg_n_0_[0] ),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[12]_i_2 
       (.I0(counter_compare_reg[15]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[12]_i_3 
       (.I0(counter_compare_reg[14]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[12]_i_4 
       (.I0(counter_compare_reg[13]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[12]_i_5 
       (.I0(counter_compare_reg[12]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[4]_i_2 
       (.I0(counter_compare_reg[7]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[4]_i_3 
       (.I0(counter_compare_reg[6]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[4]_i_4 
       (.I0(counter_compare_reg[5]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[4]_i_5 
       (.I0(counter_compare_reg[4]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[8]_i_2 
       (.I0(counter_compare_reg[11]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[8]_i_3 
       (.I0(counter_compare_reg[10]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[8]_i_4 
       (.I0(counter_compare_reg[9]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_compare[8]_i_5 
       (.I0(counter_compare_reg[8]),
        .I1(\compare_value[0]_i_6_n_0 ),
        .O(\counter_compare[8]_i_5_n_0 ));
  FDCE \counter_compare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[0]_i_1_n_7 ),
        .Q(\counter_compare_reg_n_0_[0] ));
  CARRY4 \counter_compare_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_compare_reg[0]_i_1_n_0 ,\counter_compare_reg[0]_i_1_n_1 ,\counter_compare_reg[0]_i_1_n_2 ,\counter_compare_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\compare_value[0]_i_6_n_0 }),
        .O({\counter_compare_reg[0]_i_1_n_4 ,\counter_compare_reg[0]_i_1_n_5 ,\counter_compare_reg[0]_i_1_n_6 ,\counter_compare_reg[0]_i_1_n_7 }),
        .S({\counter_compare[0]_i_2_n_0 ,\counter_compare[0]_i_3_n_0 ,\counter_compare[0]_i_4_n_0 ,\counter_compare[0]_i_5_n_0 }));
  FDCE \counter_compare_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[8]_i_1_n_5 ),
        .Q(counter_compare_reg[10]));
  FDCE \counter_compare_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[8]_i_1_n_4 ),
        .Q(counter_compare_reg[11]));
  FDCE \counter_compare_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[12]_i_1_n_7 ),
        .Q(counter_compare_reg[12]));
  CARRY4 \counter_compare_reg[12]_i_1 
       (.CI(\counter_compare_reg[8]_i_1_n_0 ),
        .CO({\counter_compare_reg[12]_i_1_n_0 ,\counter_compare_reg[12]_i_1_n_1 ,\counter_compare_reg[12]_i_1_n_2 ,\counter_compare_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_compare_reg[12]_i_1_n_4 ,\counter_compare_reg[12]_i_1_n_5 ,\counter_compare_reg[12]_i_1_n_6 ,\counter_compare_reg[12]_i_1_n_7 }),
        .S({\counter_compare[12]_i_2_n_0 ,\counter_compare[12]_i_3_n_0 ,\counter_compare[12]_i_4_n_0 ,\counter_compare[12]_i_5_n_0 }));
  FDCE \counter_compare_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[12]_i_1_n_6 ),
        .Q(counter_compare_reg[13]));
  FDCE \counter_compare_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[12]_i_1_n_5 ),
        .Q(counter_compare_reg[14]));
  FDCE \counter_compare_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[12]_i_1_n_4 ),
        .Q(counter_compare_reg[15]));
  FDCE \counter_compare_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[16]_i_1_n_3 ),
        .Q(counter_compare_reg[16]));
  CARRY4 \counter_compare_reg[16]_i_1 
       (.CI(\counter_compare_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_compare_reg[16]_i_1_CO_UNCONNECTED [3:1],\counter_compare_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_compare_reg[16]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \counter_compare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[0]_i_1_n_6 ),
        .Q(\counter_compare_reg_n_0_[1] ));
  FDCE \counter_compare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[0]_i_1_n_5 ),
        .Q(\counter_compare_reg_n_0_[2] ));
  FDCE \counter_compare_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[0]_i_1_n_4 ),
        .Q(\counter_compare_reg_n_0_[3] ));
  FDCE \counter_compare_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[4]_i_1_n_7 ),
        .Q(counter_compare_reg[4]));
  CARRY4 \counter_compare_reg[4]_i_1 
       (.CI(\counter_compare_reg[0]_i_1_n_0 ),
        .CO({\counter_compare_reg[4]_i_1_n_0 ,\counter_compare_reg[4]_i_1_n_1 ,\counter_compare_reg[4]_i_1_n_2 ,\counter_compare_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_compare_reg[4]_i_1_n_4 ,\counter_compare_reg[4]_i_1_n_5 ,\counter_compare_reg[4]_i_1_n_6 ,\counter_compare_reg[4]_i_1_n_7 }),
        .S({\counter_compare[4]_i_2_n_0 ,\counter_compare[4]_i_3_n_0 ,\counter_compare[4]_i_4_n_0 ,\counter_compare[4]_i_5_n_0 }));
  FDCE \counter_compare_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[4]_i_1_n_6 ),
        .Q(counter_compare_reg[5]));
  FDCE \counter_compare_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[4]_i_1_n_5 ),
        .Q(counter_compare_reg[6]));
  FDCE \counter_compare_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[4]_i_1_n_4 ),
        .Q(counter_compare_reg[7]));
  FDCE \counter_compare_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[8]_i_1_n_7 ),
        .Q(counter_compare_reg[8]));
  CARRY4 \counter_compare_reg[8]_i_1 
       (.CI(\counter_compare_reg[4]_i_1_n_0 ),
        .CO({\counter_compare_reg[8]_i_1_n_0 ,\counter_compare_reg[8]_i_1_n_1 ,\counter_compare_reg[8]_i_1_n_2 ,\counter_compare_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_compare_reg[8]_i_1_n_4 ,\counter_compare_reg[8]_i_1_n_5 ,\counter_compare_reg[8]_i_1_n_6 ,\counter_compare_reg[8]_i_1_n_7 }),
        .S({\counter_compare[8]_i_2_n_0 ,\counter_compare[8]_i_3_n_0 ,\counter_compare[8]_i_4_n_0 ,\counter_compare[8]_i_5_n_0 }));
  FDCE \counter_compare_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_compare_reg[8]_i_1_n_6 ),
        .Q(counter_compare_reg[9]));
  LUT5 #(
    .INIT(32'h0000777F)) 
    \counter_pwm[0]_i_2 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .O(\counter_pwm[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[0]_i_3 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[3]),
        .O(\counter_pwm[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[0]_i_4 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[2]),
        .O(\counter_pwm[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[0]_i_5 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[1]),
        .O(\counter_pwm[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000777F)) 
    \counter_pwm[0]_i_6 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[0]),
        .O(\counter_pwm[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \counter_pwm[0]_i_7 
       (.I0(counter_pwm_reg[6]),
        .I1(counter_pwm_reg[4]),
        .I2(counter_pwm_reg[5]),
        .I3(counter_pwm_reg[7]),
        .I4(counter_pwm_reg[8]),
        .I5(counter_pwm_reg[9]),
        .O(\counter_pwm[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_pwm[0]_i_8 
       (.I0(counter_pwm_reg[10]),
        .I1(counter_pwm_reg[11]),
        .I2(counter_pwm_reg[12]),
        .I3(counter_pwm_reg[13]),
        .O(\counter_pwm[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000222A)) 
    \counter_pwm[12]_i_2 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .O(\counter_pwm[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000444C)) 
    \counter_pwm[12]_i_3 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .O(\counter_pwm[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[12]_i_4 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[13]),
        .O(\counter_pwm[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[12]_i_5 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[12]),
        .O(\counter_pwm[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[4]_i_2 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[7]),
        .O(\counter_pwm[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[4]_i_3 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[6]),
        .O(\counter_pwm[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[4]_i_4 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[5]),
        .O(\counter_pwm[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[4]_i_5 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[4]),
        .O(\counter_pwm[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[8]_i_2 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[11]),
        .O(\counter_pwm[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[8]_i_3 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[10]),
        .O(\counter_pwm[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[8]_i_4 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[9]),
        .O(\counter_pwm[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F00000000)) 
    \counter_pwm[8]_i_5 
       (.I0(counter_pwm_reg[15]),
        .I1(counter_pwm_reg[14]),
        .I2(\counter_pwm[0]_i_7_n_0 ),
        .I3(\counter_pwm[0]_i_8_n_0 ),
        .I4(counter_pwm_reg[16]),
        .I5(counter_pwm_reg[8]),
        .O(\counter_pwm[8]_i_5_n_0 ));
  FDCE \counter_pwm_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[0]_i_1_n_7 ),
        .Q(counter_pwm_reg[0]));
  CARRY4 \counter_pwm_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_pwm_reg[0]_i_1_n_0 ,\counter_pwm_reg[0]_i_1_n_1 ,\counter_pwm_reg[0]_i_1_n_2 ,\counter_pwm_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter_pwm[0]_i_2_n_0 }),
        .O({\counter_pwm_reg[0]_i_1_n_4 ,\counter_pwm_reg[0]_i_1_n_5 ,\counter_pwm_reg[0]_i_1_n_6 ,\counter_pwm_reg[0]_i_1_n_7 }),
        .S({\counter_pwm[0]_i_3_n_0 ,\counter_pwm[0]_i_4_n_0 ,\counter_pwm[0]_i_5_n_0 ,\counter_pwm[0]_i_6_n_0 }));
  FDCE \counter_pwm_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[8]_i_1_n_5 ),
        .Q(counter_pwm_reg[10]));
  FDCE \counter_pwm_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[8]_i_1_n_4 ),
        .Q(counter_pwm_reg[11]));
  FDCE \counter_pwm_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[12]_i_1_n_7 ),
        .Q(counter_pwm_reg[12]));
  CARRY4 \counter_pwm_reg[12]_i_1 
       (.CI(\counter_pwm_reg[8]_i_1_n_0 ),
        .CO({\counter_pwm_reg[12]_i_1_n_0 ,\counter_pwm_reg[12]_i_1_n_1 ,\counter_pwm_reg[12]_i_1_n_2 ,\counter_pwm_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_pwm_reg[12]_i_1_n_4 ,\counter_pwm_reg[12]_i_1_n_5 ,\counter_pwm_reg[12]_i_1_n_6 ,\counter_pwm_reg[12]_i_1_n_7 }),
        .S({\counter_pwm[12]_i_2_n_0 ,\counter_pwm[12]_i_3_n_0 ,\counter_pwm[12]_i_4_n_0 ,\counter_pwm[12]_i_5_n_0 }));
  FDCE \counter_pwm_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[12]_i_1_n_6 ),
        .Q(counter_pwm_reg[13]));
  FDCE \counter_pwm_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[12]_i_1_n_5 ),
        .Q(counter_pwm_reg[14]));
  FDCE \counter_pwm_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[12]_i_1_n_4 ),
        .Q(counter_pwm_reg[15]));
  FDCE \counter_pwm_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[16]_i_1_n_3 ),
        .Q(counter_pwm_reg[16]));
  CARRY4 \counter_pwm_reg[16]_i_1 
       (.CI(\counter_pwm_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_pwm_reg[16]_i_1_CO_UNCONNECTED [3:1],\counter_pwm_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_pwm_reg[16]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \counter_pwm_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[0]_i_1_n_6 ),
        .Q(counter_pwm_reg[1]));
  FDCE \counter_pwm_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[0]_i_1_n_5 ),
        .Q(counter_pwm_reg[2]));
  FDCE \counter_pwm_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[0]_i_1_n_4 ),
        .Q(counter_pwm_reg[3]));
  FDCE \counter_pwm_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[4]_i_1_n_7 ),
        .Q(counter_pwm_reg[4]));
  CARRY4 \counter_pwm_reg[4]_i_1 
       (.CI(\counter_pwm_reg[0]_i_1_n_0 ),
        .CO({\counter_pwm_reg[4]_i_1_n_0 ,\counter_pwm_reg[4]_i_1_n_1 ,\counter_pwm_reg[4]_i_1_n_2 ,\counter_pwm_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_pwm_reg[4]_i_1_n_4 ,\counter_pwm_reg[4]_i_1_n_5 ,\counter_pwm_reg[4]_i_1_n_6 ,\counter_pwm_reg[4]_i_1_n_7 }),
        .S({\counter_pwm[4]_i_2_n_0 ,\counter_pwm[4]_i_3_n_0 ,\counter_pwm[4]_i_4_n_0 ,\counter_pwm[4]_i_5_n_0 }));
  FDCE \counter_pwm_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[4]_i_1_n_6 ),
        .Q(counter_pwm_reg[5]));
  FDCE \counter_pwm_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[4]_i_1_n_5 ),
        .Q(counter_pwm_reg[6]));
  FDCE \counter_pwm_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[4]_i_1_n_4 ),
        .Q(counter_pwm_reg[7]));
  FDCE \counter_pwm_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[8]_i_1_n_7 ),
        .Q(counter_pwm_reg[8]));
  CARRY4 \counter_pwm_reg[8]_i_1 
       (.CI(\counter_pwm_reg[4]_i_1_n_0 ),
        .CO({\counter_pwm_reg[8]_i_1_n_0 ,\counter_pwm_reg[8]_i_1_n_1 ,\counter_pwm_reg[8]_i_1_n_2 ,\counter_pwm_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_pwm_reg[8]_i_1_n_4 ,\counter_pwm_reg[8]_i_1_n_5 ,\counter_pwm_reg[8]_i_1_n_6 ,\counter_pwm_reg[8]_i_1_n_7 }),
        .S({\counter_pwm[8]_i_2_n_0 ,\counter_pwm[8]_i_3_n_0 ,\counter_pwm[8]_i_4_n_0 ,\counter_pwm[8]_i_5_n_0 }));
  FDCE \counter_pwm_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\counter_pwm_reg[8]_i_1_n_6 ),
        .Q(counter_pwm_reg[9]));
  CARRY4 led_breath_view0_carry
       (.CI(1'b0),
        .CO({led_breath_view0_carry_n_0,led_breath_view0_carry_n_1,led_breath_view0_carry_n_2,led_breath_view0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({led_breath_view0_carry_i_1_n_0,led_breath_view0_carry_i_2_n_0,led_breath_view0_carry_i_3_n_0,led_breath_view0_carry_i_4_n_0}),
        .O(NLW_led_breath_view0_carry_O_UNCONNECTED[3:0]),
        .S({led_breath_view0_carry_i_5_n_0,led_breath_view0_carry_i_6_n_0,led_breath_view0_carry_i_7_n_0,led_breath_view0_carry_i_8_n_0}));
  CARRY4 led_breath_view0_carry__0
       (.CI(led_breath_view0_carry_n_0),
        .CO({led_breath_view0_carry__0_n_0,led_breath_view0_carry__0_n_1,led_breath_view0_carry__0_n_2,led_breath_view0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({led_breath_view0_carry_i_1__0_n_0,led_breath_view0_carry_i_2__0_n_0,led_breath_view0_carry_i_3__0_n_0,led_breath_view0_carry_i_4__0_n_0}),
        .O(NLW_led_breath_view0_carry__0_O_UNCONNECTED[3:0]),
        .S({led_breath_view0_carry_i_5__0_n_0,led_breath_view0_carry_i_6__0_n_0,led_breath_view0_carry_i_7__0_n_0,led_breath_view0_carry_i_8__0_n_0}));
  CARRY4 led_breath_view0_carry__1
       (.CI(led_breath_view0_carry__0_n_0),
        .CO({led_breath_view0_carry__1_n_0,led_breath_view0_carry__1_n_1,led_breath_view0_carry__1_n_2,led_breath_view0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({led_breath_view0_carry_i_1__1_n_0,led_breath_view0_carry_i_2__1_n_0,led_breath_view0_carry_i_3__1_n_0,led_breath_view0_carry_i_4__1_n_0}),
        .O(NLW_led_breath_view0_carry__1_O_UNCONNECTED[3:0]),
        .S({led_breath_view0_carry_i_5__1_n_0,led_breath_view0_carry_i_6__1_n_0,led_breath_view0_carry_i_7__1_n_0,led_breath_view0_carry_i_8__1_n_0}));
  CARRY4 led_breath_view0_carry__2
       (.CI(led_breath_view0_carry__1_n_0),
        .CO({led_breath_view0_carry__2_n_0,led_breath_view0_carry__2_n_1,led_breath_view0_carry__2_n_2,led_breath_view0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({led_breath_view0_carry_i_1__2_n_0,led_breath_view0_carry_i_2__2_n_0,led_breath_view0_carry_i_3__2_n_0,led_breath_view0_carry_i_4__2_n_0}),
        .O(NLW_led_breath_view0_carry__2_O_UNCONNECTED[3:0]),
        .S({led_breath_view0_carry_i_5__2_n_0,led_breath_view0_carry_i_6__2_n_0,led_breath_view0_carry_i_7__2_n_0,led_breath_view0_carry_i_8__2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_1
       (.I0(compare_value_reg[7]),
        .I1(counter_pwm_reg[7]),
        .I2(compare_value_reg[6]),
        .I3(counter_pwm_reg[6]),
        .O(led_breath_view0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_1__0
       (.I0(compare_value_reg[15]),
        .I1(counter_pwm_reg[15]),
        .I2(compare_value_reg[14]),
        .I3(counter_pwm_reg[14]),
        .O(led_breath_view0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led_breath_view0_carry_i_1__1
       (.I0(compare_value_reg[23]),
        .I1(compare_value_reg[22]),
        .O(led_breath_view0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led_breath_view0_carry_i_1__2
       (.I0(compare_value_reg[31]),
        .I1(compare_value_reg[30]),
        .O(led_breath_view0_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_2
       (.I0(compare_value_reg[5]),
        .I1(counter_pwm_reg[5]),
        .I2(compare_value_reg[4]),
        .I3(counter_pwm_reg[4]),
        .O(led_breath_view0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_2__0
       (.I0(compare_value_reg[13]),
        .I1(counter_pwm_reg[13]),
        .I2(compare_value_reg[12]),
        .I3(counter_pwm_reg[12]),
        .O(led_breath_view0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led_breath_view0_carry_i_2__1
       (.I0(compare_value_reg[21]),
        .I1(compare_value_reg[20]),
        .O(led_breath_view0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led_breath_view0_carry_i_2__2
       (.I0(compare_value_reg[29]),
        .I1(compare_value_reg[28]),
        .O(led_breath_view0_carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_3
       (.I0(compare_value_reg[3]),
        .I1(counter_pwm_reg[3]),
        .I2(compare_value_reg[2]),
        .I3(counter_pwm_reg[2]),
        .O(led_breath_view0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_3__0
       (.I0(compare_value_reg[11]),
        .I1(counter_pwm_reg[11]),
        .I2(compare_value_reg[10]),
        .I3(counter_pwm_reg[10]),
        .O(led_breath_view0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led_breath_view0_carry_i_3__1
       (.I0(compare_value_reg[19]),
        .I1(compare_value_reg[18]),
        .O(led_breath_view0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led_breath_view0_carry_i_3__2
       (.I0(compare_value_reg[27]),
        .I1(compare_value_reg[26]),
        .O(led_breath_view0_carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_4
       (.I0(compare_value_reg[1]),
        .I1(counter_pwm_reg[1]),
        .I2(compare_value_reg[0]),
        .I3(counter_pwm_reg[0]),
        .O(led_breath_view0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    led_breath_view0_carry_i_4__0
       (.I0(compare_value_reg[9]),
        .I1(counter_pwm_reg[9]),
        .I2(compare_value_reg[8]),
        .I3(counter_pwm_reg[8]),
        .O(led_breath_view0_carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'hAE)) 
    led_breath_view0_carry_i_4__1
       (.I0(compare_value_reg[17]),
        .I1(compare_value_reg[16]),
        .I2(counter_pwm_reg[16]),
        .O(led_breath_view0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led_breath_view0_carry_i_4__2
       (.I0(compare_value_reg[25]),
        .I1(compare_value_reg[24]),
        .O(led_breath_view0_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_5
       (.I0(counter_pwm_reg[7]),
        .I1(compare_value_reg[7]),
        .I2(counter_pwm_reg[6]),
        .I3(compare_value_reg[6]),
        .O(led_breath_view0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_5__0
       (.I0(counter_pwm_reg[15]),
        .I1(compare_value_reg[15]),
        .I2(counter_pwm_reg[14]),
        .I3(compare_value_reg[14]),
        .O(led_breath_view0_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    led_breath_view0_carry_i_5__1
       (.I0(compare_value_reg[23]),
        .I1(compare_value_reg[22]),
        .O(led_breath_view0_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    led_breath_view0_carry_i_5__2
       (.I0(compare_value_reg[31]),
        .I1(compare_value_reg[30]),
        .O(led_breath_view0_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_6
       (.I0(counter_pwm_reg[5]),
        .I1(compare_value_reg[5]),
        .I2(counter_pwm_reg[4]),
        .I3(compare_value_reg[4]),
        .O(led_breath_view0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_6__0
       (.I0(counter_pwm_reg[13]),
        .I1(compare_value_reg[13]),
        .I2(counter_pwm_reg[12]),
        .I3(compare_value_reg[12]),
        .O(led_breath_view0_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    led_breath_view0_carry_i_6__1
       (.I0(compare_value_reg[21]),
        .I1(compare_value_reg[20]),
        .O(led_breath_view0_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    led_breath_view0_carry_i_6__2
       (.I0(compare_value_reg[29]),
        .I1(compare_value_reg[28]),
        .O(led_breath_view0_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_7
       (.I0(counter_pwm_reg[3]),
        .I1(compare_value_reg[3]),
        .I2(counter_pwm_reg[2]),
        .I3(compare_value_reg[2]),
        .O(led_breath_view0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_7__0
       (.I0(counter_pwm_reg[11]),
        .I1(compare_value_reg[11]),
        .I2(counter_pwm_reg[10]),
        .I3(compare_value_reg[10]),
        .O(led_breath_view0_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    led_breath_view0_carry_i_7__1
       (.I0(compare_value_reg[19]),
        .I1(compare_value_reg[18]),
        .O(led_breath_view0_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    led_breath_view0_carry_i_7__2
       (.I0(compare_value_reg[27]),
        .I1(compare_value_reg[26]),
        .O(led_breath_view0_carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_8
       (.I0(counter_pwm_reg[1]),
        .I1(compare_value_reg[1]),
        .I2(counter_pwm_reg[0]),
        .I3(compare_value_reg[0]),
        .O(led_breath_view0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_breath_view0_carry_i_8__0
       (.I0(counter_pwm_reg[9]),
        .I1(compare_value_reg[9]),
        .I2(counter_pwm_reg[8]),
        .I3(compare_value_reg[8]),
        .O(led_breath_view0_carry_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    led_breath_view0_carry_i_8__1
       (.I0(compare_value_reg[17]),
        .I1(counter_pwm_reg[16]),
        .I2(compare_value_reg[16]),
        .O(led_breath_view0_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    led_breath_view0_carry_i_8__2
       (.I0(compare_value_reg[25]),
        .I1(compare_value_reg[24]),
        .O(led_breath_view0_carry_i_8__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    led_breath_view_i_1
       (.I0(led_breath_view0_carry__2_n_0),
        .I1(rstn),
        .I2(led_breath_view),
        .O(led_breath_view_i_1_n_0));
  FDRE led_breath_view_reg
       (.C(clk),
        .CE(1'b1),
        .D(led_breath_view_i_1_n_0),
        .Q(led_breath_view),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF77FF7788000800)) 
    \led_number[0]_i_1 
       (.I0(\led_number_state[3]_i_4_n_0 ),
        .I1(breath_dir),
        .I2(\led_number_state_reg_n_0_[1] ),
        .I3(\led_number_state_reg_n_0_[0] ),
        .I4(\led_number[0]_i_2_n_0 ),
        .I5(\led_number_reg_n_0_[0] ),
        .O(\led_number[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \led_number[0]_i_2 
       (.I0(\led_number_state_reg_n_0_[3] ),
        .I1(\led_number_state_reg_n_0_[2] ),
        .O(\led_number[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF9CFF00009C00)) 
    \led_number[1]_i_1 
       (.I0(\led_number_state_reg_n_0_[0] ),
        .I1(\led_number_state_reg_n_0_[1] ),
        .I2(\led_number_state_reg_n_0_[3] ),
        .I3(\led_number_state[3]_i_4_n_0 ),
        .I4(\led_number[1]_i_2_n_0 ),
        .I5(\led_number_reg_n_0_[1] ),
        .O(\led_number[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \led_number[1]_i_2 
       (.I0(\led_number_state_reg_n_0_[3] ),
        .I1(\led_number_state_reg_n_0_[2] ),
        .I2(\led_number_state_reg_n_0_[0] ),
        .I3(\led_number_state_reg_n_0_[1] ),
        .I4(breath_dir),
        .O(\led_number[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF77FFF7700088800)) 
    \led_number[2]_i_1 
       (.I0(\led_number_state[3]_i_4_n_0 ),
        .I1(breath_dir),
        .I2(\led_number_state[3]_i_3_n_0 ),
        .I3(\led_number_state_reg_n_0_[2] ),
        .I4(\led_number_state_reg_n_0_[3] ),
        .I5(\led_number_reg_n_0_[2] ),
        .O(\led_number[2]_i_1_n_0 ));
  FDCE \led_number_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\led_number[0]_i_1_n_0 ),
        .Q(\led_number_reg_n_0_[0] ));
  FDCE \led_number_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\led_number[1]_i_1_n_0 ),
        .Q(\led_number_reg_n_0_[1] ));
  FDCE \led_number_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\led_number[2]_i_1_n_0 ),
        .Q(\led_number_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \led_number_state[0]_i_1 
       (.I0(\led_number_state_reg_n_0_[0] ),
        .I1(\led_number_state_reg_n_0_[3] ),
        .I2(\led_number_state_reg_n_0_[1] ),
        .I3(\led_number_state_reg_n_0_[2] ),
        .O(\led_number_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \led_number_state[1]_i_1 
       (.I0(\led_number_state_reg_n_0_[0] ),
        .I1(\led_number_state_reg_n_0_[1] ),
        .I2(\led_number_state_reg_n_0_[3] ),
        .I3(\led_number_state_reg_n_0_[2] ),
        .O(\led_number_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1FA0)) 
    \led_number_state[2]_i_1 
       (.I0(\led_number_state_reg_n_0_[0] ),
        .I1(\led_number_state_reg_n_0_[3] ),
        .I2(\led_number_state_reg_n_0_[1] ),
        .I3(\led_number_state_reg_n_0_[2] ),
        .O(\led_number_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00000000000000)) 
    \led_number_state[3]_i_1 
       (.I0(\led_number_state_reg_n_0_[3] ),
        .I1(\led_number_state_reg_n_0_[2] ),
        .I2(\led_number_state[3]_i_3_n_0 ),
        .I3(breath_dir),
        .I4(\led_number_state[3]_i_4_n_0 ),
        .I5(rstn),
        .O(\led_number_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2CCC)) 
    \led_number_state[3]_i_2 
       (.I0(\led_number_state_reg_n_0_[0] ),
        .I1(\led_number_state_reg_n_0_[3] ),
        .I2(\led_number_state_reg_n_0_[1] ),
        .I3(\led_number_state_reg_n_0_[2] ),
        .O(\led_number_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_number_state[3]_i_3 
       (.I0(\led_number_state_reg_n_0_[0] ),
        .I1(\led_number_state_reg_n_0_[1] ),
        .O(\led_number_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEEAE)) 
    \led_number_state[3]_i_4 
       (.I0(counter_breath_reg[27]),
        .I1(counter_breath_reg[26]),
        .I2(\led_number_state[3]_i_5_n_0 ),
        .I3(counter_breath_reg[25]),
        .O(\led_number_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBBBFBF)) 
    \led_number_state[3]_i_5 
       (.I0(\led_number_state[3]_i_6_n_0 ),
        .I1(counter_breath_reg[18]),
        .I2(counter_breath_reg[17]),
        .I3(\led_number_state[3]_i_7_n_0 ),
        .I4(\led_number_state[3]_i_8_n_0 ),
        .I5(counter_breath_reg[19]),
        .O(\led_number_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \led_number_state[3]_i_6 
       (.I0(counter_breath_reg[22]),
        .I1(counter_breath_reg[24]),
        .I2(counter_breath_reg[23]),
        .I3(counter_breath_reg[20]),
        .I4(counter_breath_reg[21]),
        .O(\led_number_state[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \led_number_state[3]_i_7 
       (.I0(counter_breath_reg[13]),
        .I1(counter_breath_reg[14]),
        .I2(counter_breath_reg[15]),
        .I3(counter_breath_reg[16]),
        .O(\led_number_state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \led_number_state[3]_i_8 
       (.I0(counter_breath_reg[11]),
        .I1(counter_breath_reg[12]),
        .I2(counter_breath_reg[9]),
        .I3(counter_breath_reg[8]),
        .I4(counter_breath_reg[10]),
        .O(\led_number_state[3]_i_8_n_0 ));
  FDCE \led_number_state_reg[0] 
       (.C(clk),
        .CE(\led_number_state[3]_i_1_n_0 ),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\led_number_state[0]_i_1_n_0 ),
        .Q(\led_number_state_reg_n_0_[0] ));
  FDCE \led_number_state_reg[1] 
       (.C(clk),
        .CE(\led_number_state[3]_i_1_n_0 ),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\led_number_state[1]_i_1_n_0 ),
        .Q(\led_number_state_reg_n_0_[1] ));
  FDCE \led_number_state_reg[2] 
       (.C(clk),
        .CE(\led_number_state[3]_i_1_n_0 ),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\led_number_state[2]_i_1_n_0 ),
        .Q(\led_number_state_reg_n_0_[2] ));
  FDCE \led_number_state_reg[3] 
       (.C(clk),
        .CE(\led_number_state[3]_i_1_n_0 ),
        .CLR(\led_reg[7]_i_1_n_0 ),
        .D(\led_number_state[3]_i_2_n_0 ),
        .Q(\led_number_state_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \led_reg[0]_i_1 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[2] ),
        .I2(\led_number_reg_n_0_[0] ),
        .I3(\led_number_reg_n_0_[1] ),
        .I4(led[0]),
        .O(\led_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \led_reg[1]_i_1 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[0] ),
        .I2(\led_number_reg_n_0_[2] ),
        .I3(\led_number_reg_n_0_[1] ),
        .I4(led[1]),
        .O(\led_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \led_reg[2]_i_1 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[1] ),
        .I2(\led_number_reg_n_0_[2] ),
        .I3(\led_number_reg_n_0_[0] ),
        .I4(led[2]),
        .O(\led_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \led_reg[3]_i_1 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[2] ),
        .I2(\led_number_reg_n_0_[0] ),
        .I3(\led_number_reg_n_0_[1] ),
        .I4(led[3]),
        .O(\led_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \led_reg[4]_i_1 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[2] ),
        .I2(\led_number_reg_n_0_[0] ),
        .I3(\led_number_reg_n_0_[1] ),
        .I4(led[4]),
        .O(\led_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \led_reg[5]_i_1 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[0] ),
        .I2(\led_number_reg_n_0_[2] ),
        .I3(\led_number_reg_n_0_[1] ),
        .I4(led[5]),
        .O(\led_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \led_reg[6]_i_1 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[0] ),
        .I2(\led_number_reg_n_0_[2] ),
        .I3(\led_number_reg_n_0_[1] ),
        .I4(led[6]),
        .O(\led_reg[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_reg[7]_i_1 
       (.I0(rstn),
        .O(\led_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \led_reg[7]_i_2 
       (.I0(led_breath_view),
        .I1(\led_number_reg_n_0_[1] ),
        .I2(\led_number_reg_n_0_[0] ),
        .I3(\led_number_reg_n_0_[2] ),
        .I4(led[7]),
        .O(\led_reg[7]_i_2_n_0 ));
  FDRE \led_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(\led_reg[7]_i_1_n_0 ));
  FDRE \led_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(\led_reg[7]_i_1_n_0 ));
  FDRE \led_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(\led_reg[7]_i_1_n_0 ));
  FDRE \led_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[3]_i_1_n_0 ),
        .Q(led[3]),
        .R(\led_reg[7]_i_1_n_0 ));
  FDRE \led_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[4]_i_1_n_0 ),
        .Q(led[4]),
        .R(\led_reg[7]_i_1_n_0 ));
  FDRE \led_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[5]_i_1_n_0 ),
        .Q(led[5]),
        .R(\led_reg[7]_i_1_n_0 ));
  FDRE \led_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[6]_i_1_n_0 ),
        .Q(led[6]),
        .R(\led_reg[7]_i_1_n_0 ));
  FDRE \led_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_reg[7]_i_2_n_0 ),
        .Q(led[7]),
        .R(\led_reg[7]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
