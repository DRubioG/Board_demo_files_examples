// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Mar 21 22:13:33 2020
// Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vga_top_0_sim_netlist.v
// Design      : vga_top_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_gen
   (ready_r_reg_0,
    RST_N_0,
    D,
    VSYNC,
    HSYNC,
    CLK,
    RST_N);
  output ready_r_reg_0;
  output RST_N_0;
  output [7:0]D;
  output VSYNC;
  output HSYNC;
  input CLK;
  input RST_N;

  wire CLK;
  wire [7:0]D;
  wire HSYNC;
  wire HSYNC_INST_0_i_1_n_0;
  wire RST_N;
  wire RST_N_0;
  wire VSYNC;
  wire VSYNC_INST_0_i_1_n_0;
  wire [10:0]cnt_H;
  wire \cnt_H[10]_i_2_n_0 ;
  wire \cnt_H[10]_i_3_n_0 ;
  wire \cnt_H[10]_i_4_n_0 ;
  wire \cnt_H[10]_i_5_n_0 ;
  wire \cnt_H[8]_i_2_n_0 ;
  wire \cnt_H[9]_i_2_n_0 ;
  wire \cnt_H_reg_n_0_[0] ;
  wire \cnt_H_reg_n_0_[10] ;
  wire \cnt_H_reg_n_0_[1] ;
  wire \cnt_H_reg_n_0_[2] ;
  wire \cnt_H_reg_n_0_[3] ;
  wire \cnt_H_reg_n_0_[4] ;
  wire \cnt_H_reg_n_0_[5] ;
  wire \cnt_H_reg_n_0_[6] ;
  wire \cnt_H_reg_n_0_[7] ;
  wire \cnt_H_reg_n_0_[8] ;
  wire \cnt_H_reg_n_0_[9] ;
  wire \cnt_V[0]_i_1_n_0 ;
  wire \cnt_V[10]_i_1_n_0 ;
  wire \cnt_V[10]_i_2_n_0 ;
  wire \cnt_V[10]_i_3_n_0 ;
  wire \cnt_V[10]_i_4_n_0 ;
  wire \cnt_V[10]_i_5_n_0 ;
  wire \cnt_V[10]_i_6_n_0 ;
  wire \cnt_V[10]_i_7_n_0 ;
  wire \cnt_V[1]_i_1_n_0 ;
  wire \cnt_V[2]_i_1_n_0 ;
  wire \cnt_V[3]_i_1_n_0 ;
  wire \cnt_V[4]_i_1_n_0 ;
  wire \cnt_V[5]_i_1_n_0 ;
  wire \cnt_V[5]_i_2_n_0 ;
  wire \cnt_V[6]_i_1_n_0 ;
  wire \cnt_V[7]_i_1_n_0 ;
  wire \cnt_V[8]_i_1_n_0 ;
  wire \cnt_V[9]_i_1_n_0 ;
  wire \cnt_V[9]_i_2_n_0 ;
  wire \cnt_V_reg_n_0_[0] ;
  wire \cnt_V_reg_n_0_[10] ;
  wire \cnt_V_reg_n_0_[1] ;
  wire \cnt_V_reg_n_0_[2] ;
  wire \cnt_V_reg_n_0_[3] ;
  wire \cnt_V_reg_n_0_[4] ;
  wire \cnt_V_reg_n_0_[5] ;
  wire \cnt_V_reg_n_0_[6] ;
  wire \cnt_V_reg_n_0_[7] ;
  wire \cnt_V_reg_n_0_[8] ;
  wire \cnt_V_reg_n_0_[9] ;
  wire \color_table[1]_i_2_n_0 ;
  wire \color_table[1]_i_3_n_0 ;
  wire \color_table[2]_i_2_n_0 ;
  wire \color_table[2]_i_3_n_0 ;
  wire \color_table[3]_i_2_n_0 ;
  wire \color_table[3]_i_3_n_0 ;
  wire \color_table[3]_i_4_n_0 ;
  wire \color_table[3]_i_5_n_0 ;
  wire \color_table[4]_i_2_n_0 ;
  wire \color_table[4]_i_3_n_0 ;
  wire \color_table[4]_i_4_n_0 ;
  wire \color_table[4]_i_5_n_0 ;
  wire \color_table[5]_i_2_n_0 ;
  wire \color_table[5]_i_3_n_0 ;
  wire \color_table[5]_i_4_n_0 ;
  wire \color_table[6]_i_2_n_0 ;
  wire \color_table[6]_i_3_n_0 ;
  wire \color_table[6]_i_4_n_0 ;
  wire \color_table[6]_i_5_n_0 ;
  wire \color_table[7]_i_10_n_0 ;
  wire \color_table[7]_i_11_n_0 ;
  wire \color_table[7]_i_2_n_0 ;
  wire \color_table[7]_i_3_n_0 ;
  wire \color_table[7]_i_4_n_0 ;
  wire \color_table[7]_i_5_n_0 ;
  wire \color_table[7]_i_6_n_0 ;
  wire \color_table[7]_i_7_n_0 ;
  wire \color_table[7]_i_8_n_0 ;
  wire \color_table[7]_i_9_n_0 ;
  wire ready_r_i_1_n_0;
  wire ready_r_i_3_n_0;
  wire ready_r_i_4_n_0;
  wire ready_r_i_5_n_0;
  wire ready_r_i_6_n_0;
  wire ready_r_i_7_n_0;
  wire ready_r_i_8_n_0;
  wire ready_r_reg_0;

  LUT4 #(
    .INIT(16'hFFFE)) 
    HSYNC_INST_0
       (.I0(HSYNC_INST_0_i_1_n_0),
        .I1(\cnt_H_reg_n_0_[6] ),
        .I2(\cnt_H_reg_n_0_[8] ),
        .I3(\cnt_H_reg_n_0_[7] ),
        .O(HSYNC));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    HSYNC_INST_0_i_1
       (.I0(\cnt_H_reg_n_0_[9] ),
        .I1(\cnt_H_reg_n_0_[10] ),
        .I2(\cnt_H_reg_n_0_[3] ),
        .I3(\cnt_H_reg_n_0_[4] ),
        .I4(\cnt_H_reg_n_0_[5] ),
        .O(HSYNC_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    VSYNC_INST_0
       (.I0(\cnt_V_reg_n_0_[2] ),
        .I1(\cnt_V_reg_n_0_[0] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[3] ),
        .I4(\cnt_V_reg_n_0_[9] ),
        .I5(VSYNC_INST_0_i_1_n_0),
        .O(VSYNC));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    VSYNC_INST_0_i_1
       (.I0(\cnt_V_reg_n_0_[5] ),
        .I1(\cnt_V_reg_n_0_[7] ),
        .I2(\cnt_V_reg_n_0_[6] ),
        .I3(\cnt_V_reg_n_0_[10] ),
        .I4(\cnt_V_reg_n_0_[8] ),
        .I5(\cnt_V_reg_n_0_[4] ),
        .O(VSYNC_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_H[0]_i_1 
       (.I0(\cnt_H_reg_n_0_[0] ),
        .O(cnt_H[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \cnt_H[10]_i_1 
       (.I0(\cnt_H[10]_i_2_n_0 ),
        .I1(\cnt_H_reg_n_0_[8] ),
        .I2(\cnt_H_reg_n_0_[9] ),
        .I3(\cnt_H[10]_i_3_n_0 ),
        .I4(\cnt_H_reg_n_0_[10] ),
        .O(cnt_H[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \cnt_H[10]_i_2 
       (.I0(\cnt_H_reg_n_0_[6] ),
        .I1(\cnt_H_reg_n_0_[7] ),
        .I2(\cnt_H_reg_n_0_[5] ),
        .I3(\cnt_H[8]_i_2_n_0 ),
        .I4(\cnt_H_reg_n_0_[4] ),
        .O(\cnt_H[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \cnt_H[10]_i_3 
       (.I0(\cnt_H[10]_i_4_n_0 ),
        .I1(\cnt_H_reg_n_0_[3] ),
        .I2(\cnt_H_reg_n_0_[5] ),
        .I3(\cnt_H_reg_n_0_[7] ),
        .I4(\cnt_H_reg_n_0_[2] ),
        .O(\cnt_H[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \cnt_H[10]_i_4 
       (.I0(\cnt_H_reg_n_0_[1] ),
        .I1(\cnt_H_reg_n_0_[4] ),
        .I2(\cnt_H_reg_n_0_[0] ),
        .I3(\cnt_H_reg_n_0_[6] ),
        .I4(\cnt_H_reg_n_0_[8] ),
        .I5(\cnt_H[10]_i_5_n_0 ),
        .O(\cnt_H[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_H[10]_i_5 
       (.I0(\cnt_H_reg_n_0_[10] ),
        .I1(\cnt_H_reg_n_0_[9] ),
        .O(\cnt_H[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_H[1]_i_1 
       (.I0(\cnt_H[10]_i_3_n_0 ),
        .I1(\cnt_H_reg_n_0_[1] ),
        .I2(\cnt_H_reg_n_0_[0] ),
        .O(cnt_H[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_H[2]_i_1 
       (.I0(\cnt_H_reg_n_0_[2] ),
        .I1(\cnt_H_reg_n_0_[0] ),
        .I2(\cnt_H_reg_n_0_[1] ),
        .O(cnt_H[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_H[3]_i_1 
       (.I0(\cnt_H_reg_n_0_[3] ),
        .I1(\cnt_H_reg_n_0_[2] ),
        .I2(\cnt_H_reg_n_0_[1] ),
        .I3(\cnt_H_reg_n_0_[0] ),
        .O(cnt_H[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_H[4]_i_1 
       (.I0(\cnt_H[10]_i_3_n_0 ),
        .I1(\cnt_H_reg_n_0_[3] ),
        .I2(\cnt_H_reg_n_0_[0] ),
        .I3(\cnt_H_reg_n_0_[1] ),
        .I4(\cnt_H_reg_n_0_[2] ),
        .I5(\cnt_H_reg_n_0_[4] ),
        .O(cnt_H[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \cnt_H[5]_i_1 
       (.I0(\cnt_H[10]_i_3_n_0 ),
        .I1(\cnt_H_reg_n_0_[4] ),
        .I2(\cnt_H[8]_i_2_n_0 ),
        .I3(\cnt_H_reg_n_0_[5] ),
        .O(cnt_H[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \cnt_H[6]_i_1 
       (.I0(\cnt_H[10]_i_3_n_0 ),
        .I1(\cnt_H_reg_n_0_[5] ),
        .I2(\cnt_H[8]_i_2_n_0 ),
        .I3(\cnt_H_reg_n_0_[4] ),
        .I4(\cnt_H_reg_n_0_[6] ),
        .O(cnt_H[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \cnt_H[7]_i_1 
       (.I0(\cnt_H_reg_n_0_[7] ),
        .I1(\cnt_H_reg_n_0_[6] ),
        .I2(\cnt_H_reg_n_0_[5] ),
        .I3(\cnt_H[8]_i_2_n_0 ),
        .I4(\cnt_H_reg_n_0_[4] ),
        .O(cnt_H[7]));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \cnt_H[8]_i_1 
       (.I0(\cnt_H_reg_n_0_[4] ),
        .I1(\cnt_H[8]_i_2_n_0 ),
        .I2(\cnt_H_reg_n_0_[5] ),
        .I3(\cnt_H_reg_n_0_[7] ),
        .I4(\cnt_H_reg_n_0_[6] ),
        .I5(\cnt_H_reg_n_0_[8] ),
        .O(cnt_H[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_H[8]_i_2 
       (.I0(\cnt_H_reg_n_0_[2] ),
        .I1(\cnt_H_reg_n_0_[1] ),
        .I2(\cnt_H_reg_n_0_[0] ),
        .I3(\cnt_H_reg_n_0_[3] ),
        .O(\cnt_H[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \cnt_H[9]_i_1 
       (.I0(\cnt_H_reg_n_0_[8] ),
        .I1(\cnt_H[9]_i_2_n_0 ),
        .I2(\cnt_H_reg_n_0_[7] ),
        .I3(\cnt_H_reg_n_0_[6] ),
        .I4(\cnt_H[10]_i_3_n_0 ),
        .I5(\cnt_H_reg_n_0_[9] ),
        .O(cnt_H[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_H[9]_i_2 
       (.I0(\cnt_H_reg_n_0_[4] ),
        .I1(\cnt_H_reg_n_0_[2] ),
        .I2(\cnt_H_reg_n_0_[1] ),
        .I3(\cnt_H_reg_n_0_[0] ),
        .I4(\cnt_H_reg_n_0_[3] ),
        .I5(\cnt_H_reg_n_0_[5] ),
        .O(\cnt_H[9]_i_2_n_0 ));
  FDCE \cnt_H_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[0]),
        .Q(\cnt_H_reg_n_0_[0] ));
  FDCE \cnt_H_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[10]),
        .Q(\cnt_H_reg_n_0_[10] ));
  FDCE \cnt_H_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[1]),
        .Q(\cnt_H_reg_n_0_[1] ));
  FDCE \cnt_H_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[2]),
        .Q(\cnt_H_reg_n_0_[2] ));
  FDCE \cnt_H_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[3]),
        .Q(\cnt_H_reg_n_0_[3] ));
  FDCE \cnt_H_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[4]),
        .Q(\cnt_H_reg_n_0_[4] ));
  FDCE \cnt_H_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[5]),
        .Q(\cnt_H_reg_n_0_[5] ));
  FDCE \cnt_H_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[6]),
        .Q(\cnt_H_reg_n_0_[6] ));
  FDCE \cnt_H_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[7]),
        .Q(\cnt_H_reg_n_0_[7] ));
  FDCE \cnt_H_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[8]),
        .Q(\cnt_H_reg_n_0_[8] ));
  FDCE \cnt_H_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(cnt_H[9]),
        .Q(\cnt_H_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_V[0]_i_1 
       (.I0(\cnt_V_reg_n_0_[0] ),
        .O(\cnt_V[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_V[10]_i_1 
       (.I0(\cnt_H[10]_i_3_n_0 ),
        .I1(\cnt_V[10]_i_3_n_0 ),
        .O(\cnt_V[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \cnt_V[10]_i_2 
       (.I0(\cnt_V_reg_n_0_[10] ),
        .I1(\cnt_V_reg_n_0_[9] ),
        .I2(\cnt_V_reg_n_0_[8] ),
        .I3(\cnt_V_reg_n_0_[7] ),
        .I4(\cnt_V[10]_i_4_n_0 ),
        .I5(\cnt_V_reg_n_0_[6] ),
        .O(\cnt_V[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \cnt_V[10]_i_3 
       (.I0(\cnt_V[10]_i_5_n_0 ),
        .I1(\cnt_V_reg_n_0_[2] ),
        .I2(\cnt_V[10]_i_6_n_0 ),
        .I3(\cnt_V_reg_n_0_[9] ),
        .I4(\cnt_V_reg_n_0_[3] ),
        .I5(\cnt_V[10]_i_7_n_0 ),
        .O(\cnt_V[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_V[10]_i_4 
       (.I0(\cnt_V_reg_n_0_[4] ),
        .I1(\cnt_V_reg_n_0_[2] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[0] ),
        .I4(\cnt_V_reg_n_0_[3] ),
        .I5(\cnt_V_reg_n_0_[5] ),
        .O(\cnt_V[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_V[10]_i_5 
       (.I0(\cnt_V_reg_n_0_[1] ),
        .I1(\cnt_V_reg_n_0_[0] ),
        .O(\cnt_V[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_V[10]_i_6 
       (.I0(\cnt_V_reg_n_0_[4] ),
        .I1(\cnt_V_reg_n_0_[8] ),
        .I2(\cnt_V_reg_n_0_[10] ),
        .O(\cnt_V[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt_V[10]_i_7 
       (.I0(\cnt_V_reg_n_0_[7] ),
        .I1(\cnt_V_reg_n_0_[6] ),
        .I2(\cnt_V_reg_n_0_[5] ),
        .O(\cnt_V[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_V[1]_i_1 
       (.I0(\cnt_V[10]_i_3_n_0 ),
        .I1(\cnt_V_reg_n_0_[1] ),
        .I2(\cnt_V_reg_n_0_[0] ),
        .O(\cnt_V[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_V[2]_i_1 
       (.I0(\cnt_V[10]_i_3_n_0 ),
        .I1(\cnt_V_reg_n_0_[0] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[2] ),
        .O(\cnt_V[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_V[3]_i_1 
       (.I0(\cnt_V[10]_i_3_n_0 ),
        .I1(\cnt_V_reg_n_0_[2] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[0] ),
        .I4(\cnt_V_reg_n_0_[3] ),
        .O(\cnt_V[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_V[4]_i_1 
       (.I0(\cnt_V_reg_n_0_[3] ),
        .I1(\cnt_V_reg_n_0_[0] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[2] ),
        .I4(\cnt_V_reg_n_0_[4] ),
        .O(\cnt_V[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt_V[5]_i_1 
       (.I0(\cnt_V[9]_i_2_n_0 ),
        .I1(\cnt_V[5]_i_2_n_0 ),
        .I2(\cnt_V_reg_n_0_[5] ),
        .O(\cnt_V[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_V[5]_i_2 
       (.I0(\cnt_V_reg_n_0_[3] ),
        .I1(\cnt_V_reg_n_0_[0] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[2] ),
        .I4(\cnt_V_reg_n_0_[4] ),
        .O(\cnt_V[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt_V[6]_i_1 
       (.I0(\cnt_V[9]_i_2_n_0 ),
        .I1(\cnt_V[10]_i_4_n_0 ),
        .I2(\cnt_V_reg_n_0_[6] ),
        .O(\cnt_V[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \cnt_V[7]_i_1 
       (.I0(\cnt_V[10]_i_4_n_0 ),
        .I1(\cnt_V_reg_n_0_[6] ),
        .I2(\cnt_V[9]_i_2_n_0 ),
        .I3(\cnt_V_reg_n_0_[7] ),
        .O(\cnt_V[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \cnt_V[8]_i_1 
       (.I0(\cnt_V_reg_n_0_[7] ),
        .I1(\cnt_V[10]_i_4_n_0 ),
        .I2(\cnt_V_reg_n_0_[6] ),
        .I3(\cnt_V_reg_n_0_[8] ),
        .O(\cnt_V[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \cnt_V[9]_i_1 
       (.I0(\cnt_V_reg_n_0_[8] ),
        .I1(\cnt_V_reg_n_0_[7] ),
        .I2(\cnt_V[10]_i_4_n_0 ),
        .I3(\cnt_V_reg_n_0_[6] ),
        .I4(\cnt_V[9]_i_2_n_0 ),
        .I5(\cnt_V_reg_n_0_[9] ),
        .O(\cnt_V[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \cnt_V[9]_i_2 
       (.I0(\cnt_V[10]_i_5_n_0 ),
        .I1(\cnt_V[10]_i_7_n_0 ),
        .I2(\cnt_V_reg_n_0_[9] ),
        .I3(\cnt_V_reg_n_0_[2] ),
        .I4(\cnt_V_reg_n_0_[3] ),
        .I5(\cnt_V[10]_i_6_n_0 ),
        .O(\cnt_V[9]_i_2_n_0 ));
  FDCE \cnt_V_reg[0] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[0]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[0] ));
  FDCE \cnt_V_reg[10] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[10]_i_2_n_0 ),
        .Q(\cnt_V_reg_n_0_[10] ));
  FDCE \cnt_V_reg[1] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[1]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[1] ));
  FDCE \cnt_V_reg[2] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[2]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[2] ));
  FDCE \cnt_V_reg[3] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[3]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[3] ));
  FDCE \cnt_V_reg[4] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[4]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[4] ));
  FDCE \cnt_V_reg[5] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[5]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[5] ));
  FDCE \cnt_V_reg[6] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[6]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[6] ));
  FDCE \cnt_V_reg[7] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[7]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[7] ));
  FDCE \cnt_V_reg[8] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[8]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[8] ));
  FDCE \cnt_V_reg[9] 
       (.C(CLK),
        .CE(\cnt_V[10]_i_1_n_0 ),
        .CLR(RST_N_0),
        .D(\cnt_V[9]_i_1_n_0 ),
        .Q(\cnt_V_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \color_table[0]_i_1 
       (.I0(\color_table[7]_i_2_n_0 ),
        .I1(\color_table[1]_i_2_n_0 ),
        .I2(\color_table[2]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \color_table[1]_i_1 
       (.I0(\color_table[7]_i_2_n_0 ),
        .I1(\color_table[1]_i_2_n_0 ),
        .I2(\color_table[2]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0222020222222222)) 
    \color_table[1]_i_2 
       (.I0(\color_table[2]_i_3_n_0 ),
        .I1(\color_table[7]_i_9_n_0 ),
        .I2(\color_table[4]_i_4_n_0 ),
        .I3(\color_table[1]_i_3_n_0 ),
        .I4(\color_table[7]_i_5_n_0 ),
        .I5(\color_table[4]_i_3_n_0 ),
        .O(\color_table[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8002)) 
    \color_table[1]_i_3 
       (.I0(ready_r_reg_0),
        .I1(\cnt_V_reg_n_0_[2] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[0] ),
        .O(\color_table[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \color_table[2]_i_1 
       (.I0(\color_table[4]_i_2_n_0 ),
        .I1(\color_table[2]_i_2_n_0 ),
        .I2(\color_table[7]_i_2_n_0 ),
        .I3(\color_table[3]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    \color_table[2]_i_2 
       (.I0(\color_table[2]_i_3_n_0 ),
        .I1(\color_table[6]_i_3_n_0 ),
        .I2(\color_table[7]_i_8_n_0 ),
        .I3(\color_table[7]_i_7_n_0 ),
        .I4(\color_table[5]_i_4_n_0 ),
        .I5(\color_table[7]_i_4_n_0 ),
        .O(\color_table[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555556FFFFFFFF)) 
    \color_table[2]_i_3 
       (.I0(\cnt_V_reg_n_0_[10] ),
        .I1(\cnt_V_reg_n_0_[8] ),
        .I2(\color_table[7]_i_10_n_0 ),
        .I3(ready_r_i_6_n_0),
        .I4(\cnt_V_reg_n_0_[9] ),
        .I5(ready_r_reg_0),
        .O(\color_table[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \color_table[3]_i_1 
       (.I0(\color_table[7]_i_2_n_0 ),
        .I1(\color_table[4]_i_2_n_0 ),
        .I2(\color_table[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFDFFFDFD00000000)) 
    \color_table[3]_i_2 
       (.I0(\color_table[5]_i_4_n_0 ),
        .I1(\color_table[3]_i_3_n_0 ),
        .I2(\color_table[3]_i_4_n_0 ),
        .I3(\color_table[6]_i_4_n_0 ),
        .I4(\color_table[3]_i_5_n_0 ),
        .I5(\color_table[7]_i_4_n_0 ),
        .O(\color_table[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \color_table[3]_i_3 
       (.I0(\cnt_V_reg_n_0_[5] ),
        .I1(ready_r_i_6_n_0),
        .I2(\cnt_V_reg_n_0_[6] ),
        .O(\color_table[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \color_table[3]_i_4 
       (.I0(\cnt_V_reg_n_0_[8] ),
        .I1(ready_r_i_6_n_0),
        .I2(\cnt_V_reg_n_0_[6] ),
        .I3(\cnt_V_reg_n_0_[7] ),
        .I4(\cnt_V_reg_n_0_[5] ),
        .O(\color_table[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h03300BB003300330)) 
    \color_table[3]_i_5 
       (.I0(\cnt_V_reg_n_0_[4] ),
        .I1(ready_r_reg_0),
        .I2(\cnt_V_reg_n_0_[0] ),
        .I3(\cnt_V_reg_n_0_[1] ),
        .I4(\cnt_V_reg_n_0_[2] ),
        .I5(\cnt_V_reg_n_0_[3] ),
        .O(\color_table[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \color_table[4]_i_1 
       (.I0(\color_table[6]_i_2_n_0 ),
        .I1(\color_table[5]_i_2_n_0 ),
        .I2(\color_table[7]_i_2_n_0 ),
        .I3(\color_table[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h5D00FFFF00000000)) 
    \color_table[4]_i_2 
       (.I0(\color_table[4]_i_3_n_0 ),
        .I1(\color_table[7]_i_5_n_0 ),
        .I2(\color_table[4]_i_4_n_0 ),
        .I3(\color_table[4]_i_5_n_0 ),
        .I4(\color_table[6]_i_3_n_0 ),
        .I5(\color_table[7]_i_4_n_0 ),
        .O(\color_table[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8002)) 
    \color_table[4]_i_3 
       (.I0(ready_r_reg_0),
        .I1(\cnt_V_reg_n_0_[6] ),
        .I2(ready_r_i_6_n_0),
        .I3(\cnt_V_reg_n_0_[5] ),
        .O(\color_table[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55570000AAA80000)) 
    \color_table[4]_i_4 
       (.I0(\cnt_V_reg_n_0_[3] ),
        .I1(\cnt_V_reg_n_0_[2] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[0] ),
        .I4(ready_r_reg_0),
        .I5(\cnt_V_reg_n_0_[4] ),
        .O(\color_table[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \color_table[4]_i_5 
       (.I0(\cnt_V_reg_n_0_[6] ),
        .I1(ready_r_i_6_n_0),
        .I2(\cnt_V_reg_n_0_[5] ),
        .I3(\cnt_V_reg_n_0_[7] ),
        .O(\color_table[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \color_table[5]_i_1 
       (.I0(\color_table[7]_i_2_n_0 ),
        .I1(\color_table[5]_i_2_n_0 ),
        .I2(\color_table[6]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD5DD)) 
    \color_table[5]_i_2 
       (.I0(\color_table[7]_i_4_n_0 ),
        .I1(\color_table[6]_i_3_n_0 ),
        .I2(\color_table[7]_i_8_n_0 ),
        .I3(\color_table[5]_i_3_n_0 ),
        .I4(\color_table[6]_i_4_n_0 ),
        .I5(\color_table[5]_i_4_n_0 ),
        .O(\color_table[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB337777777)) 
    \color_table[5]_i_3 
       (.I0(\cnt_V_reg_n_0_[4] ),
        .I1(ready_r_reg_0),
        .I2(\cnt_V_reg_n_0_[0] ),
        .I3(\cnt_V_reg_n_0_[1] ),
        .I4(\cnt_V_reg_n_0_[2] ),
        .I5(\cnt_V_reg_n_0_[3] ),
        .O(\color_table[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    \color_table[5]_i_4 
       (.I0(ready_r_reg_0),
        .I1(\cnt_V_reg_n_0_[7] ),
        .I2(\cnt_V_reg_n_0_[5] ),
        .I3(ready_r_i_6_n_0),
        .I4(\cnt_V_reg_n_0_[6] ),
        .O(\color_table[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \color_table[6]_i_1 
       (.I0(\color_table[7]_i_2_n_0 ),
        .I1(\color_table[7]_i_3_n_0 ),
        .I2(\color_table[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h1101FFFF00000000)) 
    \color_table[6]_i_2 
       (.I0(\color_table[7]_i_8_n_0 ),
        .I1(\color_table[6]_i_3_n_0 ),
        .I2(\color_table[6]_i_4_n_0 ),
        .I3(\color_table[6]_i_5_n_0 ),
        .I4(\color_table[7]_i_9_n_0 ),
        .I5(\color_table[7]_i_4_n_0 ),
        .O(\color_table[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \color_table[6]_i_3 
       (.I0(ready_r_reg_0),
        .I1(\cnt_V_reg_n_0_[5] ),
        .I2(\cnt_V_reg_n_0_[7] ),
        .I3(\cnt_V_reg_n_0_[6] ),
        .I4(ready_r_i_6_n_0),
        .I5(\cnt_V_reg_n_0_[8] ),
        .O(\color_table[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \color_table[6]_i_4 
       (.I0(ready_r_i_6_n_0),
        .I1(ready_r_reg_0),
        .I2(\cnt_V_reg_n_0_[5] ),
        .O(\color_table[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFFFF777777777)) 
    \color_table[6]_i_5 
       (.I0(\cnt_V_reg_n_0_[4] ),
        .I1(ready_r_reg_0),
        .I2(\cnt_V_reg_n_0_[0] ),
        .I3(\cnt_V_reg_n_0_[1] ),
        .I4(\cnt_V_reg_n_0_[2] ),
        .I5(\cnt_V_reg_n_0_[3] ),
        .O(\color_table[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \color_table[7]_i_1 
       (.I0(\color_table[7]_i_2_n_0 ),
        .I1(\color_table[7]_i_3_n_0 ),
        .I2(\color_table[7]_i_4_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \color_table[7]_i_10 
       (.I0(\cnt_V_reg_n_0_[6] ),
        .I1(\cnt_V_reg_n_0_[7] ),
        .I2(\cnt_V_reg_n_0_[5] ),
        .O(\color_table[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \color_table[7]_i_11 
       (.I0(\cnt_V_reg_n_0_[1] ),
        .I1(\cnt_V_reg_n_0_[0] ),
        .O(\color_table[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE0070000)) 
    \color_table[7]_i_2 
       (.I0(ready_r_i_8_n_0),
        .I1(\cnt_H_reg_n_0_[8] ),
        .I2(\cnt_H_reg_n_0_[9] ),
        .I3(\cnt_H_reg_n_0_[10] ),
        .I4(ready_r_reg_0),
        .O(\color_table[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EFFFFF)) 
    \color_table[7]_i_3 
       (.I0(\color_table[7]_i_5_n_0 ),
        .I1(\color_table[7]_i_6_n_0 ),
        .I2(\cnt_V_reg_n_0_[4] ),
        .I3(\color_table[7]_i_7_n_0 ),
        .I4(\color_table[7]_i_8_n_0 ),
        .I5(\color_table[7]_i_9_n_0 ),
        .O(\color_table[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00015554FFFFFFFF)) 
    \color_table[7]_i_4 
       (.I0(\cnt_V_reg_n_0_[10] ),
        .I1(\cnt_V_reg_n_0_[8] ),
        .I2(\color_table[7]_i_10_n_0 ),
        .I3(ready_r_i_6_n_0),
        .I4(\cnt_V_reg_n_0_[9] ),
        .I5(ready_r_reg_0),
        .O(\color_table[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \color_table[7]_i_5 
       (.I0(\cnt_V_reg_n_0_[0] ),
        .I1(\cnt_V_reg_n_0_[1] ),
        .I2(\cnt_V_reg_n_0_[2] ),
        .I3(\cnt_V_reg_n_0_[3] ),
        .I4(ready_r_reg_0),
        .O(\color_table[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \color_table[7]_i_6 
       (.I0(\cnt_V_reg_n_0_[0] ),
        .I1(\cnt_V_reg_n_0_[1] ),
        .O(\color_table[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8444C44484C48444)) 
    \color_table[7]_i_7 
       (.I0(\cnt_V_reg_n_0_[5] ),
        .I1(ready_r_reg_0),
        .I2(\cnt_V_reg_n_0_[4] ),
        .I3(\cnt_V_reg_n_0_[3] ),
        .I4(\cnt_V_reg_n_0_[2] ),
        .I5(\color_table[7]_i_11_n_0 ),
        .O(\color_table[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8882)) 
    \color_table[7]_i_8 
       (.I0(ready_r_reg_0),
        .I1(\cnt_V_reg_n_0_[6] ),
        .I2(ready_r_i_6_n_0),
        .I3(\cnt_V_reg_n_0_[5] ),
        .O(\color_table[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAB00000000)) 
    \color_table[7]_i_9 
       (.I0(\cnt_V_reg_n_0_[8] ),
        .I1(\cnt_V_reg_n_0_[6] ),
        .I2(ready_r_i_6_n_0),
        .I3(\cnt_V_reg_n_0_[5] ),
        .I4(\cnt_V_reg_n_0_[7] ),
        .I5(ready_r_reg_0),
        .O(\color_table[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00005101)) 
    ready_r_i_1
       (.I0(\cnt_V_reg_n_0_[10] ),
        .I1(ready_r_i_3_n_0),
        .I2(\cnt_V_reg_n_0_[9] ),
        .I3(ready_r_i_4_n_0),
        .I4(ready_r_i_5_n_0),
        .O(ready_r_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ready_r_i_2
       (.I0(RST_N),
        .O(RST_N_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    ready_r_i_3
       (.I0(ready_r_i_6_n_0),
        .I1(\cnt_V_reg_n_0_[6] ),
        .I2(\cnt_V_reg_n_0_[7] ),
        .I3(\cnt_V_reg_n_0_[5] ),
        .I4(\cnt_V_reg_n_0_[8] ),
        .O(ready_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h010F0F0F0F0F0F0F)) 
    ready_r_i_4
       (.I0(ready_r_i_7_n_0),
        .I1(\cnt_V_reg_n_0_[4] ),
        .I2(\cnt_V_reg_n_0_[8] ),
        .I3(\cnt_V_reg_n_0_[7] ),
        .I4(\cnt_V_reg_n_0_[6] ),
        .I5(\cnt_V_reg_n_0_[5] ),
        .O(ready_r_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8991)) 
    ready_r_i_5
       (.I0(\cnt_H_reg_n_0_[10] ),
        .I1(\cnt_H_reg_n_0_[9] ),
        .I2(\cnt_H_reg_n_0_[8] ),
        .I3(ready_r_i_8_n_0),
        .O(ready_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    ready_r_i_6
       (.I0(\cnt_V_reg_n_0_[0] ),
        .I1(\cnt_V_reg_n_0_[1] ),
        .I2(\cnt_V_reg_n_0_[2] ),
        .I3(\cnt_V_reg_n_0_[3] ),
        .I4(\cnt_V_reg_n_0_[4] ),
        .O(ready_r_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    ready_r_i_7
       (.I0(\cnt_V_reg_n_0_[3] ),
        .I1(\cnt_V_reg_n_0_[2] ),
        .I2(\cnt_V_reg_n_0_[1] ),
        .I3(\cnt_V_reg_n_0_[0] ),
        .O(ready_r_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ready_r_i_8
       (.I0(\cnt_H_reg_n_0_[3] ),
        .I1(\cnt_H_reg_n_0_[4] ),
        .I2(\cnt_H_reg_n_0_[6] ),
        .I3(\cnt_H_reg_n_0_[5] ),
        .I4(\cnt_H_reg_n_0_[2] ),
        .I5(\cnt_H_reg_n_0_[7] ),
        .O(ready_r_i_8_n_0));
  FDCE ready_r_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_N_0),
        .D(ready_r_i_1_n_0),
        .Q(ready_r_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_color
   (GREEN,
    RED,
    BLUE,
    \RED[7] ,
    D,
    CLK,
    \color_table_reg[0]_0 );
  output [1:0]GREEN;
  output [1:0]RED;
  output [1:0]BLUE;
  input \RED[7] ;
  input [7:0]D;
  input CLK;
  input \color_table_reg[0]_0 ;

  wire [1:0]BLUE;
  wire \BLUE[7]_INST_0_i_1_n_0 ;
  wire CLK;
  wire [7:0]D;
  wire [1:0]GREEN;
  wire \GREEN[7]_INST_0_i_1_n_0 ;
  wire [1:0]RED;
  wire \RED[0]_INST_0_i_1_n_0 ;
  wire \RED[0]_INST_0_i_2_n_0 ;
  wire \RED[7] ;
  wire \RED[7]_INST_0_i_1_n_0 ;
  wire \color_table_reg[0]_0 ;
  wire [7:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000220)) 
    \BLUE[0]_INST_0 
       (.I0(\BLUE[7]_INST_0_i_1_n_0 ),
        .I1(\RED[0]_INST_0_i_1_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(BLUE[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00040440)) 
    \BLUE[7]_INST_0 
       (.I0(\RED[0]_INST_0_i_1_n_0 ),
        .I1(\BLUE[7]_INST_0_i_1_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(BLUE[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \BLUE[7]_INST_0_i_1 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .O(\BLUE[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00020208)) 
    \GREEN[0]_INST_0 
       (.I0(\GREEN[7]_INST_0_i_1_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[4]),
        .I4(sel0[0]),
        .O(GREEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00020228)) 
    \GREEN[7]_INST_0 
       (.I0(\GREEN[7]_INST_0_i_1_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[4]),
        .I4(sel0[0]),
        .O(GREEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \GREEN[7]_INST_0_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[7]),
        .I4(\RED[7] ),
        .O(\GREEN[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400040440)) 
    \RED[0]_INST_0 
       (.I0(\RED[0]_INST_0_i_1_n_0 ),
        .I1(\RED[0]_INST_0_i_2_n_0 ),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .I5(sel0[0]),
        .O(RED[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \RED[0]_INST_0_i_1 
       (.I0(\RED[7] ),
        .I1(sel0[1]),
        .I2(sel0[4]),
        .O(\RED[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RED[0]_INST_0_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(\RED[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \RED[7]_INST_0 
       (.I0(sel0[3]),
        .I1(\RED[7] ),
        .I2(sel0[1]),
        .I3(sel0[4]),
        .I4(\RED[7]_INST_0_i_1_n_0 ),
        .O(RED[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \RED[7]_INST_0_i_1 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(\RED[7]_INST_0_i_1_n_0 ));
  FDCE \color_table_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[0]),
        .Q(sel0[0]));
  FDCE \color_table_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[1]),
        .Q(sel0[1]));
  FDCE \color_table_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[2]),
        .Q(sel0[2]));
  FDCE \color_table_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[3]),
        .Q(sel0[3]));
  FDCE \color_table_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[4]),
        .Q(sel0[4]));
  FDCE \color_table_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[5]),
        .Q(sel0[5]));
  FDCE \color_table_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[6]),
        .Q(sel0[6]));
  FDCE \color_table_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\color_table_reg[0]_0 ),
        .D(D[7]),
        .Q(sel0[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top
   (RED,
    GREEN,
    BLUE,
    HSYNC,
    VSYNC,
    READY,
    CLK,
    RST_N);
  output [7:0]RED;
  output [7:0]GREEN;
  output [7:0]BLUE;
  output HSYNC;
  output VSYNC;
  output READY;
  input CLK;
  input RST_N;

  wire [7:6]\^BLUE ;
  wire CLK;
  wire [7:6]\^GREEN ;
  wire HSYNC;
  wire READY;
  wire [7:6]\^RED ;
  wire RST_N;
  wire SYNC_GEN_INST_n_1;
  wire SYNC_GEN_INST_n_2;
  wire SYNC_GEN_INST_n_3;
  wire SYNC_GEN_INST_n_4;
  wire SYNC_GEN_INST_n_5;
  wire SYNC_GEN_INST_n_6;
  wire SYNC_GEN_INST_n_7;
  wire SYNC_GEN_INST_n_8;
  wire SYNC_GEN_INST_n_9;
  wire VSYNC;

  assign BLUE[7:6] = \^BLUE [7:6];
  assign BLUE[5] = \^BLUE [6];
  assign BLUE[4] = \^BLUE [6];
  assign BLUE[3] = \^BLUE [6];
  assign BLUE[2] = \^BLUE [6];
  assign BLUE[1] = \^BLUE [6];
  assign BLUE[0] = \^BLUE [6];
  assign GREEN[7:6] = \^GREEN [7:6];
  assign GREEN[5] = \^GREEN [6];
  assign GREEN[4] = \^GREEN [6];
  assign GREEN[3] = \^GREEN [6];
  assign GREEN[2] = \^GREEN [6];
  assign GREEN[1] = \^GREEN [6];
  assign GREEN[0] = \^GREEN [6];
  assign RED[7:6] = \^RED [7:6];
  assign RED[5] = \^RED [6];
  assign RED[4] = \^RED [6];
  assign RED[3] = \^RED [6];
  assign RED[2] = \^RED [6];
  assign RED[1] = \^RED [6];
  assign RED[0] = \^RED [6];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_gen SYNC_GEN_INST
       (.CLK(CLK),
        .D({SYNC_GEN_INST_n_2,SYNC_GEN_INST_n_3,SYNC_GEN_INST_n_4,SYNC_GEN_INST_n_5,SYNC_GEN_INST_n_6,SYNC_GEN_INST_n_7,SYNC_GEN_INST_n_8,SYNC_GEN_INST_n_9}),
        .HSYNC(HSYNC),
        .RST_N(RST_N),
        .RST_N_0(SYNC_GEN_INST_n_1),
        .VSYNC(VSYNC),
        .ready_r_reg_0(READY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_color VGA_COLOR_INST
       (.BLUE(\^BLUE ),
        .CLK(CLK),
        .D({SYNC_GEN_INST_n_2,SYNC_GEN_INST_n_3,SYNC_GEN_INST_n_4,SYNC_GEN_INST_n_5,SYNC_GEN_INST_n_6,SYNC_GEN_INST_n_7,SYNC_GEN_INST_n_8,SYNC_GEN_INST_n_9}),
        .GREEN(\^GREEN ),
        .RED(\^RED ),
        .\RED[7] (READY),
        .\color_table_reg[0]_0 (SYNC_GEN_INST_n_1));
endmodule

(* CHECK_LICENSE_TYPE = "vga_top_0,vga_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "vga_top,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (RED,
    GREEN,
    BLUE,
    HSYNC,
    VSYNC,
    READY,
    CLK,
    RST_N);
  output [7:0]RED;
  output [7:0]GREEN;
  output [7:0]BLUE;
  output HSYNC;
  output VSYNC;
  output READY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST_N;

  wire [7:0]BLUE;
  wire CLK;
  wire [7:0]GREEN;
  wire HSYNC;
  wire READY;
  wire [7:0]RED;
  wire RST_N;
  wire VSYNC;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top inst
       (.BLUE(BLUE),
        .CLK(CLK),
        .GREEN(GREEN),
        .HSYNC(HSYNC),
        .READY(READY),
        .RED(RED),
        .RST_N(RST_N),
        .VSYNC(VSYNC));
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
