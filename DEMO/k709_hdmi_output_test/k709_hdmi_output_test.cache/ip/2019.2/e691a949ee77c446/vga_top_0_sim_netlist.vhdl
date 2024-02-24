-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Mar 21 22:13:33 2020
-- Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vga_top_0_sim_netlist.vhdl
-- Design      : vga_top_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_gen is
  port (
    ready_r_reg_0 : out STD_LOGIC;
    RST_N_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    VSYNC : out STD_LOGIC;
    HSYNC : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST_N : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_gen is
  signal HSYNC_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal VSYNC_INST_0_i_1_n_0 : STD_LOGIC;
  signal cnt_H : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \cnt_H[10]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_H[10]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_H[10]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_H[10]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_H[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_H[9]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_H_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_V[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[10]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_V[10]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_V[10]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_V[10]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_V[10]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_V[10]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_V[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_V[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_V[9]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_V_reg_n_0_[9]\ : STD_LOGIC;
  signal \color_table[1]_i_2_n_0\ : STD_LOGIC;
  signal \color_table[1]_i_3_n_0\ : STD_LOGIC;
  signal \color_table[2]_i_2_n_0\ : STD_LOGIC;
  signal \color_table[2]_i_3_n_0\ : STD_LOGIC;
  signal \color_table[3]_i_2_n_0\ : STD_LOGIC;
  signal \color_table[3]_i_3_n_0\ : STD_LOGIC;
  signal \color_table[3]_i_4_n_0\ : STD_LOGIC;
  signal \color_table[3]_i_5_n_0\ : STD_LOGIC;
  signal \color_table[4]_i_2_n_0\ : STD_LOGIC;
  signal \color_table[4]_i_3_n_0\ : STD_LOGIC;
  signal \color_table[4]_i_4_n_0\ : STD_LOGIC;
  signal \color_table[4]_i_5_n_0\ : STD_LOGIC;
  signal \color_table[5]_i_2_n_0\ : STD_LOGIC;
  signal \color_table[5]_i_3_n_0\ : STD_LOGIC;
  signal \color_table[5]_i_4_n_0\ : STD_LOGIC;
  signal \color_table[6]_i_2_n_0\ : STD_LOGIC;
  signal \color_table[6]_i_3_n_0\ : STD_LOGIC;
  signal \color_table[6]_i_4_n_0\ : STD_LOGIC;
  signal \color_table[6]_i_5_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_10_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_11_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_2_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_3_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_4_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_5_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_6_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_7_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_8_n_0\ : STD_LOGIC;
  signal \color_table[7]_i_9_n_0\ : STD_LOGIC;
  signal ready_r_i_1_n_0 : STD_LOGIC;
  signal ready_r_i_3_n_0 : STD_LOGIC;
  signal ready_r_i_4_n_0 : STD_LOGIC;
  signal ready_r_i_5_n_0 : STD_LOGIC;
  signal ready_r_i_6_n_0 : STD_LOGIC;
  signal ready_r_i_7_n_0 : STD_LOGIC;
  signal ready_r_i_8_n_0 : STD_LOGIC;
  signal \^ready_r_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_H[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_H[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_H[10]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_H[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt_H[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt_H[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_H[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_H[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_H[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_H[8]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_V[10]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_V[10]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_V[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt_V[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_V[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_V[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_V[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_V[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_V[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_V[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_V[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \color_table[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \color_table[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \color_table[1]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \color_table[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \color_table[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \color_table[3]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \color_table[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \color_table[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \color_table[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \color_table[4]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \color_table[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \color_table[5]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \color_table[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \color_table[6]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \color_table[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \color_table[7]_i_10\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \color_table[7]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \color_table[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \color_table[7]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \color_table[7]_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \color_table[7]_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ready_r_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ready_r_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ready_r_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ready_r_i_7 : label is "soft_lutpair8";
begin
  RST_N_0 <= \^rst_n_0\;
  ready_r_reg_0 <= \^ready_r_reg_0\;
HSYNC_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => HSYNC_INST_0_i_1_n_0,
      I1 => \cnt_H_reg_n_0_[6]\,
      I2 => \cnt_H_reg_n_0_[8]\,
      I3 => \cnt_H_reg_n_0_[7]\,
      O => HSYNC
    );
HSYNC_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEEE"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[9]\,
      I1 => \cnt_H_reg_n_0_[10]\,
      I2 => \cnt_H_reg_n_0_[3]\,
      I3 => \cnt_H_reg_n_0_[4]\,
      I4 => \cnt_H_reg_n_0_[5]\,
      O => HSYNC_INST_0_i_1_n_0
    );
VSYNC_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[2]\,
      I1 => \cnt_V_reg_n_0_[0]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[3]\,
      I4 => \cnt_V_reg_n_0_[9]\,
      I5 => VSYNC_INST_0_i_1_n_0,
      O => VSYNC
    );
VSYNC_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[5]\,
      I1 => \cnt_V_reg_n_0_[7]\,
      I2 => \cnt_V_reg_n_0_[6]\,
      I3 => \cnt_V_reg_n_0_[10]\,
      I4 => \cnt_V_reg_n_0_[8]\,
      I5 => \cnt_V_reg_n_0_[4]\,
      O => VSYNC_INST_0_i_1_n_0
    );
\cnt_H[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[0]\,
      O => cnt_H(0)
    );
\cnt_H[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \cnt_H[10]_i_2_n_0\,
      I1 => \cnt_H_reg_n_0_[8]\,
      I2 => \cnt_H_reg_n_0_[9]\,
      I3 => \cnt_H[10]_i_3_n_0\,
      I4 => \cnt_H_reg_n_0_[10]\,
      O => cnt_H(10)
    );
\cnt_H[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[6]\,
      I1 => \cnt_H_reg_n_0_[7]\,
      I2 => \cnt_H_reg_n_0_[5]\,
      I3 => \cnt_H[8]_i_2_n_0\,
      I4 => \cnt_H_reg_n_0_[4]\,
      O => \cnt_H[10]_i_2_n_0\
    );
\cnt_H[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \cnt_H[10]_i_4_n_0\,
      I1 => \cnt_H_reg_n_0_[3]\,
      I2 => \cnt_H_reg_n_0_[5]\,
      I3 => \cnt_H_reg_n_0_[7]\,
      I4 => \cnt_H_reg_n_0_[2]\,
      O => \cnt_H[10]_i_3_n_0\
    );
\cnt_H[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[1]\,
      I1 => \cnt_H_reg_n_0_[4]\,
      I2 => \cnt_H_reg_n_0_[0]\,
      I3 => \cnt_H_reg_n_0_[6]\,
      I4 => \cnt_H_reg_n_0_[8]\,
      I5 => \cnt_H[10]_i_5_n_0\,
      O => \cnt_H[10]_i_4_n_0\
    );
\cnt_H[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[10]\,
      I1 => \cnt_H_reg_n_0_[9]\,
      O => \cnt_H[10]_i_5_n_0\
    );
\cnt_H[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt_H[10]_i_3_n_0\,
      I1 => \cnt_H_reg_n_0_[1]\,
      I2 => \cnt_H_reg_n_0_[0]\,
      O => cnt_H(1)
    );
\cnt_H[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[2]\,
      I1 => \cnt_H_reg_n_0_[0]\,
      I2 => \cnt_H_reg_n_0_[1]\,
      O => cnt_H(2)
    );
\cnt_H[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[3]\,
      I1 => \cnt_H_reg_n_0_[2]\,
      I2 => \cnt_H_reg_n_0_[1]\,
      I3 => \cnt_H_reg_n_0_[0]\,
      O => cnt_H(3)
    );
\cnt_H[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_H[10]_i_3_n_0\,
      I1 => \cnt_H_reg_n_0_[3]\,
      I2 => \cnt_H_reg_n_0_[0]\,
      I3 => \cnt_H_reg_n_0_[1]\,
      I4 => \cnt_H_reg_n_0_[2]\,
      I5 => \cnt_H_reg_n_0_[4]\,
      O => cnt_H(4)
    );
\cnt_H[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \cnt_H[10]_i_3_n_0\,
      I1 => \cnt_H_reg_n_0_[4]\,
      I2 => \cnt_H[8]_i_2_n_0\,
      I3 => \cnt_H_reg_n_0_[5]\,
      O => cnt_H(5)
    );
\cnt_H[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \cnt_H[10]_i_3_n_0\,
      I1 => \cnt_H_reg_n_0_[5]\,
      I2 => \cnt_H[8]_i_2_n_0\,
      I3 => \cnt_H_reg_n_0_[4]\,
      I4 => \cnt_H_reg_n_0_[6]\,
      O => cnt_H(6)
    );
\cnt_H[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[7]\,
      I1 => \cnt_H_reg_n_0_[6]\,
      I2 => \cnt_H_reg_n_0_[5]\,
      I3 => \cnt_H[8]_i_2_n_0\,
      I4 => \cnt_H_reg_n_0_[4]\,
      O => cnt_H(7)
    );
\cnt_H[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF20000000"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[4]\,
      I1 => \cnt_H[8]_i_2_n_0\,
      I2 => \cnt_H_reg_n_0_[5]\,
      I3 => \cnt_H_reg_n_0_[7]\,
      I4 => \cnt_H_reg_n_0_[6]\,
      I5 => \cnt_H_reg_n_0_[8]\,
      O => cnt_H(8)
    );
\cnt_H[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[2]\,
      I1 => \cnt_H_reg_n_0_[1]\,
      I2 => \cnt_H_reg_n_0_[0]\,
      I3 => \cnt_H_reg_n_0_[3]\,
      O => \cnt_H[8]_i_2_n_0\
    );
\cnt_H[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[8]\,
      I1 => \cnt_H[9]_i_2_n_0\,
      I2 => \cnt_H_reg_n_0_[7]\,
      I3 => \cnt_H_reg_n_0_[6]\,
      I4 => \cnt_H[10]_i_3_n_0\,
      I5 => \cnt_H_reg_n_0_[9]\,
      O => cnt_H(9)
    );
\cnt_H[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[4]\,
      I1 => \cnt_H_reg_n_0_[2]\,
      I2 => \cnt_H_reg_n_0_[1]\,
      I3 => \cnt_H_reg_n_0_[0]\,
      I4 => \cnt_H_reg_n_0_[3]\,
      I5 => \cnt_H_reg_n_0_[5]\,
      O => \cnt_H[9]_i_2_n_0\
    );
\cnt_H_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(0),
      Q => \cnt_H_reg_n_0_[0]\
    );
\cnt_H_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(10),
      Q => \cnt_H_reg_n_0_[10]\
    );
\cnt_H_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(1),
      Q => \cnt_H_reg_n_0_[1]\
    );
\cnt_H_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(2),
      Q => \cnt_H_reg_n_0_[2]\
    );
\cnt_H_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(3),
      Q => \cnt_H_reg_n_0_[3]\
    );
\cnt_H_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(4),
      Q => \cnt_H_reg_n_0_[4]\
    );
\cnt_H_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(5),
      Q => \cnt_H_reg_n_0_[5]\
    );
\cnt_H_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(6),
      Q => \cnt_H_reg_n_0_[6]\
    );
\cnt_H_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(7),
      Q => \cnt_H_reg_n_0_[7]\
    );
\cnt_H_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(8),
      Q => \cnt_H_reg_n_0_[8]\
    );
\cnt_H_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_H(9),
      Q => \cnt_H_reg_n_0_[9]\
    );
\cnt_V[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[0]\,
      O => \cnt_V[0]_i_1_n_0\
    );
\cnt_V[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt_H[10]_i_3_n_0\,
      I1 => \cnt_V[10]_i_3_n_0\,
      O => \cnt_V[10]_i_1_n_0\
    );
\cnt_V[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[10]\,
      I1 => \cnt_V_reg_n_0_[9]\,
      I2 => \cnt_V_reg_n_0_[8]\,
      I3 => \cnt_V_reg_n_0_[7]\,
      I4 => \cnt_V[10]_i_4_n_0\,
      I5 => \cnt_V_reg_n_0_[6]\,
      O => \cnt_V[10]_i_2_n_0\
    );
\cnt_V[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_V[10]_i_5_n_0\,
      I1 => \cnt_V_reg_n_0_[2]\,
      I2 => \cnt_V[10]_i_6_n_0\,
      I3 => \cnt_V_reg_n_0_[9]\,
      I4 => \cnt_V_reg_n_0_[3]\,
      I5 => \cnt_V[10]_i_7_n_0\,
      O => \cnt_V[10]_i_3_n_0\
    );
\cnt_V[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[4]\,
      I1 => \cnt_V_reg_n_0_[2]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[0]\,
      I4 => \cnt_V_reg_n_0_[3]\,
      I5 => \cnt_V_reg_n_0_[5]\,
      O => \cnt_V[10]_i_4_n_0\
    );
\cnt_V[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[1]\,
      I1 => \cnt_V_reg_n_0_[0]\,
      O => \cnt_V[10]_i_5_n_0\
    );
\cnt_V[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[4]\,
      I1 => \cnt_V_reg_n_0_[8]\,
      I2 => \cnt_V_reg_n_0_[10]\,
      O => \cnt_V[10]_i_6_n_0\
    );
\cnt_V[10]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[7]\,
      I1 => \cnt_V_reg_n_0_[6]\,
      I2 => \cnt_V_reg_n_0_[5]\,
      O => \cnt_V[10]_i_7_n_0\
    );
\cnt_V[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt_V[10]_i_3_n_0\,
      I1 => \cnt_V_reg_n_0_[1]\,
      I2 => \cnt_V_reg_n_0_[0]\,
      O => \cnt_V[1]_i_1_n_0\
    );
\cnt_V[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt_V[10]_i_3_n_0\,
      I1 => \cnt_V_reg_n_0_[0]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[2]\,
      O => \cnt_V[2]_i_1_n_0\
    );
\cnt_V[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_V[10]_i_3_n_0\,
      I1 => \cnt_V_reg_n_0_[2]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[0]\,
      I4 => \cnt_V_reg_n_0_[3]\,
      O => \cnt_V[3]_i_1_n_0\
    );
\cnt_V[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[3]\,
      I1 => \cnt_V_reg_n_0_[0]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[2]\,
      I4 => \cnt_V_reg_n_0_[4]\,
      O => \cnt_V[4]_i_1_n_0\
    );
\cnt_V[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \cnt_V[9]_i_2_n_0\,
      I1 => \cnt_V[5]_i_2_n_0\,
      I2 => \cnt_V_reg_n_0_[5]\,
      O => \cnt_V[5]_i_1_n_0\
    );
\cnt_V[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[3]\,
      I1 => \cnt_V_reg_n_0_[0]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[2]\,
      I4 => \cnt_V_reg_n_0_[4]\,
      O => \cnt_V[5]_i_2_n_0\
    );
\cnt_V[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \cnt_V[9]_i_2_n_0\,
      I1 => \cnt_V[10]_i_4_n_0\,
      I2 => \cnt_V_reg_n_0_[6]\,
      O => \cnt_V[6]_i_1_n_0\
    );
\cnt_V[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \cnt_V[10]_i_4_n_0\,
      I1 => \cnt_V_reg_n_0_[6]\,
      I2 => \cnt_V[9]_i_2_n_0\,
      I3 => \cnt_V_reg_n_0_[7]\,
      O => \cnt_V[7]_i_1_n_0\
    );
\cnt_V[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[7]\,
      I1 => \cnt_V[10]_i_4_n_0\,
      I2 => \cnt_V_reg_n_0_[6]\,
      I3 => \cnt_V_reg_n_0_[8]\,
      O => \cnt_V[8]_i_1_n_0\
    );
\cnt_V[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[8]\,
      I1 => \cnt_V_reg_n_0_[7]\,
      I2 => \cnt_V[10]_i_4_n_0\,
      I3 => \cnt_V_reg_n_0_[6]\,
      I4 => \cnt_V[9]_i_2_n_0\,
      I5 => \cnt_V_reg_n_0_[9]\,
      O => \cnt_V[9]_i_1_n_0\
    );
\cnt_V[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \cnt_V[10]_i_5_n_0\,
      I1 => \cnt_V[10]_i_7_n_0\,
      I2 => \cnt_V_reg_n_0_[9]\,
      I3 => \cnt_V_reg_n_0_[2]\,
      I4 => \cnt_V_reg_n_0_[3]\,
      I5 => \cnt_V[10]_i_6_n_0\,
      O => \cnt_V[9]_i_2_n_0\
    );
\cnt_V_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[0]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[0]\
    );
\cnt_V_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[10]_i_2_n_0\,
      Q => \cnt_V_reg_n_0_[10]\
    );
\cnt_V_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[1]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[1]\
    );
\cnt_V_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[2]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[2]\
    );
\cnt_V_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[3]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[3]\
    );
\cnt_V_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[4]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[4]\
    );
\cnt_V_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[5]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[5]\
    );
\cnt_V_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[6]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[6]\
    );
\cnt_V_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[7]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[7]\
    );
\cnt_V_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[8]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[8]\
    );
\cnt_V_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_V[10]_i_1_n_0\,
      CLR => \^rst_n_0\,
      D => \cnt_V[9]_i_1_n_0\,
      Q => \cnt_V_reg_n_0_[9]\
    );
\color_table[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \color_table[7]_i_2_n_0\,
      I1 => \color_table[1]_i_2_n_0\,
      I2 => \color_table[2]_i_2_n_0\,
      O => D(0)
    );
\color_table[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \color_table[7]_i_2_n_0\,
      I1 => \color_table[1]_i_2_n_0\,
      I2 => \color_table[2]_i_2_n_0\,
      O => D(1)
    );
\color_table[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222020222222222"
    )
        port map (
      I0 => \color_table[2]_i_3_n_0\,
      I1 => \color_table[7]_i_9_n_0\,
      I2 => \color_table[4]_i_4_n_0\,
      I3 => \color_table[1]_i_3_n_0\,
      I4 => \color_table[7]_i_5_n_0\,
      I5 => \color_table[4]_i_3_n_0\,
      O => \color_table[1]_i_2_n_0\
    );
\color_table[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8002"
    )
        port map (
      I0 => \^ready_r_reg_0\,
      I1 => \cnt_V_reg_n_0_[2]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[0]\,
      O => \color_table[1]_i_3_n_0\
    );
\color_table[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \color_table[4]_i_2_n_0\,
      I1 => \color_table[2]_i_2_n_0\,
      I2 => \color_table[7]_i_2_n_0\,
      I3 => \color_table[3]_i_2_n_0\,
      O => D(2)
    );
\color_table[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \color_table[2]_i_3_n_0\,
      I1 => \color_table[6]_i_3_n_0\,
      I2 => \color_table[7]_i_8_n_0\,
      I3 => \color_table[7]_i_7_n_0\,
      I4 => \color_table[5]_i_4_n_0\,
      I5 => \color_table[7]_i_4_n_0\,
      O => \color_table[2]_i_2_n_0\
    );
\color_table[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555556FFFFFFFF"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[10]\,
      I1 => \cnt_V_reg_n_0_[8]\,
      I2 => \color_table[7]_i_10_n_0\,
      I3 => ready_r_i_6_n_0,
      I4 => \cnt_V_reg_n_0_[9]\,
      I5 => \^ready_r_reg_0\,
      O => \color_table[2]_i_3_n_0\
    );
\color_table[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \color_table[7]_i_2_n_0\,
      I1 => \color_table[4]_i_2_n_0\,
      I2 => \color_table[3]_i_2_n_0\,
      O => D(3)
    );
\color_table[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFD00000000"
    )
        port map (
      I0 => \color_table[5]_i_4_n_0\,
      I1 => \color_table[3]_i_3_n_0\,
      I2 => \color_table[3]_i_4_n_0\,
      I3 => \color_table[6]_i_4_n_0\,
      I4 => \color_table[3]_i_5_n_0\,
      I5 => \color_table[7]_i_4_n_0\,
      O => \color_table[3]_i_2_n_0\
    );
\color_table[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[5]\,
      I1 => ready_r_i_6_n_0,
      I2 => \cnt_V_reg_n_0_[6]\,
      O => \color_table[3]_i_3_n_0\
    );
\color_table[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[8]\,
      I1 => ready_r_i_6_n_0,
      I2 => \cnt_V_reg_n_0_[6]\,
      I3 => \cnt_V_reg_n_0_[7]\,
      I4 => \cnt_V_reg_n_0_[5]\,
      O => \color_table[3]_i_4_n_0\
    );
\color_table[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03300BB003300330"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[4]\,
      I1 => \^ready_r_reg_0\,
      I2 => \cnt_V_reg_n_0_[0]\,
      I3 => \cnt_V_reg_n_0_[1]\,
      I4 => \cnt_V_reg_n_0_[2]\,
      I5 => \cnt_V_reg_n_0_[3]\,
      O => \color_table[3]_i_5_n_0\
    );
\color_table[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \color_table[6]_i_2_n_0\,
      I1 => \color_table[5]_i_2_n_0\,
      I2 => \color_table[7]_i_2_n_0\,
      I3 => \color_table[4]_i_2_n_0\,
      O => D(4)
    );
\color_table[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D00FFFF00000000"
    )
        port map (
      I0 => \color_table[4]_i_3_n_0\,
      I1 => \color_table[7]_i_5_n_0\,
      I2 => \color_table[4]_i_4_n_0\,
      I3 => \color_table[4]_i_5_n_0\,
      I4 => \color_table[6]_i_3_n_0\,
      I5 => \color_table[7]_i_4_n_0\,
      O => \color_table[4]_i_2_n_0\
    );
\color_table[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8002"
    )
        port map (
      I0 => \^ready_r_reg_0\,
      I1 => \cnt_V_reg_n_0_[6]\,
      I2 => ready_r_i_6_n_0,
      I3 => \cnt_V_reg_n_0_[5]\,
      O => \color_table[4]_i_3_n_0\
    );
\color_table[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55570000AAA80000"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[3]\,
      I1 => \cnt_V_reg_n_0_[2]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[0]\,
      I4 => \^ready_r_reg_0\,
      I5 => \cnt_V_reg_n_0_[4]\,
      O => \color_table[4]_i_4_n_0\
    );
\color_table[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[6]\,
      I1 => ready_r_i_6_n_0,
      I2 => \cnt_V_reg_n_0_[5]\,
      I3 => \cnt_V_reg_n_0_[7]\,
      O => \color_table[4]_i_5_n_0\
    );
\color_table[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \color_table[7]_i_2_n_0\,
      I1 => \color_table[5]_i_2_n_0\,
      I2 => \color_table[6]_i_2_n_0\,
      O => D(5)
    );
\color_table[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDD5DD"
    )
        port map (
      I0 => \color_table[7]_i_4_n_0\,
      I1 => \color_table[6]_i_3_n_0\,
      I2 => \color_table[7]_i_8_n_0\,
      I3 => \color_table[5]_i_3_n_0\,
      I4 => \color_table[6]_i_4_n_0\,
      I5 => \color_table[5]_i_4_n_0\,
      O => \color_table[5]_i_2_n_0\
    );
\color_table[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB337777777"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[4]\,
      I1 => \^ready_r_reg_0\,
      I2 => \cnt_V_reg_n_0_[0]\,
      I3 => \cnt_V_reg_n_0_[1]\,
      I4 => \cnt_V_reg_n_0_[2]\,
      I5 => \cnt_V_reg_n_0_[3]\,
      O => \color_table[5]_i_3_n_0\
    );
\color_table[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => \^ready_r_reg_0\,
      I1 => \cnt_V_reg_n_0_[7]\,
      I2 => \cnt_V_reg_n_0_[5]\,
      I3 => ready_r_i_6_n_0,
      I4 => \cnt_V_reg_n_0_[6]\,
      O => \color_table[5]_i_4_n_0\
    );
\color_table[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \color_table[7]_i_2_n_0\,
      I1 => \color_table[7]_i_3_n_0\,
      I2 => \color_table[6]_i_2_n_0\,
      O => D(6)
    );
\color_table[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101FFFF00000000"
    )
        port map (
      I0 => \color_table[7]_i_8_n_0\,
      I1 => \color_table[6]_i_3_n_0\,
      I2 => \color_table[6]_i_4_n_0\,
      I3 => \color_table[6]_i_5_n_0\,
      I4 => \color_table[7]_i_9_n_0\,
      I5 => \color_table[7]_i_4_n_0\,
      O => \color_table[6]_i_2_n_0\
    );
\color_table[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => \^ready_r_reg_0\,
      I1 => \cnt_V_reg_n_0_[5]\,
      I2 => \cnt_V_reg_n_0_[7]\,
      I3 => \cnt_V_reg_n_0_[6]\,
      I4 => ready_r_i_6_n_0,
      I5 => \cnt_V_reg_n_0_[8]\,
      O => \color_table[6]_i_3_n_0\
    );
\color_table[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => ready_r_i_6_n_0,
      I1 => \^ready_r_reg_0\,
      I2 => \cnt_V_reg_n_0_[5]\,
      O => \color_table[6]_i_4_n_0\
    );
\color_table[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFFFF777777777"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[4]\,
      I1 => \^ready_r_reg_0\,
      I2 => \cnt_V_reg_n_0_[0]\,
      I3 => \cnt_V_reg_n_0_[1]\,
      I4 => \cnt_V_reg_n_0_[2]\,
      I5 => \cnt_V_reg_n_0_[3]\,
      O => \color_table[6]_i_5_n_0\
    );
\color_table[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \color_table[7]_i_2_n_0\,
      I1 => \color_table[7]_i_3_n_0\,
      I2 => \color_table[7]_i_4_n_0\,
      O => D(7)
    );
\color_table[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[6]\,
      I1 => \cnt_V_reg_n_0_[7]\,
      I2 => \cnt_V_reg_n_0_[5]\,
      O => \color_table[7]_i_10_n_0\
    );
\color_table[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[1]\,
      I1 => \cnt_V_reg_n_0_[0]\,
      O => \color_table[7]_i_11_n_0\
    );
\color_table[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0070000"
    )
        port map (
      I0 => ready_r_i_8_n_0,
      I1 => \cnt_H_reg_n_0_[8]\,
      I2 => \cnt_H_reg_n_0_[9]\,
      I3 => \cnt_H_reg_n_0_[10]\,
      I4 => \^ready_r_reg_0\,
      O => \color_table[7]_i_2_n_0\
    );
\color_table[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EFFFFF"
    )
        port map (
      I0 => \color_table[7]_i_5_n_0\,
      I1 => \color_table[7]_i_6_n_0\,
      I2 => \cnt_V_reg_n_0_[4]\,
      I3 => \color_table[7]_i_7_n_0\,
      I4 => \color_table[7]_i_8_n_0\,
      I5 => \color_table[7]_i_9_n_0\,
      O => \color_table[7]_i_3_n_0\
    );
\color_table[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015554FFFFFFFF"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[10]\,
      I1 => \cnt_V_reg_n_0_[8]\,
      I2 => \color_table[7]_i_10_n_0\,
      I3 => ready_r_i_6_n_0,
      I4 => \cnt_V_reg_n_0_[9]\,
      I5 => \^ready_r_reg_0\,
      O => \color_table[7]_i_4_n_0\
    );
\color_table[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE01FFFF"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[0]\,
      I1 => \cnt_V_reg_n_0_[1]\,
      I2 => \cnt_V_reg_n_0_[2]\,
      I3 => \cnt_V_reg_n_0_[3]\,
      I4 => \^ready_r_reg_0\,
      O => \color_table[7]_i_5_n_0\
    );
\color_table[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[0]\,
      I1 => \cnt_V_reg_n_0_[1]\,
      O => \color_table[7]_i_6_n_0\
    );
\color_table[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8444C44484C48444"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[5]\,
      I1 => \^ready_r_reg_0\,
      I2 => \cnt_V_reg_n_0_[4]\,
      I3 => \cnt_V_reg_n_0_[3]\,
      I4 => \cnt_V_reg_n_0_[2]\,
      I5 => \color_table[7]_i_11_n_0\,
      O => \color_table[7]_i_7_n_0\
    );
\color_table[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => \^ready_r_reg_0\,
      I1 => \cnt_V_reg_n_0_[6]\,
      I2 => ready_r_i_6_n_0,
      I3 => \cnt_V_reg_n_0_[5]\,
      O => \color_table[7]_i_8_n_0\
    );
\color_table[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAB00000000"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[8]\,
      I1 => \cnt_V_reg_n_0_[6]\,
      I2 => ready_r_i_6_n_0,
      I3 => \cnt_V_reg_n_0_[5]\,
      I4 => \cnt_V_reg_n_0_[7]\,
      I5 => \^ready_r_reg_0\,
      O => \color_table[7]_i_9_n_0\
    );
ready_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005101"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[10]\,
      I1 => ready_r_i_3_n_0,
      I2 => \cnt_V_reg_n_0_[9]\,
      I3 => ready_r_i_4_n_0,
      I4 => ready_r_i_5_n_0,
      O => ready_r_i_1_n_0
    );
ready_r_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_N,
      O => \^rst_n_0\
    );
ready_r_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ready_r_i_6_n_0,
      I1 => \cnt_V_reg_n_0_[6]\,
      I2 => \cnt_V_reg_n_0_[7]\,
      I3 => \cnt_V_reg_n_0_[5]\,
      I4 => \cnt_V_reg_n_0_[8]\,
      O => ready_r_i_3_n_0
    );
ready_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010F0F0F0F0F0F0F"
    )
        port map (
      I0 => ready_r_i_7_n_0,
      I1 => \cnt_V_reg_n_0_[4]\,
      I2 => \cnt_V_reg_n_0_[8]\,
      I3 => \cnt_V_reg_n_0_[7]\,
      I4 => \cnt_V_reg_n_0_[6]\,
      I5 => \cnt_V_reg_n_0_[5]\,
      O => ready_r_i_4_n_0
    );
ready_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8991"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[10]\,
      I1 => \cnt_H_reg_n_0_[9]\,
      I2 => \cnt_H_reg_n_0_[8]\,
      I3 => ready_r_i_8_n_0,
      O => ready_r_i_5_n_0
    );
ready_r_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[0]\,
      I1 => \cnt_V_reg_n_0_[1]\,
      I2 => \cnt_V_reg_n_0_[2]\,
      I3 => \cnt_V_reg_n_0_[3]\,
      I4 => \cnt_V_reg_n_0_[4]\,
      O => ready_r_i_6_n_0
    );
ready_r_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \cnt_V_reg_n_0_[3]\,
      I1 => \cnt_V_reg_n_0_[2]\,
      I2 => \cnt_V_reg_n_0_[1]\,
      I3 => \cnt_V_reg_n_0_[0]\,
      O => ready_r_i_7_n_0
    );
ready_r_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt_H_reg_n_0_[3]\,
      I1 => \cnt_H_reg_n_0_[4]\,
      I2 => \cnt_H_reg_n_0_[6]\,
      I3 => \cnt_H_reg_n_0_[5]\,
      I4 => \cnt_H_reg_n_0_[2]\,
      I5 => \cnt_H_reg_n_0_[7]\,
      O => ready_r_i_8_n_0
    );
ready_r_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rst_n_0\,
      D => ready_r_i_1_n_0,
      Q => \^ready_r_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_color is
  port (
    GREEN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RED : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLUE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RED[7]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    \color_table_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_color;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_color is
  signal \BLUE[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GREEN[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \RED[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \RED[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \RED[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BLUE[0]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \BLUE[7]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \BLUE[7]_INST_0_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GREEN[0]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GREEN[7]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GREEN[7]_INST_0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \RED[0]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \RED[0]_INST_0_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \RED[7]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \RED[7]_INST_0_i_1\ : label is "soft_lutpair25";
begin
\BLUE[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000220"
    )
        port map (
      I0 => \BLUE[7]_INST_0_i_1_n_0\,
      I1 => \RED[0]_INST_0_i_1_n_0\,
      I2 => sel0(3),
      I3 => sel0(0),
      I4 => sel0(2),
      O => BLUE(0)
    );
\BLUE[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040440"
    )
        port map (
      I0 => \RED[0]_INST_0_i_1_n_0\,
      I1 => \BLUE[7]_INST_0_i_1_n_0\,
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => sel0(3),
      O => BLUE(1)
    );
\BLUE[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(7),
      O => \BLUE[7]_INST_0_i_1_n_0\
    );
\GREEN[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020208"
    )
        port map (
      I0 => \GREEN[7]_INST_0_i_1_n_0\,
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(4),
      I4 => sel0(0),
      O => GREEN(0)
    );
\GREEN[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020228"
    )
        port map (
      I0 => \GREEN[7]_INST_0_i_1_n_0\,
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(4),
      I4 => sel0(0),
      O => GREEN(1)
    );
\GREEN[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(3),
      I3 => sel0(7),
      I4 => \RED[7]\,
      O => \GREEN[7]_INST_0_i_1_n_0\
    );
\RED[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400040440"
    )
        port map (
      I0 => \RED[0]_INST_0_i_1_n_0\,
      I1 => \RED[0]_INST_0_i_2_n_0\,
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => sel0(7),
      I5 => sel0(0),
      O => RED(0)
    );
\RED[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \RED[7]\,
      I1 => sel0(1),
      I2 => sel0(4),
      O => \RED[0]_INST_0_i_1_n_0\
    );
\RED[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      O => \RED[0]_INST_0_i_2_n_0\
    );
\RED[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => sel0(3),
      I1 => \RED[7]\,
      I2 => sel0(1),
      I3 => sel0(4),
      I4 => \RED[7]_INST_0_i_1_n_0\,
      O => RED(1)
    );
\RED[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => sel0(0),
      I4 => sel0(2),
      O => \RED[7]_INST_0_i_1_n_0\
    );
\color_table_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(0),
      Q => sel0(0)
    );
\color_table_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(1),
      Q => sel0(1)
    );
\color_table_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(2),
      Q => sel0(2)
    );
\color_table_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(3),
      Q => sel0(3)
    );
\color_table_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(4),
      Q => sel0(4)
    );
\color_table_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(5),
      Q => sel0(5)
    );
\color_table_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(6),
      Q => sel0(6)
    );
\color_table_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \color_table_reg[0]_0\,
      D => D(7),
      Q => sel0(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top is
  port (
    RED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    GREEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BLUE : out STD_LOGIC_VECTOR ( 7 downto 0 );
    HSYNC : out STD_LOGIC;
    VSYNC : out STD_LOGIC;
    READY : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST_N : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top is
  signal \^blue\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \^green\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \^ready\ : STD_LOGIC;
  signal \^red\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal SYNC_GEN_INST_n_1 : STD_LOGIC;
  signal SYNC_GEN_INST_n_2 : STD_LOGIC;
  signal SYNC_GEN_INST_n_3 : STD_LOGIC;
  signal SYNC_GEN_INST_n_4 : STD_LOGIC;
  signal SYNC_GEN_INST_n_5 : STD_LOGIC;
  signal SYNC_GEN_INST_n_6 : STD_LOGIC;
  signal SYNC_GEN_INST_n_7 : STD_LOGIC;
  signal SYNC_GEN_INST_n_8 : STD_LOGIC;
  signal SYNC_GEN_INST_n_9 : STD_LOGIC;
begin
  BLUE(7 downto 6) <= \^blue\(7 downto 6);
  BLUE(5) <= \^blue\(6);
  BLUE(4) <= \^blue\(6);
  BLUE(3) <= \^blue\(6);
  BLUE(2) <= \^blue\(6);
  BLUE(1) <= \^blue\(6);
  BLUE(0) <= \^blue\(6);
  GREEN(7 downto 6) <= \^green\(7 downto 6);
  GREEN(5) <= \^green\(6);
  GREEN(4) <= \^green\(6);
  GREEN(3) <= \^green\(6);
  GREEN(2) <= \^green\(6);
  GREEN(1) <= \^green\(6);
  GREEN(0) <= \^green\(6);
  READY <= \^ready\;
  RED(7 downto 6) <= \^red\(7 downto 6);
  RED(5) <= \^red\(6);
  RED(4) <= \^red\(6);
  RED(3) <= \^red\(6);
  RED(2) <= \^red\(6);
  RED(1) <= \^red\(6);
  RED(0) <= \^red\(6);
SYNC_GEN_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_gen
     port map (
      CLK => CLK,
      D(7) => SYNC_GEN_INST_n_2,
      D(6) => SYNC_GEN_INST_n_3,
      D(5) => SYNC_GEN_INST_n_4,
      D(4) => SYNC_GEN_INST_n_5,
      D(3) => SYNC_GEN_INST_n_6,
      D(2) => SYNC_GEN_INST_n_7,
      D(1) => SYNC_GEN_INST_n_8,
      D(0) => SYNC_GEN_INST_n_9,
      HSYNC => HSYNC,
      RST_N => RST_N,
      RST_N_0 => SYNC_GEN_INST_n_1,
      VSYNC => VSYNC,
      ready_r_reg_0 => \^ready\
    );
VGA_COLOR_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_color
     port map (
      BLUE(1 downto 0) => \^blue\(7 downto 6),
      CLK => CLK,
      D(7) => SYNC_GEN_INST_n_2,
      D(6) => SYNC_GEN_INST_n_3,
      D(5) => SYNC_GEN_INST_n_4,
      D(4) => SYNC_GEN_INST_n_5,
      D(3) => SYNC_GEN_INST_n_6,
      D(2) => SYNC_GEN_INST_n_7,
      D(1) => SYNC_GEN_INST_n_8,
      D(0) => SYNC_GEN_INST_n_9,
      GREEN(1 downto 0) => \^green\(7 downto 6),
      RED(1 downto 0) => \^red\(7 downto 6),
      \RED[7]\ => \^ready\,
      \color_table_reg[0]_0\ => SYNC_GEN_INST_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    RED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    GREEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BLUE : out STD_LOGIC_VECTOR ( 7 downto 0 );
    HSYNC : out STD_LOGIC;
    VSYNC : out STD_LOGIC;
    READY : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST_N : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vga_top_0,vga_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vga_top,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST_N : signal is "xilinx.com:signal:reset:1.0 RST_N RST";
  attribute X_INTERFACE_PARAMETER of RST_N : signal is "XIL_INTERFACENAME RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top
     port map (
      BLUE(7 downto 0) => BLUE(7 downto 0),
      CLK => CLK,
      GREEN(7 downto 0) => GREEN(7 downto 0),
      HSYNC => HSYNC,
      READY => READY,
      RED(7 downto 0) => RED(7 downto 0),
      RST_N => RST_N,
      VSYNC => VSYNC
    );
end STRUCTURE;
