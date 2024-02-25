-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jun 28 20:35:09 2020
-- Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ breath_led_0_sim_netlist.vhdl
-- Design      : breath_led_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_breath_led is
  port (
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_breath_led;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_breath_led is
  signal breath_dir : STD_LOGIC;
  signal breath_dir_i_1_n_0 : STD_LOGIC;
  signal compare_value : STD_LOGIC;
  signal \compare_value0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \compare_value0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \compare_value0_carry__0_n_0\ : STD_LOGIC;
  signal \compare_value0_carry__0_n_1\ : STD_LOGIC;
  signal \compare_value0_carry__0_n_2\ : STD_LOGIC;
  signal \compare_value0_carry__0_n_3\ : STD_LOGIC;
  signal \compare_value0_carry__1_n_0\ : STD_LOGIC;
  signal \compare_value0_carry__1_n_1\ : STD_LOGIC;
  signal \compare_value0_carry__1_n_2\ : STD_LOGIC;
  signal \compare_value0_carry__1_n_3\ : STD_LOGIC;
  signal \compare_value0_carry__2_n_1\ : STD_LOGIC;
  signal \compare_value0_carry__2_n_2\ : STD_LOGIC;
  signal \compare_value0_carry__2_n_3\ : STD_LOGIC;
  signal compare_value0_carry_i_1_n_0 : STD_LOGIC;
  signal compare_value0_carry_n_0 : STD_LOGIC;
  signal compare_value0_carry_n_1 : STD_LOGIC;
  signal compare_value0_carry_n_2 : STD_LOGIC;
  signal compare_value0_carry_n_3 : STD_LOGIC;
  signal \compare_value[0]_i_10_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_11_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_12_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_13_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_14_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_15_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_16_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_17_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_18_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_19_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_20_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_5_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_6_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_7_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_8_n_0\ : STD_LOGIC;
  signal \compare_value[0]_i_9_n_0\ : STD_LOGIC;
  signal \compare_value[12]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value[12]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[12]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[12]_i_5_n_0\ : STD_LOGIC;
  signal \compare_value[16]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value[16]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[16]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[16]_i_5_n_0\ : STD_LOGIC;
  signal \compare_value[20]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value[20]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[20]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[20]_i_5_n_0\ : STD_LOGIC;
  signal \compare_value[24]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value[24]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[24]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[24]_i_5_n_0\ : STD_LOGIC;
  signal \compare_value[28]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value[28]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[28]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[28]_i_5_n_0\ : STD_LOGIC;
  signal \compare_value[4]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value[4]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[4]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[4]_i_5_n_0\ : STD_LOGIC;
  signal \compare_value[8]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value[8]_i_3_n_0\ : STD_LOGIC;
  signal \compare_value[8]_i_4_n_0\ : STD_LOGIC;
  signal \compare_value[8]_i_5_n_0\ : STD_LOGIC;
  signal compare_value_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \compare_value_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \compare_value_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \compare_value_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \compare_value_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \compare_value_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \compare_value_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \compare_value_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \compare_value_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \compare_value_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \compare_value_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \compare_value_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \compare_value_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \compare_value_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \compare_value_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \compare_value_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \compare_value_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \compare_value_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \compare_value_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \compare_value_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \compare_value_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \compare_value_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_breath[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_breath[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_breath[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_breath[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter_breath[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_breath[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_breath[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_breath[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_breath[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter_breath[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter_breath[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter_breath[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter_breath[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter_breath[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter_breath[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter_breath[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter_breath[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_breath[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter_breath[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter_breath[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_breath[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_breath[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_breath[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_breath[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_breath[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_breath[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_breath[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_breath_reg : STD_LOGIC_VECTOR ( 27 downto 8 );
  signal \counter_breath_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_breath_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_breath_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_breath_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_breath_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_breath_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_breath_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_breath_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_breath_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_breath_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_breath_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_breath_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_breath_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_breath_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_breath_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_breath_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_breath_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_breath_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_breath_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_compare[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_compare[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_compare[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_compare[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_compare[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_compare[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_compare[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_compare[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_compare[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_compare[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_compare[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_compare[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_compare[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_compare[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_compare[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_compare[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_compare_reg : STD_LOGIC_VECTOR ( 16 downto 4 );
  signal \counter_compare_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_compare_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_compare_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_compare_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_compare_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_compare_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_compare_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_compare_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_compare_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_compare_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_compare_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_compare_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_compare_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_compare_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_compare_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_compare_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_pwm[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_pwm[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_pwm[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_pwm[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_pwm[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter_pwm[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter_pwm[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter_pwm[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_pwm[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_pwm[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_pwm[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_pwm[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_pwm[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_pwm[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_pwm[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_pwm[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_pwm[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_pwm[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_pwm[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_pwm_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter_pwm_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pwm_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_pwm_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_pwm_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_pwm_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_pwm_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_pwm_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_pwm_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_pwm_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_pwm_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_pwm_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_pwm_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^led\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal led_breath_view : STD_LOGIC;
  signal \led_breath_view0_carry__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry__0_n_1\ : STD_LOGIC;
  signal \led_breath_view0_carry__0_n_2\ : STD_LOGIC;
  signal \led_breath_view0_carry__0_n_3\ : STD_LOGIC;
  signal \led_breath_view0_carry__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry__1_n_1\ : STD_LOGIC;
  signal \led_breath_view0_carry__1_n_2\ : STD_LOGIC;
  signal \led_breath_view0_carry__1_n_3\ : STD_LOGIC;
  signal \led_breath_view0_carry__2_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry__2_n_1\ : STD_LOGIC;
  signal \led_breath_view0_carry__2_n_2\ : STD_LOGIC;
  signal \led_breath_view0_carry__2_n_3\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_1__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_1_n_0 : STD_LOGIC;
  signal \led_breath_view0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_2__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_2_n_0 : STD_LOGIC;
  signal \led_breath_view0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_3__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_3_n_0 : STD_LOGIC;
  signal \led_breath_view0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_4__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_4_n_0 : STD_LOGIC;
  signal \led_breath_view0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_5__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_5_n_0 : STD_LOGIC;
  signal \led_breath_view0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_6__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_6_n_0 : STD_LOGIC;
  signal \led_breath_view0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_7__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_7_n_0 : STD_LOGIC;
  signal \led_breath_view0_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \led_breath_view0_carry_i_8__2_n_0\ : STD_LOGIC;
  signal led_breath_view0_carry_i_8_n_0 : STD_LOGIC;
  signal led_breath_view0_carry_n_0 : STD_LOGIC;
  signal led_breath_view0_carry_n_1 : STD_LOGIC;
  signal led_breath_view0_carry_n_2 : STD_LOGIC;
  signal led_breath_view0_carry_n_3 : STD_LOGIC;
  signal led_breath_view_i_1_n_0 : STD_LOGIC;
  signal \led_number[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_number[0]_i_2_n_0\ : STD_LOGIC;
  signal \led_number[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_number[1]_i_2_n_0\ : STD_LOGIC;
  signal \led_number[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_number_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_number_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_number_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_number_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_number_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_number_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \led_number_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \led_number_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_number_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_number_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_number_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \led_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \led_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_compare_value0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_compare_value_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_breath_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_counter_breath_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_compare_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_compare_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_pwm_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_pwm_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_led_breath_view0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_led_breath_view0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_led_breath_view0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_led_breath_view0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_number[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_number_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_number_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_number_state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_number_state[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_number_state[3]_i_3\ : label is "soft_lutpair2";
begin
  led(7 downto 0) <= \^led\(7 downto 0);
breath_dir_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \led_number_state[3]_i_4_n_0\,
      I1 => breath_dir,
      O => breath_dir_i_1_n_0
    );
breath_dir_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => breath_dir_i_1_n_0,
      Q => breath_dir
    );
compare_value0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => compare_value0_carry_n_0,
      CO(2) => compare_value0_carry_n_1,
      CO(1) => compare_value0_carry_n_2,
      CO(0) => compare_value0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => compare_value_reg(1),
      DI(0) => '0',
      O(3 downto 0) => data(3 downto 0),
      S(3 downto 2) => compare_value_reg(3 downto 2),
      S(1) => compare_value0_carry_i_1_n_0,
      S(0) => compare_value_reg(0)
    );
\compare_value0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => compare_value0_carry_n_0,
      CO(3) => \compare_value0_carry__0_n_0\,
      CO(2) => \compare_value0_carry__0_n_1\,
      CO(1) => \compare_value0_carry__0_n_2\,
      CO(0) => \compare_value0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => compare_value_reg(5 downto 4),
      O(3 downto 0) => data(7 downto 4),
      S(3 downto 2) => compare_value_reg(7 downto 6),
      S(1) => \compare_value0_carry__0_i_1_n_0\,
      S(0) => \compare_value0_carry__0_i_2_n_0\
    );
\compare_value0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(5),
      O => \compare_value0_carry__0_i_1_n_0\
    );
\compare_value0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(4),
      O => \compare_value0_carry__0_i_2_n_0\
    );
\compare_value0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value0_carry__0_n_0\,
      CO(3) => \compare_value0_carry__1_n_0\,
      CO(2) => \compare_value0_carry__1_n_1\,
      CO(1) => \compare_value0_carry__1_n_2\,
      CO(0) => \compare_value0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data(11 downto 8),
      S(3 downto 0) => compare_value_reg(11 downto 8)
    );
\compare_value0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value0_carry__1_n_0\,
      CO(3) => \NLW_compare_value0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \compare_value0_carry__2_n_1\,
      CO(1) => \compare_value0_carry__2_n_2\,
      CO(0) => \compare_value0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data(15 downto 12),
      S(3 downto 0) => compare_value_reg(15 downto 12)
    );
compare_value0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(1),
      O => compare_value0_carry_i_1_n_0
    );
\compare_value[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FF7F"
    )
        port map (
      I0 => \compare_value[0]_i_3_n_0\,
      I1 => compare_value_reg(14),
      I2 => compare_value_reg(15),
      I3 => \compare_value[0]_i_4_n_0\,
      I4 => \compare_value[0]_i_5_n_0\,
      I5 => \compare_value[0]_i_6_n_0\,
      O => compare_value
    );
\compare_value[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => compare_value_reg(0),
      I1 => breath_dir,
      I2 => data(0),
      O => \compare_value[0]_i_10_n_0\
    );
\compare_value[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => compare_value_reg(19),
      I1 => compare_value_reg(20),
      I2 => compare_value_reg(23),
      I3 => compare_value_reg(16),
      I4 => compare_value_reg(28),
      O => \compare_value[0]_i_11_n_0\
    );
\compare_value[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => compare_value_reg(17),
      I1 => compare_value_reg(18),
      I2 => compare_value_reg(5),
      I3 => compare_value_reg(4),
      I4 => compare_value_reg(11),
      I5 => compare_value_reg(12),
      O => \compare_value[0]_i_12_n_0\
    );
\compare_value[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => compare_value_reg(22),
      I1 => compare_value_reg(25),
      I2 => compare_value_reg(26),
      I3 => compare_value_reg(21),
      I4 => compare_value_reg(30),
      I5 => compare_value_reg(29),
      O => \compare_value[0]_i_13_n_0\
    );
\compare_value[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => compare_value_reg(9),
      I1 => compare_value_reg(10),
      I2 => compare_value_reg(13),
      I3 => compare_value_reg(15),
      I4 => \compare_value[0]_i_20_n_0\,
      O => \compare_value[0]_i_14_n_0\
    );
\compare_value[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \compare_value[0]_i_17_n_0\,
      I1 => compare_value_reg(7),
      I2 => compare_value_reg(14),
      I3 => compare_value_reg(0),
      I4 => compare_value_reg(2),
      O => \compare_value[0]_i_15_n_0\
    );
\compare_value[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0155FFFFFFFFFFFF"
    )
        port map (
      I0 => compare_value_reg(7),
      I1 => compare_value_reg(4),
      I2 => compare_value_reg(5),
      I3 => compare_value_reg(6),
      I4 => compare_value_reg(9),
      I5 => compare_value_reg(8),
      O => \compare_value[0]_i_16_n_0\
    );
\compare_value[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => compare_value_reg(27),
      I1 => compare_value_reg(24),
      I2 => compare_value_reg(31),
      O => \compare_value[0]_i_17_n_0\
    );
\compare_value[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => counter_compare_reg(6),
      I1 => counter_compare_reg(4),
      I2 => counter_compare_reg(5),
      I3 => counter_compare_reg(7),
      I4 => counter_compare_reg(8),
      I5 => counter_compare_reg(9),
      O => \compare_value[0]_i_18_n_0\
    );
\compare_value[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_compare_reg(10),
      I1 => counter_compare_reg(11),
      I2 => counter_compare_reg(12),
      I3 => counter_compare_reg(13),
      O => \compare_value[0]_i_19_n_0\
    );
\compare_value[0]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => compare_value_reg(8),
      I1 => compare_value_reg(6),
      I2 => compare_value_reg(3),
      I3 => compare_value_reg(1),
      O => \compare_value[0]_i_20_n_0\
    );
\compare_value[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000100FFFFFFFF"
    )
        port map (
      I0 => \compare_value[0]_i_11_n_0\,
      I1 => \compare_value[0]_i_12_n_0\,
      I2 => \compare_value[0]_i_13_n_0\,
      I3 => \compare_value[0]_i_14_n_0\,
      I4 => \compare_value[0]_i_15_n_0\,
      I5 => breath_dir,
      O => \compare_value[0]_i_3_n_0\
    );
\compare_value[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \compare_value[0]_i_16_n_0\,
      I1 => compare_value_reg(10),
      I2 => compare_value_reg(13),
      I3 => compare_value_reg(11),
      I4 => compare_value_reg(12),
      O => \compare_value[0]_i_4_n_0\
    );
\compare_value[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \compare_value[0]_i_13_n_0\,
      I1 => \compare_value[0]_i_17_n_0\,
      I2 => compare_value_reg(18),
      I3 => compare_value_reg(17),
      I4 => breath_dir,
      I5 => \compare_value[0]_i_11_n_0\,
      O => \compare_value[0]_i_5_n_0\
    );
\compare_value[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000777F"
    )
        port map (
      I0 => counter_compare_reg(15),
      I1 => counter_compare_reg(14),
      I2 => \compare_value[0]_i_18_n_0\,
      I3 => \compare_value[0]_i_19_n_0\,
      I4 => counter_compare_reg(16),
      O => \compare_value[0]_i_6_n_0\
    );
\compare_value[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(3),
      I1 => compare_value_reg(3),
      I2 => breath_dir,
      O => \compare_value[0]_i_7_n_0\
    );
\compare_value[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(2),
      I1 => compare_value_reg(2),
      I2 => breath_dir,
      O => \compare_value[0]_i_8_n_0\
    );
\compare_value[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(1),
      I1 => compare_value_reg(1),
      I2 => breath_dir,
      O => \compare_value[0]_i_9_n_0\
    );
\compare_value[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(15),
      I1 => compare_value_reg(15),
      I2 => breath_dir,
      O => \compare_value[12]_i_2_n_0\
    );
\compare_value[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(14),
      I1 => compare_value_reg(14),
      I2 => breath_dir,
      O => \compare_value[12]_i_3_n_0\
    );
\compare_value[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(13),
      I1 => compare_value_reg(13),
      I2 => breath_dir,
      O => \compare_value[12]_i_4_n_0\
    );
\compare_value[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(12),
      I1 => compare_value_reg(12),
      I2 => breath_dir,
      O => \compare_value[12]_i_5_n_0\
    );
\compare_value[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(19),
      I1 => breath_dir,
      O => \compare_value[16]_i_2_n_0\
    );
\compare_value[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(18),
      I1 => breath_dir,
      O => \compare_value[16]_i_3_n_0\
    );
\compare_value[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(17),
      I1 => breath_dir,
      O => \compare_value[16]_i_4_n_0\
    );
\compare_value[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(16),
      I1 => breath_dir,
      O => \compare_value[16]_i_5_n_0\
    );
\compare_value[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(23),
      I1 => breath_dir,
      O => \compare_value[20]_i_2_n_0\
    );
\compare_value[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(22),
      I1 => breath_dir,
      O => \compare_value[20]_i_3_n_0\
    );
\compare_value[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(21),
      I1 => breath_dir,
      O => \compare_value[20]_i_4_n_0\
    );
\compare_value[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(20),
      I1 => breath_dir,
      O => \compare_value[20]_i_5_n_0\
    );
\compare_value[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(27),
      I1 => breath_dir,
      O => \compare_value[24]_i_2_n_0\
    );
\compare_value[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(26),
      I1 => breath_dir,
      O => \compare_value[24]_i_3_n_0\
    );
\compare_value[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(25),
      I1 => breath_dir,
      O => \compare_value[24]_i_4_n_0\
    );
\compare_value[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(24),
      I1 => breath_dir,
      O => \compare_value[24]_i_5_n_0\
    );
\compare_value[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => breath_dir,
      I1 => compare_value_reg(31),
      O => \compare_value[28]_i_2_n_0\
    );
\compare_value[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(30),
      I1 => breath_dir,
      O => \compare_value[28]_i_3_n_0\
    );
\compare_value[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(29),
      I1 => breath_dir,
      O => \compare_value[28]_i_4_n_0\
    );
\compare_value[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => compare_value_reg(28),
      I1 => breath_dir,
      O => \compare_value[28]_i_5_n_0\
    );
\compare_value[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(7),
      I1 => compare_value_reg(7),
      I2 => breath_dir,
      O => \compare_value[4]_i_2_n_0\
    );
\compare_value[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(6),
      I1 => compare_value_reg(6),
      I2 => breath_dir,
      O => \compare_value[4]_i_3_n_0\
    );
\compare_value[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => compare_value_reg(5),
      I1 => breath_dir,
      I2 => data(5),
      O => \compare_value[4]_i_4_n_0\
    );
\compare_value[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => compare_value_reg(4),
      I1 => breath_dir,
      I2 => data(4),
      O => \compare_value[4]_i_5_n_0\
    );
\compare_value[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(11),
      I1 => compare_value_reg(11),
      I2 => breath_dir,
      O => \compare_value[8]_i_2_n_0\
    );
\compare_value[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(10),
      I1 => compare_value_reg(10),
      I2 => breath_dir,
      O => \compare_value[8]_i_3_n_0\
    );
\compare_value[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(9),
      I1 => compare_value_reg(9),
      I2 => breath_dir,
      O => \compare_value[8]_i_4_n_0\
    );
\compare_value[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data(8),
      I1 => compare_value_reg(8),
      I2 => breath_dir,
      O => \compare_value[8]_i_5_n_0\
    );
\compare_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[0]_i_2_n_7\,
      Q => compare_value_reg(0)
    );
\compare_value_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \compare_value_reg[0]_i_2_n_0\,
      CO(2) => \compare_value_reg[0]_i_2_n_1\,
      CO(1) => \compare_value_reg[0]_i_2_n_2\,
      CO(0) => \compare_value_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => breath_dir,
      DI(2) => breath_dir,
      DI(1) => breath_dir,
      DI(0) => '0',
      O(3) => \compare_value_reg[0]_i_2_n_4\,
      O(2) => \compare_value_reg[0]_i_2_n_5\,
      O(1) => \compare_value_reg[0]_i_2_n_6\,
      O(0) => \compare_value_reg[0]_i_2_n_7\,
      S(3) => \compare_value[0]_i_7_n_0\,
      S(2) => \compare_value[0]_i_8_n_0\,
      S(1) => \compare_value[0]_i_9_n_0\,
      S(0) => \compare_value[0]_i_10_n_0\
    );
\compare_value_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[8]_i_1_n_5\,
      Q => compare_value_reg(10)
    );
\compare_value_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[8]_i_1_n_4\,
      Q => compare_value_reg(11)
    );
\compare_value_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[12]_i_1_n_7\,
      Q => compare_value_reg(12)
    );
\compare_value_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value_reg[8]_i_1_n_0\,
      CO(3) => \compare_value_reg[12]_i_1_n_0\,
      CO(2) => \compare_value_reg[12]_i_1_n_1\,
      CO(1) => \compare_value_reg[12]_i_1_n_2\,
      CO(0) => \compare_value_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => breath_dir,
      DI(2) => breath_dir,
      DI(1) => breath_dir,
      DI(0) => breath_dir,
      O(3) => \compare_value_reg[12]_i_1_n_4\,
      O(2) => \compare_value_reg[12]_i_1_n_5\,
      O(1) => \compare_value_reg[12]_i_1_n_6\,
      O(0) => \compare_value_reg[12]_i_1_n_7\,
      S(3) => \compare_value[12]_i_2_n_0\,
      S(2) => \compare_value[12]_i_3_n_0\,
      S(1) => \compare_value[12]_i_4_n_0\,
      S(0) => \compare_value[12]_i_5_n_0\
    );
\compare_value_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[12]_i_1_n_6\,
      Q => compare_value_reg(13)
    );
\compare_value_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[12]_i_1_n_5\,
      Q => compare_value_reg(14)
    );
\compare_value_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[12]_i_1_n_4\,
      Q => compare_value_reg(15)
    );
\compare_value_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[16]_i_1_n_7\,
      Q => compare_value_reg(16)
    );
\compare_value_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value_reg[12]_i_1_n_0\,
      CO(3) => \compare_value_reg[16]_i_1_n_0\,
      CO(2) => \compare_value_reg[16]_i_1_n_1\,
      CO(1) => \compare_value_reg[16]_i_1_n_2\,
      CO(0) => \compare_value_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => breath_dir,
      DI(2) => breath_dir,
      DI(1) => breath_dir,
      DI(0) => breath_dir,
      O(3) => \compare_value_reg[16]_i_1_n_4\,
      O(2) => \compare_value_reg[16]_i_1_n_5\,
      O(1) => \compare_value_reg[16]_i_1_n_6\,
      O(0) => \compare_value_reg[16]_i_1_n_7\,
      S(3) => \compare_value[16]_i_2_n_0\,
      S(2) => \compare_value[16]_i_3_n_0\,
      S(1) => \compare_value[16]_i_4_n_0\,
      S(0) => \compare_value[16]_i_5_n_0\
    );
\compare_value_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[16]_i_1_n_6\,
      Q => compare_value_reg(17)
    );
\compare_value_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[16]_i_1_n_5\,
      Q => compare_value_reg(18)
    );
\compare_value_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[16]_i_1_n_4\,
      Q => compare_value_reg(19)
    );
\compare_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[0]_i_2_n_6\,
      Q => compare_value_reg(1)
    );
\compare_value_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[20]_i_1_n_7\,
      Q => compare_value_reg(20)
    );
\compare_value_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value_reg[16]_i_1_n_0\,
      CO(3) => \compare_value_reg[20]_i_1_n_0\,
      CO(2) => \compare_value_reg[20]_i_1_n_1\,
      CO(1) => \compare_value_reg[20]_i_1_n_2\,
      CO(0) => \compare_value_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => breath_dir,
      DI(2) => breath_dir,
      DI(1) => breath_dir,
      DI(0) => breath_dir,
      O(3) => \compare_value_reg[20]_i_1_n_4\,
      O(2) => \compare_value_reg[20]_i_1_n_5\,
      O(1) => \compare_value_reg[20]_i_1_n_6\,
      O(0) => \compare_value_reg[20]_i_1_n_7\,
      S(3) => \compare_value[20]_i_2_n_0\,
      S(2) => \compare_value[20]_i_3_n_0\,
      S(1) => \compare_value[20]_i_4_n_0\,
      S(0) => \compare_value[20]_i_5_n_0\
    );
\compare_value_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[20]_i_1_n_6\,
      Q => compare_value_reg(21)
    );
\compare_value_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[20]_i_1_n_5\,
      Q => compare_value_reg(22)
    );
\compare_value_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[20]_i_1_n_4\,
      Q => compare_value_reg(23)
    );
\compare_value_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[24]_i_1_n_7\,
      Q => compare_value_reg(24)
    );
\compare_value_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value_reg[20]_i_1_n_0\,
      CO(3) => \compare_value_reg[24]_i_1_n_0\,
      CO(2) => \compare_value_reg[24]_i_1_n_1\,
      CO(1) => \compare_value_reg[24]_i_1_n_2\,
      CO(0) => \compare_value_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => breath_dir,
      DI(2) => breath_dir,
      DI(1) => breath_dir,
      DI(0) => breath_dir,
      O(3) => \compare_value_reg[24]_i_1_n_4\,
      O(2) => \compare_value_reg[24]_i_1_n_5\,
      O(1) => \compare_value_reg[24]_i_1_n_6\,
      O(0) => \compare_value_reg[24]_i_1_n_7\,
      S(3) => \compare_value[24]_i_2_n_0\,
      S(2) => \compare_value[24]_i_3_n_0\,
      S(1) => \compare_value[24]_i_4_n_0\,
      S(0) => \compare_value[24]_i_5_n_0\
    );
\compare_value_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[24]_i_1_n_6\,
      Q => compare_value_reg(25)
    );
\compare_value_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[24]_i_1_n_5\,
      Q => compare_value_reg(26)
    );
\compare_value_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[24]_i_1_n_4\,
      Q => compare_value_reg(27)
    );
\compare_value_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[28]_i_1_n_7\,
      Q => compare_value_reg(28)
    );
\compare_value_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value_reg[24]_i_1_n_0\,
      CO(3) => \NLW_compare_value_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \compare_value_reg[28]_i_1_n_1\,
      CO(1) => \compare_value_reg[28]_i_1_n_2\,
      CO(0) => \compare_value_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => breath_dir,
      DI(1) => breath_dir,
      DI(0) => breath_dir,
      O(3) => \compare_value_reg[28]_i_1_n_4\,
      O(2) => \compare_value_reg[28]_i_1_n_5\,
      O(1) => \compare_value_reg[28]_i_1_n_6\,
      O(0) => \compare_value_reg[28]_i_1_n_7\,
      S(3) => \compare_value[28]_i_2_n_0\,
      S(2) => \compare_value[28]_i_3_n_0\,
      S(1) => \compare_value[28]_i_4_n_0\,
      S(0) => \compare_value[28]_i_5_n_0\
    );
\compare_value_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[28]_i_1_n_6\,
      Q => compare_value_reg(29)
    );
\compare_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[0]_i_2_n_5\,
      Q => compare_value_reg(2)
    );
\compare_value_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[28]_i_1_n_5\,
      Q => compare_value_reg(30)
    );
\compare_value_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[28]_i_1_n_4\,
      Q => compare_value_reg(31)
    );
\compare_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[0]_i_2_n_4\,
      Q => compare_value_reg(3)
    );
\compare_value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[4]_i_1_n_7\,
      Q => compare_value_reg(4)
    );
\compare_value_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value_reg[0]_i_2_n_0\,
      CO(3) => \compare_value_reg[4]_i_1_n_0\,
      CO(2) => \compare_value_reg[4]_i_1_n_1\,
      CO(1) => \compare_value_reg[4]_i_1_n_2\,
      CO(0) => \compare_value_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => breath_dir,
      DI(2) => breath_dir,
      DI(1 downto 0) => B"00",
      O(3) => \compare_value_reg[4]_i_1_n_4\,
      O(2) => \compare_value_reg[4]_i_1_n_5\,
      O(1) => \compare_value_reg[4]_i_1_n_6\,
      O(0) => \compare_value_reg[4]_i_1_n_7\,
      S(3) => \compare_value[4]_i_2_n_0\,
      S(2) => \compare_value[4]_i_3_n_0\,
      S(1) => \compare_value[4]_i_4_n_0\,
      S(0) => \compare_value[4]_i_5_n_0\
    );
\compare_value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[4]_i_1_n_6\,
      Q => compare_value_reg(5)
    );
\compare_value_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[4]_i_1_n_5\,
      Q => compare_value_reg(6)
    );
\compare_value_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[4]_i_1_n_4\,
      Q => compare_value_reg(7)
    );
\compare_value_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[8]_i_1_n_7\,
      Q => compare_value_reg(8)
    );
\compare_value_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compare_value_reg[4]_i_1_n_0\,
      CO(3) => \compare_value_reg[8]_i_1_n_0\,
      CO(2) => \compare_value_reg[8]_i_1_n_1\,
      CO(1) => \compare_value_reg[8]_i_1_n_2\,
      CO(0) => \compare_value_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => breath_dir,
      DI(2) => breath_dir,
      DI(1) => breath_dir,
      DI(0) => breath_dir,
      O(3) => \compare_value_reg[8]_i_1_n_4\,
      O(2) => \compare_value_reg[8]_i_1_n_5\,
      O(1) => \compare_value_reg[8]_i_1_n_6\,
      O(0) => \compare_value_reg[8]_i_1_n_7\,
      S(3) => \compare_value[8]_i_2_n_0\,
      S(2) => \compare_value[8]_i_3_n_0\,
      S(1) => \compare_value[8]_i_4_n_0\,
      S(0) => \compare_value[8]_i_5_n_0\
    );
\compare_value_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => compare_value,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \compare_value_reg[8]_i_1_n_6\,
      Q => compare_value_reg(9)
    );
\counter_breath[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[0]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[0]_i_2_n_0\
    );
\counter_breath[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[3]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[0]_i_3_n_0\
    );
\counter_breath[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[2]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[0]_i_4_n_0\
    );
\counter_breath[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[1]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[0]_i_5_n_0\
    );
\counter_breath[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[0]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[0]_i_6_n_0\
    );
\counter_breath[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(15),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[12]_i_2_n_0\
    );
\counter_breath[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(14),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[12]_i_3_n_0\
    );
\counter_breath[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(13),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[12]_i_4_n_0\
    );
\counter_breath[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(12),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[12]_i_5_n_0\
    );
\counter_breath[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(19),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[16]_i_2_n_0\
    );
\counter_breath[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(18),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[16]_i_3_n_0\
    );
\counter_breath[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(17),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[16]_i_4_n_0\
    );
\counter_breath[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(16),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[16]_i_5_n_0\
    );
\counter_breath[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(23),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[20]_i_2_n_0\
    );
\counter_breath[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(22),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[20]_i_3_n_0\
    );
\counter_breath[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(21),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[20]_i_4_n_0\
    );
\counter_breath[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(20),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[20]_i_5_n_0\
    );
\counter_breath[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(26),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[24]_i_2_n_0\
    );
\counter_breath[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(25),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[24]_i_3_n_0\
    );
\counter_breath[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(24),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[24]_i_4_n_0\
    );
\counter_breath[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[7]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[4]_i_2_n_0\
    );
\counter_breath[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[6]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[4]_i_3_n_0\
    );
\counter_breath[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[5]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[4]_i_4_n_0\
    );
\counter_breath[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_breath_reg_n_0_[4]\,
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[4]_i_5_n_0\
    );
\counter_breath[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(11),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[8]_i_2_n_0\
    );
\counter_breath[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(10),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[8]_i_3_n_0\
    );
\counter_breath[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(9),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[8]_i_4_n_0\
    );
\counter_breath[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_breath_reg(8),
      I1 => \led_number_state[3]_i_4_n_0\,
      O => \counter_breath[8]_i_5_n_0\
    );
\counter_breath_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[0]_i_1_n_7\,
      Q => \counter_breath_reg_n_0_[0]\
    );
\counter_breath_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_breath_reg[0]_i_1_n_0\,
      CO(2) => \counter_breath_reg[0]_i_1_n_1\,
      CO(1) => \counter_breath_reg[0]_i_1_n_2\,
      CO(0) => \counter_breath_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_breath[0]_i_2_n_0\,
      O(3) => \counter_breath_reg[0]_i_1_n_4\,
      O(2) => \counter_breath_reg[0]_i_1_n_5\,
      O(1) => \counter_breath_reg[0]_i_1_n_6\,
      O(0) => \counter_breath_reg[0]_i_1_n_7\,
      S(3) => \counter_breath[0]_i_3_n_0\,
      S(2) => \counter_breath[0]_i_4_n_0\,
      S(1) => \counter_breath[0]_i_5_n_0\,
      S(0) => \counter_breath[0]_i_6_n_0\
    );
\counter_breath_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[8]_i_1_n_5\,
      Q => counter_breath_reg(10)
    );
\counter_breath_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[8]_i_1_n_4\,
      Q => counter_breath_reg(11)
    );
\counter_breath_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[12]_i_1_n_7\,
      Q => counter_breath_reg(12)
    );
\counter_breath_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_breath_reg[8]_i_1_n_0\,
      CO(3) => \counter_breath_reg[12]_i_1_n_0\,
      CO(2) => \counter_breath_reg[12]_i_1_n_1\,
      CO(1) => \counter_breath_reg[12]_i_1_n_2\,
      CO(0) => \counter_breath_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_breath_reg[12]_i_1_n_4\,
      O(2) => \counter_breath_reg[12]_i_1_n_5\,
      O(1) => \counter_breath_reg[12]_i_1_n_6\,
      O(0) => \counter_breath_reg[12]_i_1_n_7\,
      S(3) => \counter_breath[12]_i_2_n_0\,
      S(2) => \counter_breath[12]_i_3_n_0\,
      S(1) => \counter_breath[12]_i_4_n_0\,
      S(0) => \counter_breath[12]_i_5_n_0\
    );
\counter_breath_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[12]_i_1_n_6\,
      Q => counter_breath_reg(13)
    );
\counter_breath_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[12]_i_1_n_5\,
      Q => counter_breath_reg(14)
    );
\counter_breath_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[12]_i_1_n_4\,
      Q => counter_breath_reg(15)
    );
\counter_breath_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[16]_i_1_n_7\,
      Q => counter_breath_reg(16)
    );
\counter_breath_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_breath_reg[12]_i_1_n_0\,
      CO(3) => \counter_breath_reg[16]_i_1_n_0\,
      CO(2) => \counter_breath_reg[16]_i_1_n_1\,
      CO(1) => \counter_breath_reg[16]_i_1_n_2\,
      CO(0) => \counter_breath_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_breath_reg[16]_i_1_n_4\,
      O(2) => \counter_breath_reg[16]_i_1_n_5\,
      O(1) => \counter_breath_reg[16]_i_1_n_6\,
      O(0) => \counter_breath_reg[16]_i_1_n_7\,
      S(3) => \counter_breath[16]_i_2_n_0\,
      S(2) => \counter_breath[16]_i_3_n_0\,
      S(1) => \counter_breath[16]_i_4_n_0\,
      S(0) => \counter_breath[16]_i_5_n_0\
    );
\counter_breath_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[16]_i_1_n_6\,
      Q => counter_breath_reg(17)
    );
\counter_breath_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[16]_i_1_n_5\,
      Q => counter_breath_reg(18)
    );
\counter_breath_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[16]_i_1_n_4\,
      Q => counter_breath_reg(19)
    );
\counter_breath_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[0]_i_1_n_6\,
      Q => \counter_breath_reg_n_0_[1]\
    );
\counter_breath_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[20]_i_1_n_7\,
      Q => counter_breath_reg(20)
    );
\counter_breath_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_breath_reg[16]_i_1_n_0\,
      CO(3) => \counter_breath_reg[20]_i_1_n_0\,
      CO(2) => \counter_breath_reg[20]_i_1_n_1\,
      CO(1) => \counter_breath_reg[20]_i_1_n_2\,
      CO(0) => \counter_breath_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_breath_reg[20]_i_1_n_4\,
      O(2) => \counter_breath_reg[20]_i_1_n_5\,
      O(1) => \counter_breath_reg[20]_i_1_n_6\,
      O(0) => \counter_breath_reg[20]_i_1_n_7\,
      S(3) => \counter_breath[20]_i_2_n_0\,
      S(2) => \counter_breath[20]_i_3_n_0\,
      S(1) => \counter_breath[20]_i_4_n_0\,
      S(0) => \counter_breath[20]_i_5_n_0\
    );
\counter_breath_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[20]_i_1_n_6\,
      Q => counter_breath_reg(21)
    );
\counter_breath_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[20]_i_1_n_5\,
      Q => counter_breath_reg(22)
    );
\counter_breath_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[20]_i_1_n_4\,
      Q => counter_breath_reg(23)
    );
\counter_breath_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[24]_i_1_n_7\,
      Q => counter_breath_reg(24)
    );
\counter_breath_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_breath_reg[20]_i_1_n_0\,
      CO(3) => \counter_breath_reg[24]_i_1_n_0\,
      CO(2) => \NLW_counter_breath_reg[24]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \counter_breath_reg[24]_i_1_n_2\,
      CO(0) => \counter_breath_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_breath_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \counter_breath_reg[24]_i_1_n_5\,
      O(1) => \counter_breath_reg[24]_i_1_n_6\,
      O(0) => \counter_breath_reg[24]_i_1_n_7\,
      S(3) => '1',
      S(2) => \counter_breath[24]_i_2_n_0\,
      S(1) => \counter_breath[24]_i_3_n_0\,
      S(0) => \counter_breath[24]_i_4_n_0\
    );
\counter_breath_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[24]_i_1_n_6\,
      Q => counter_breath_reg(25)
    );
\counter_breath_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[24]_i_1_n_5\,
      Q => counter_breath_reg(26)
    );
\counter_breath_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[24]_i_1_n_0\,
      Q => counter_breath_reg(27)
    );
\counter_breath_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[0]_i_1_n_5\,
      Q => \counter_breath_reg_n_0_[2]\
    );
\counter_breath_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[0]_i_1_n_4\,
      Q => \counter_breath_reg_n_0_[3]\
    );
\counter_breath_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[4]_i_1_n_7\,
      Q => \counter_breath_reg_n_0_[4]\
    );
\counter_breath_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_breath_reg[0]_i_1_n_0\,
      CO(3) => \counter_breath_reg[4]_i_1_n_0\,
      CO(2) => \counter_breath_reg[4]_i_1_n_1\,
      CO(1) => \counter_breath_reg[4]_i_1_n_2\,
      CO(0) => \counter_breath_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_breath_reg[4]_i_1_n_4\,
      O(2) => \counter_breath_reg[4]_i_1_n_5\,
      O(1) => \counter_breath_reg[4]_i_1_n_6\,
      O(0) => \counter_breath_reg[4]_i_1_n_7\,
      S(3) => \counter_breath[4]_i_2_n_0\,
      S(2) => \counter_breath[4]_i_3_n_0\,
      S(1) => \counter_breath[4]_i_4_n_0\,
      S(0) => \counter_breath[4]_i_5_n_0\
    );
\counter_breath_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[4]_i_1_n_6\,
      Q => \counter_breath_reg_n_0_[5]\
    );
\counter_breath_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[4]_i_1_n_5\,
      Q => \counter_breath_reg_n_0_[6]\
    );
\counter_breath_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[4]_i_1_n_4\,
      Q => \counter_breath_reg_n_0_[7]\
    );
\counter_breath_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[8]_i_1_n_7\,
      Q => counter_breath_reg(8)
    );
\counter_breath_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_breath_reg[4]_i_1_n_0\,
      CO(3) => \counter_breath_reg[8]_i_1_n_0\,
      CO(2) => \counter_breath_reg[8]_i_1_n_1\,
      CO(1) => \counter_breath_reg[8]_i_1_n_2\,
      CO(0) => \counter_breath_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_breath_reg[8]_i_1_n_4\,
      O(2) => \counter_breath_reg[8]_i_1_n_5\,
      O(1) => \counter_breath_reg[8]_i_1_n_6\,
      O(0) => \counter_breath_reg[8]_i_1_n_7\,
      S(3) => \counter_breath[8]_i_2_n_0\,
      S(2) => \counter_breath[8]_i_3_n_0\,
      S(1) => \counter_breath[8]_i_4_n_0\,
      S(0) => \counter_breath[8]_i_5_n_0\
    );
\counter_breath_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_breath_reg[8]_i_1_n_6\,
      Q => counter_breath_reg(9)
    );
\counter_compare[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_compare_reg_n_0_[3]\,
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[0]_i_2_n_0\
    );
\counter_compare[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_compare_reg_n_0_[2]\,
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[0]_i_3_n_0\
    );
\counter_compare[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_compare_reg_n_0_[1]\,
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[0]_i_4_n_0\
    );
\counter_compare[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \counter_compare_reg_n_0_[0]\,
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[0]_i_5_n_0\
    );
\counter_compare[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(15),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[12]_i_2_n_0\
    );
\counter_compare[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(14),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[12]_i_3_n_0\
    );
\counter_compare[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(13),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[12]_i_4_n_0\
    );
\counter_compare[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(12),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[12]_i_5_n_0\
    );
\counter_compare[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(7),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[4]_i_2_n_0\
    );
\counter_compare[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(6),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[4]_i_3_n_0\
    );
\counter_compare[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(5),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[4]_i_4_n_0\
    );
\counter_compare[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(4),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[4]_i_5_n_0\
    );
\counter_compare[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(11),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[8]_i_2_n_0\
    );
\counter_compare[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(10),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[8]_i_3_n_0\
    );
\counter_compare[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(9),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[8]_i_4_n_0\
    );
\counter_compare[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_compare_reg(8),
      I1 => \compare_value[0]_i_6_n_0\,
      O => \counter_compare[8]_i_5_n_0\
    );
\counter_compare_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[0]_i_1_n_7\,
      Q => \counter_compare_reg_n_0_[0]\
    );
\counter_compare_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_compare_reg[0]_i_1_n_0\,
      CO(2) => \counter_compare_reg[0]_i_1_n_1\,
      CO(1) => \counter_compare_reg[0]_i_1_n_2\,
      CO(0) => \counter_compare_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \compare_value[0]_i_6_n_0\,
      O(3) => \counter_compare_reg[0]_i_1_n_4\,
      O(2) => \counter_compare_reg[0]_i_1_n_5\,
      O(1) => \counter_compare_reg[0]_i_1_n_6\,
      O(0) => \counter_compare_reg[0]_i_1_n_7\,
      S(3) => \counter_compare[0]_i_2_n_0\,
      S(2) => \counter_compare[0]_i_3_n_0\,
      S(1) => \counter_compare[0]_i_4_n_0\,
      S(0) => \counter_compare[0]_i_5_n_0\
    );
\counter_compare_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[8]_i_1_n_5\,
      Q => counter_compare_reg(10)
    );
\counter_compare_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[8]_i_1_n_4\,
      Q => counter_compare_reg(11)
    );
\counter_compare_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[12]_i_1_n_7\,
      Q => counter_compare_reg(12)
    );
\counter_compare_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_compare_reg[8]_i_1_n_0\,
      CO(3) => \counter_compare_reg[12]_i_1_n_0\,
      CO(2) => \counter_compare_reg[12]_i_1_n_1\,
      CO(1) => \counter_compare_reg[12]_i_1_n_2\,
      CO(0) => \counter_compare_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_compare_reg[12]_i_1_n_4\,
      O(2) => \counter_compare_reg[12]_i_1_n_5\,
      O(1) => \counter_compare_reg[12]_i_1_n_6\,
      O(0) => \counter_compare_reg[12]_i_1_n_7\,
      S(3) => \counter_compare[12]_i_2_n_0\,
      S(2) => \counter_compare[12]_i_3_n_0\,
      S(1) => \counter_compare[12]_i_4_n_0\,
      S(0) => \counter_compare[12]_i_5_n_0\
    );
\counter_compare_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[12]_i_1_n_6\,
      Q => counter_compare_reg(13)
    );
\counter_compare_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[12]_i_1_n_5\,
      Q => counter_compare_reg(14)
    );
\counter_compare_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[12]_i_1_n_4\,
      Q => counter_compare_reg(15)
    );
\counter_compare_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[16]_i_1_n_3\,
      Q => counter_compare_reg(16)
    );
\counter_compare_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_compare_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_counter_compare_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_compare_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_compare_reg[16]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\counter_compare_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[0]_i_1_n_6\,
      Q => \counter_compare_reg_n_0_[1]\
    );
\counter_compare_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[0]_i_1_n_5\,
      Q => \counter_compare_reg_n_0_[2]\
    );
\counter_compare_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[0]_i_1_n_4\,
      Q => \counter_compare_reg_n_0_[3]\
    );
\counter_compare_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[4]_i_1_n_7\,
      Q => counter_compare_reg(4)
    );
\counter_compare_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_compare_reg[0]_i_1_n_0\,
      CO(3) => \counter_compare_reg[4]_i_1_n_0\,
      CO(2) => \counter_compare_reg[4]_i_1_n_1\,
      CO(1) => \counter_compare_reg[4]_i_1_n_2\,
      CO(0) => \counter_compare_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_compare_reg[4]_i_1_n_4\,
      O(2) => \counter_compare_reg[4]_i_1_n_5\,
      O(1) => \counter_compare_reg[4]_i_1_n_6\,
      O(0) => \counter_compare_reg[4]_i_1_n_7\,
      S(3) => \counter_compare[4]_i_2_n_0\,
      S(2) => \counter_compare[4]_i_3_n_0\,
      S(1) => \counter_compare[4]_i_4_n_0\,
      S(0) => \counter_compare[4]_i_5_n_0\
    );
\counter_compare_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[4]_i_1_n_6\,
      Q => counter_compare_reg(5)
    );
\counter_compare_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[4]_i_1_n_5\,
      Q => counter_compare_reg(6)
    );
\counter_compare_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[4]_i_1_n_4\,
      Q => counter_compare_reg(7)
    );
\counter_compare_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[8]_i_1_n_7\,
      Q => counter_compare_reg(8)
    );
\counter_compare_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_compare_reg[4]_i_1_n_0\,
      CO(3) => \counter_compare_reg[8]_i_1_n_0\,
      CO(2) => \counter_compare_reg[8]_i_1_n_1\,
      CO(1) => \counter_compare_reg[8]_i_1_n_2\,
      CO(0) => \counter_compare_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_compare_reg[8]_i_1_n_4\,
      O(2) => \counter_compare_reg[8]_i_1_n_5\,
      O(1) => \counter_compare_reg[8]_i_1_n_6\,
      O(0) => \counter_compare_reg[8]_i_1_n_7\,
      S(3) => \counter_compare[8]_i_2_n_0\,
      S(2) => \counter_compare[8]_i_3_n_0\,
      S(1) => \counter_compare[8]_i_4_n_0\,
      S(0) => \counter_compare[8]_i_5_n_0\
    );
\counter_compare_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_compare_reg[8]_i_1_n_6\,
      Q => counter_compare_reg(9)
    );
\counter_pwm[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000777F"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      O => \counter_pwm[0]_i_2_n_0\
    );
\counter_pwm[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(3),
      O => \counter_pwm[0]_i_3_n_0\
    );
\counter_pwm[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(2),
      O => \counter_pwm[0]_i_4_n_0\
    );
\counter_pwm[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(1),
      O => \counter_pwm[0]_i_5_n_0\
    );
\counter_pwm[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000777F"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(0),
      O => \counter_pwm[0]_i_6_n_0\
    );
\counter_pwm[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => counter_pwm_reg(6),
      I1 => counter_pwm_reg(4),
      I2 => counter_pwm_reg(5),
      I3 => counter_pwm_reg(7),
      I4 => counter_pwm_reg(8),
      I5 => counter_pwm_reg(9),
      O => \counter_pwm[0]_i_7_n_0\
    );
\counter_pwm[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_pwm_reg(10),
      I1 => counter_pwm_reg(11),
      I2 => counter_pwm_reg(12),
      I3 => counter_pwm_reg(13),
      O => \counter_pwm[0]_i_8_n_0\
    );
\counter_pwm[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000222A"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      O => \counter_pwm[12]_i_2_n_0\
    );
\counter_pwm[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000444C"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      O => \counter_pwm[12]_i_3_n_0\
    );
\counter_pwm[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(13),
      O => \counter_pwm[12]_i_4_n_0\
    );
\counter_pwm[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(12),
      O => \counter_pwm[12]_i_5_n_0\
    );
\counter_pwm[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(7),
      O => \counter_pwm[4]_i_2_n_0\
    );
\counter_pwm[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(6),
      O => \counter_pwm[4]_i_3_n_0\
    );
\counter_pwm[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(5),
      O => \counter_pwm[4]_i_4_n_0\
    );
\counter_pwm[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(4),
      O => \counter_pwm[4]_i_5_n_0\
    );
\counter_pwm[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(11),
      O => \counter_pwm[8]_i_2_n_0\
    );
\counter_pwm[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(10),
      O => \counter_pwm[8]_i_3_n_0\
    );
\counter_pwm[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(9),
      O => \counter_pwm[8]_i_4_n_0\
    );
\counter_pwm[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F00000000"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => counter_pwm_reg(14),
      I2 => \counter_pwm[0]_i_7_n_0\,
      I3 => \counter_pwm[0]_i_8_n_0\,
      I4 => counter_pwm_reg(16),
      I5 => counter_pwm_reg(8),
      O => \counter_pwm[8]_i_5_n_0\
    );
\counter_pwm_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[0]_i_1_n_7\,
      Q => counter_pwm_reg(0)
    );
\counter_pwm_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_pwm_reg[0]_i_1_n_0\,
      CO(2) => \counter_pwm_reg[0]_i_1_n_1\,
      CO(1) => \counter_pwm_reg[0]_i_1_n_2\,
      CO(0) => \counter_pwm_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_pwm[0]_i_2_n_0\,
      O(3) => \counter_pwm_reg[0]_i_1_n_4\,
      O(2) => \counter_pwm_reg[0]_i_1_n_5\,
      O(1) => \counter_pwm_reg[0]_i_1_n_6\,
      O(0) => \counter_pwm_reg[0]_i_1_n_7\,
      S(3) => \counter_pwm[0]_i_3_n_0\,
      S(2) => \counter_pwm[0]_i_4_n_0\,
      S(1) => \counter_pwm[0]_i_5_n_0\,
      S(0) => \counter_pwm[0]_i_6_n_0\
    );
\counter_pwm_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[8]_i_1_n_5\,
      Q => counter_pwm_reg(10)
    );
\counter_pwm_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[8]_i_1_n_4\,
      Q => counter_pwm_reg(11)
    );
\counter_pwm_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[12]_i_1_n_7\,
      Q => counter_pwm_reg(12)
    );
\counter_pwm_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_pwm_reg[8]_i_1_n_0\,
      CO(3) => \counter_pwm_reg[12]_i_1_n_0\,
      CO(2) => \counter_pwm_reg[12]_i_1_n_1\,
      CO(1) => \counter_pwm_reg[12]_i_1_n_2\,
      CO(0) => \counter_pwm_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_pwm_reg[12]_i_1_n_4\,
      O(2) => \counter_pwm_reg[12]_i_1_n_5\,
      O(1) => \counter_pwm_reg[12]_i_1_n_6\,
      O(0) => \counter_pwm_reg[12]_i_1_n_7\,
      S(3) => \counter_pwm[12]_i_2_n_0\,
      S(2) => \counter_pwm[12]_i_3_n_0\,
      S(1) => \counter_pwm[12]_i_4_n_0\,
      S(0) => \counter_pwm[12]_i_5_n_0\
    );
\counter_pwm_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[12]_i_1_n_6\,
      Q => counter_pwm_reg(13)
    );
\counter_pwm_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[12]_i_1_n_5\,
      Q => counter_pwm_reg(14)
    );
\counter_pwm_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[12]_i_1_n_4\,
      Q => counter_pwm_reg(15)
    );
\counter_pwm_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[16]_i_1_n_3\,
      Q => counter_pwm_reg(16)
    );
\counter_pwm_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_pwm_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_counter_pwm_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_pwm_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_pwm_reg[16]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\counter_pwm_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[0]_i_1_n_6\,
      Q => counter_pwm_reg(1)
    );
\counter_pwm_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[0]_i_1_n_5\,
      Q => counter_pwm_reg(2)
    );
\counter_pwm_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[0]_i_1_n_4\,
      Q => counter_pwm_reg(3)
    );
\counter_pwm_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[4]_i_1_n_7\,
      Q => counter_pwm_reg(4)
    );
\counter_pwm_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_pwm_reg[0]_i_1_n_0\,
      CO(3) => \counter_pwm_reg[4]_i_1_n_0\,
      CO(2) => \counter_pwm_reg[4]_i_1_n_1\,
      CO(1) => \counter_pwm_reg[4]_i_1_n_2\,
      CO(0) => \counter_pwm_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_pwm_reg[4]_i_1_n_4\,
      O(2) => \counter_pwm_reg[4]_i_1_n_5\,
      O(1) => \counter_pwm_reg[4]_i_1_n_6\,
      O(0) => \counter_pwm_reg[4]_i_1_n_7\,
      S(3) => \counter_pwm[4]_i_2_n_0\,
      S(2) => \counter_pwm[4]_i_3_n_0\,
      S(1) => \counter_pwm[4]_i_4_n_0\,
      S(0) => \counter_pwm[4]_i_5_n_0\
    );
\counter_pwm_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[4]_i_1_n_6\,
      Q => counter_pwm_reg(5)
    );
\counter_pwm_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[4]_i_1_n_5\,
      Q => counter_pwm_reg(6)
    );
\counter_pwm_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[4]_i_1_n_4\,
      Q => counter_pwm_reg(7)
    );
\counter_pwm_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[8]_i_1_n_7\,
      Q => counter_pwm_reg(8)
    );
\counter_pwm_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_pwm_reg[4]_i_1_n_0\,
      CO(3) => \counter_pwm_reg[8]_i_1_n_0\,
      CO(2) => \counter_pwm_reg[8]_i_1_n_1\,
      CO(1) => \counter_pwm_reg[8]_i_1_n_2\,
      CO(0) => \counter_pwm_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_pwm_reg[8]_i_1_n_4\,
      O(2) => \counter_pwm_reg[8]_i_1_n_5\,
      O(1) => \counter_pwm_reg[8]_i_1_n_6\,
      O(0) => \counter_pwm_reg[8]_i_1_n_7\,
      S(3) => \counter_pwm[8]_i_2_n_0\,
      S(2) => \counter_pwm[8]_i_3_n_0\,
      S(1) => \counter_pwm[8]_i_4_n_0\,
      S(0) => \counter_pwm[8]_i_5_n_0\
    );
\counter_pwm_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \counter_pwm_reg[8]_i_1_n_6\,
      Q => counter_pwm_reg(9)
    );
led_breath_view0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => led_breath_view0_carry_n_0,
      CO(2) => led_breath_view0_carry_n_1,
      CO(1) => led_breath_view0_carry_n_2,
      CO(0) => led_breath_view0_carry_n_3,
      CYINIT => '0',
      DI(3) => led_breath_view0_carry_i_1_n_0,
      DI(2) => led_breath_view0_carry_i_2_n_0,
      DI(1) => led_breath_view0_carry_i_3_n_0,
      DI(0) => led_breath_view0_carry_i_4_n_0,
      O(3 downto 0) => NLW_led_breath_view0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => led_breath_view0_carry_i_5_n_0,
      S(2) => led_breath_view0_carry_i_6_n_0,
      S(1) => led_breath_view0_carry_i_7_n_0,
      S(0) => led_breath_view0_carry_i_8_n_0
    );
\led_breath_view0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => led_breath_view0_carry_n_0,
      CO(3) => \led_breath_view0_carry__0_n_0\,
      CO(2) => \led_breath_view0_carry__0_n_1\,
      CO(1) => \led_breath_view0_carry__0_n_2\,
      CO(0) => \led_breath_view0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \led_breath_view0_carry_i_1__0_n_0\,
      DI(2) => \led_breath_view0_carry_i_2__0_n_0\,
      DI(1) => \led_breath_view0_carry_i_3__0_n_0\,
      DI(0) => \led_breath_view0_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_led_breath_view0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \led_breath_view0_carry_i_5__0_n_0\,
      S(2) => \led_breath_view0_carry_i_6__0_n_0\,
      S(1) => \led_breath_view0_carry_i_7__0_n_0\,
      S(0) => \led_breath_view0_carry_i_8__0_n_0\
    );
\led_breath_view0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_breath_view0_carry__0_n_0\,
      CO(3) => \led_breath_view0_carry__1_n_0\,
      CO(2) => \led_breath_view0_carry__1_n_1\,
      CO(1) => \led_breath_view0_carry__1_n_2\,
      CO(0) => \led_breath_view0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \led_breath_view0_carry_i_1__1_n_0\,
      DI(2) => \led_breath_view0_carry_i_2__1_n_0\,
      DI(1) => \led_breath_view0_carry_i_3__1_n_0\,
      DI(0) => \led_breath_view0_carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_led_breath_view0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \led_breath_view0_carry_i_5__1_n_0\,
      S(2) => \led_breath_view0_carry_i_6__1_n_0\,
      S(1) => \led_breath_view0_carry_i_7__1_n_0\,
      S(0) => \led_breath_view0_carry_i_8__1_n_0\
    );
\led_breath_view0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_breath_view0_carry__1_n_0\,
      CO(3) => \led_breath_view0_carry__2_n_0\,
      CO(2) => \led_breath_view0_carry__2_n_1\,
      CO(1) => \led_breath_view0_carry__2_n_2\,
      CO(0) => \led_breath_view0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \led_breath_view0_carry_i_1__2_n_0\,
      DI(2) => \led_breath_view0_carry_i_2__2_n_0\,
      DI(1) => \led_breath_view0_carry_i_3__2_n_0\,
      DI(0) => \led_breath_view0_carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_led_breath_view0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \led_breath_view0_carry_i_5__2_n_0\,
      S(2) => \led_breath_view0_carry_i_6__2_n_0\,
      S(1) => \led_breath_view0_carry_i_7__2_n_0\,
      S(0) => \led_breath_view0_carry_i_8__2_n_0\
    );
led_breath_view0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(7),
      I1 => counter_pwm_reg(7),
      I2 => compare_value_reg(6),
      I3 => counter_pwm_reg(6),
      O => led_breath_view0_carry_i_1_n_0
    );
\led_breath_view0_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(15),
      I1 => counter_pwm_reg(15),
      I2 => compare_value_reg(14),
      I3 => counter_pwm_reg(14),
      O => \led_breath_view0_carry_i_1__0_n_0\
    );
\led_breath_view0_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => compare_value_reg(23),
      I1 => compare_value_reg(22),
      O => \led_breath_view0_carry_i_1__1_n_0\
    );
\led_breath_view0_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => compare_value_reg(31),
      I1 => compare_value_reg(30),
      O => \led_breath_view0_carry_i_1__2_n_0\
    );
led_breath_view0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(5),
      I1 => counter_pwm_reg(5),
      I2 => compare_value_reg(4),
      I3 => counter_pwm_reg(4),
      O => led_breath_view0_carry_i_2_n_0
    );
\led_breath_view0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(13),
      I1 => counter_pwm_reg(13),
      I2 => compare_value_reg(12),
      I3 => counter_pwm_reg(12),
      O => \led_breath_view0_carry_i_2__0_n_0\
    );
\led_breath_view0_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => compare_value_reg(21),
      I1 => compare_value_reg(20),
      O => \led_breath_view0_carry_i_2__1_n_0\
    );
\led_breath_view0_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => compare_value_reg(29),
      I1 => compare_value_reg(28),
      O => \led_breath_view0_carry_i_2__2_n_0\
    );
led_breath_view0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(3),
      I1 => counter_pwm_reg(3),
      I2 => compare_value_reg(2),
      I3 => counter_pwm_reg(2),
      O => led_breath_view0_carry_i_3_n_0
    );
\led_breath_view0_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(11),
      I1 => counter_pwm_reg(11),
      I2 => compare_value_reg(10),
      I3 => counter_pwm_reg(10),
      O => \led_breath_view0_carry_i_3__0_n_0\
    );
\led_breath_view0_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => compare_value_reg(19),
      I1 => compare_value_reg(18),
      O => \led_breath_view0_carry_i_3__1_n_0\
    );
\led_breath_view0_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => compare_value_reg(27),
      I1 => compare_value_reg(26),
      O => \led_breath_view0_carry_i_3__2_n_0\
    );
led_breath_view0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(1),
      I1 => counter_pwm_reg(1),
      I2 => compare_value_reg(0),
      I3 => counter_pwm_reg(0),
      O => led_breath_view0_carry_i_4_n_0
    );
\led_breath_view0_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => compare_value_reg(9),
      I1 => counter_pwm_reg(9),
      I2 => compare_value_reg(8),
      I3 => counter_pwm_reg(8),
      O => \led_breath_view0_carry_i_4__0_n_0\
    );
\led_breath_view0_carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => compare_value_reg(17),
      I1 => compare_value_reg(16),
      I2 => counter_pwm_reg(16),
      O => \led_breath_view0_carry_i_4__1_n_0\
    );
\led_breath_view0_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => compare_value_reg(25),
      I1 => compare_value_reg(24),
      O => \led_breath_view0_carry_i_4__2_n_0\
    );
led_breath_view0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(7),
      I1 => compare_value_reg(7),
      I2 => counter_pwm_reg(6),
      I3 => compare_value_reg(6),
      O => led_breath_view0_carry_i_5_n_0
    );
\led_breath_view0_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(15),
      I1 => compare_value_reg(15),
      I2 => counter_pwm_reg(14),
      I3 => compare_value_reg(14),
      O => \led_breath_view0_carry_i_5__0_n_0\
    );
\led_breath_view0_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(23),
      I1 => compare_value_reg(22),
      O => \led_breath_view0_carry_i_5__1_n_0\
    );
\led_breath_view0_carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(31),
      I1 => compare_value_reg(30),
      O => \led_breath_view0_carry_i_5__2_n_0\
    );
led_breath_view0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(5),
      I1 => compare_value_reg(5),
      I2 => counter_pwm_reg(4),
      I3 => compare_value_reg(4),
      O => led_breath_view0_carry_i_6_n_0
    );
\led_breath_view0_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(13),
      I1 => compare_value_reg(13),
      I2 => counter_pwm_reg(12),
      I3 => compare_value_reg(12),
      O => \led_breath_view0_carry_i_6__0_n_0\
    );
\led_breath_view0_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(21),
      I1 => compare_value_reg(20),
      O => \led_breath_view0_carry_i_6__1_n_0\
    );
\led_breath_view0_carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(29),
      I1 => compare_value_reg(28),
      O => \led_breath_view0_carry_i_6__2_n_0\
    );
led_breath_view0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(3),
      I1 => compare_value_reg(3),
      I2 => counter_pwm_reg(2),
      I3 => compare_value_reg(2),
      O => led_breath_view0_carry_i_7_n_0
    );
\led_breath_view0_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(11),
      I1 => compare_value_reg(11),
      I2 => counter_pwm_reg(10),
      I3 => compare_value_reg(10),
      O => \led_breath_view0_carry_i_7__0_n_0\
    );
\led_breath_view0_carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(19),
      I1 => compare_value_reg(18),
      O => \led_breath_view0_carry_i_7__1_n_0\
    );
\led_breath_view0_carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(27),
      I1 => compare_value_reg(26),
      O => \led_breath_view0_carry_i_7__2_n_0\
    );
led_breath_view0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(1),
      I1 => compare_value_reg(1),
      I2 => counter_pwm_reg(0),
      I3 => compare_value_reg(0),
      O => led_breath_view0_carry_i_8_n_0
    );
\led_breath_view0_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_pwm_reg(9),
      I1 => compare_value_reg(9),
      I2 => counter_pwm_reg(8),
      I3 => compare_value_reg(8),
      O => \led_breath_view0_carry_i_8__0_n_0\
    );
\led_breath_view0_carry_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => compare_value_reg(17),
      I1 => counter_pwm_reg(16),
      I2 => compare_value_reg(16),
      O => \led_breath_view0_carry_i_8__1_n_0\
    );
\led_breath_view0_carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_value_reg(25),
      I1 => compare_value_reg(24),
      O => \led_breath_view0_carry_i_8__2_n_0\
    );
led_breath_view_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \led_breath_view0_carry__2_n_0\,
      I1 => rstn,
      I2 => led_breath_view,
      O => led_breath_view_i_1_n_0
    );
led_breath_view_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => led_breath_view_i_1_n_0,
      Q => led_breath_view,
      R => '0'
    );
\led_number[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FF7788000800"
    )
        port map (
      I0 => \led_number_state[3]_i_4_n_0\,
      I1 => breath_dir,
      I2 => \led_number_state_reg_n_0_[1]\,
      I3 => \led_number_state_reg_n_0_[0]\,
      I4 => \led_number[0]_i_2_n_0\,
      I5 => \led_number_reg_n_0_[0]\,
      O => \led_number[0]_i_1_n_0\
    );
\led_number[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[3]\,
      I1 => \led_number_state_reg_n_0_[2]\,
      O => \led_number[0]_i_2_n_0\
    );
\led_number[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF9CFF00009C00"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[0]\,
      I1 => \led_number_state_reg_n_0_[1]\,
      I2 => \led_number_state_reg_n_0_[3]\,
      I3 => \led_number_state[3]_i_4_n_0\,
      I4 => \led_number[1]_i_2_n_0\,
      I5 => \led_number_reg_n_0_[1]\,
      O => \led_number[1]_i_1_n_0\
    );
\led_number[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[3]\,
      I1 => \led_number_state_reg_n_0_[2]\,
      I2 => \led_number_state_reg_n_0_[0]\,
      I3 => \led_number_state_reg_n_0_[1]\,
      I4 => breath_dir,
      O => \led_number[1]_i_2_n_0\
    );
\led_number[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F77FFF7700088800"
    )
        port map (
      I0 => \led_number_state[3]_i_4_n_0\,
      I1 => breath_dir,
      I2 => \led_number_state[3]_i_3_n_0\,
      I3 => \led_number_state_reg_n_0_[2]\,
      I4 => \led_number_state_reg_n_0_[3]\,
      I5 => \led_number_reg_n_0_[2]\,
      O => \led_number[2]_i_1_n_0\
    );
\led_number_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \led_number[0]_i_1_n_0\,
      Q => \led_number_reg_n_0_[0]\
    );
\led_number_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \led_number[1]_i_1_n_0\,
      Q => \led_number_reg_n_0_[1]\
    );
\led_number_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_reg[7]_i_1_n_0\,
      D => \led_number[2]_i_1_n_0\,
      Q => \led_number_reg_n_0_[2]\
    );
\led_number_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[0]\,
      I1 => \led_number_state_reg_n_0_[3]\,
      I2 => \led_number_state_reg_n_0_[1]\,
      I3 => \led_number_state_reg_n_0_[2]\,
      O => \led_number_state[0]_i_1_n_0\
    );
\led_number_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[0]\,
      I1 => \led_number_state_reg_n_0_[1]\,
      I2 => \led_number_state_reg_n_0_[3]\,
      I3 => \led_number_state_reg_n_0_[2]\,
      O => \led_number_state[1]_i_1_n_0\
    );
\led_number_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FA0"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[0]\,
      I1 => \led_number_state_reg_n_0_[3]\,
      I2 => \led_number_state_reg_n_0_[1]\,
      I3 => \led_number_state_reg_n_0_[2]\,
      O => \led_number_state[2]_i_1_n_0\
    );
\led_number_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000000000000"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[3]\,
      I1 => \led_number_state_reg_n_0_[2]\,
      I2 => \led_number_state[3]_i_3_n_0\,
      I3 => breath_dir,
      I4 => \led_number_state[3]_i_4_n_0\,
      I5 => rstn,
      O => \led_number_state[3]_i_1_n_0\
    );
\led_number_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2CCC"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[0]\,
      I1 => \led_number_state_reg_n_0_[3]\,
      I2 => \led_number_state_reg_n_0_[1]\,
      I3 => \led_number_state_reg_n_0_[2]\,
      O => \led_number_state[3]_i_2_n_0\
    );
\led_number_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \led_number_state_reg_n_0_[0]\,
      I1 => \led_number_state_reg_n_0_[1]\,
      O => \led_number_state[3]_i_3_n_0\
    );
\led_number_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEAE"
    )
        port map (
      I0 => counter_breath_reg(27),
      I1 => counter_breath_reg(26),
      I2 => \led_number_state[3]_i_5_n_0\,
      I3 => counter_breath_reg(25),
      O => \led_number_state[3]_i_4_n_0\
    );
\led_number_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFBBBFBF"
    )
        port map (
      I0 => \led_number_state[3]_i_6_n_0\,
      I1 => counter_breath_reg(18),
      I2 => counter_breath_reg(17),
      I3 => \led_number_state[3]_i_7_n_0\,
      I4 => \led_number_state[3]_i_8_n_0\,
      I5 => counter_breath_reg(19),
      O => \led_number_state[3]_i_5_n_0\
    );
\led_number_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter_breath_reg(22),
      I1 => counter_breath_reg(24),
      I2 => counter_breath_reg(23),
      I3 => counter_breath_reg(20),
      I4 => counter_breath_reg(21),
      O => \led_number_state[3]_i_6_n_0\
    );
\led_number_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_breath_reg(13),
      I1 => counter_breath_reg(14),
      I2 => counter_breath_reg(15),
      I3 => counter_breath_reg(16),
      O => \led_number_state[3]_i_7_n_0\
    );
\led_number_state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_breath_reg(11),
      I1 => counter_breath_reg(12),
      I2 => counter_breath_reg(9),
      I3 => counter_breath_reg(8),
      I4 => counter_breath_reg(10),
      O => \led_number_state[3]_i_8_n_0\
    );
\led_number_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led_number_state[3]_i_1_n_0\,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \led_number_state[0]_i_1_n_0\,
      Q => \led_number_state_reg_n_0_[0]\
    );
\led_number_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led_number_state[3]_i_1_n_0\,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \led_number_state[1]_i_1_n_0\,
      Q => \led_number_state_reg_n_0_[1]\
    );
\led_number_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led_number_state[3]_i_1_n_0\,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \led_number_state[2]_i_1_n_0\,
      Q => \led_number_state_reg_n_0_[2]\
    );
\led_number_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led_number_state[3]_i_1_n_0\,
      CLR => \led_reg[7]_i_1_n_0\,
      D => \led_number_state[3]_i_2_n_0\,
      Q => \led_number_state_reg_n_0_[3]\
    );
\led_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[2]\,
      I2 => \led_number_reg_n_0_[0]\,
      I3 => \led_number_reg_n_0_[1]\,
      I4 => \^led\(0),
      O => \led_reg[0]_i_1_n_0\
    );
\led_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[0]\,
      I2 => \led_number_reg_n_0_[2]\,
      I3 => \led_number_reg_n_0_[1]\,
      I4 => \^led\(1),
      O => \led_reg[1]_i_1_n_0\
    );
\led_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[1]\,
      I2 => \led_number_reg_n_0_[2]\,
      I3 => \led_number_reg_n_0_[0]\,
      I4 => \^led\(2),
      O => \led_reg[2]_i_1_n_0\
    );
\led_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[2]\,
      I2 => \led_number_reg_n_0_[0]\,
      I3 => \led_number_reg_n_0_[1]\,
      I4 => \^led\(3),
      O => \led_reg[3]_i_1_n_0\
    );
\led_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[2]\,
      I2 => \led_number_reg_n_0_[0]\,
      I3 => \led_number_reg_n_0_[1]\,
      I4 => \^led\(4),
      O => \led_reg[4]_i_1_n_0\
    );
\led_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[0]\,
      I2 => \led_number_reg_n_0_[2]\,
      I3 => \led_number_reg_n_0_[1]\,
      I4 => \^led\(5),
      O => \led_reg[5]_i_1_n_0\
    );
\led_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[0]\,
      I2 => \led_number_reg_n_0_[2]\,
      I3 => \led_number_reg_n_0_[1]\,
      I4 => \^led\(6),
      O => \led_reg[6]_i_1_n_0\
    );
\led_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \led_reg[7]_i_1_n_0\
    );
\led_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => led_breath_view,
      I1 => \led_number_reg_n_0_[1]\,
      I2 => \led_number_reg_n_0_[0]\,
      I3 => \led_number_reg_n_0_[2]\,
      I4 => \^led\(7),
      O => \led_reg[7]_i_2_n_0\
    );
\led_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[0]_i_1_n_0\,
      Q => \^led\(0),
      R => \led_reg[7]_i_1_n_0\
    );
\led_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[1]_i_1_n_0\,
      Q => \^led\(1),
      R => \led_reg[7]_i_1_n_0\
    );
\led_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[2]_i_1_n_0\,
      Q => \^led\(2),
      R => \led_reg[7]_i_1_n_0\
    );
\led_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[3]_i_1_n_0\,
      Q => \^led\(3),
      R => \led_reg[7]_i_1_n_0\
    );
\led_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[4]_i_1_n_0\,
      Q => \^led\(4),
      R => \led_reg[7]_i_1_n_0\
    );
\led_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[5]_i_1_n_0\,
      Q => \^led\(5),
      R => \led_reg[7]_i_1_n_0\
    );
\led_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[6]_i_1_n_0\,
      Q => \^led\(6),
      R => \led_reg[7]_i_1_n_0\
    );
\led_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_reg[7]_i_2_n_0\,
      Q => \^led\(7),
      R => \led_reg[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "breath_led_0,breath_led,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "breath_led,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_breath_led
     port map (
      clk => clk,
      led(7 downto 0) => led(7 downto 0),
      rstn => rstn
    );
end STRUCTURE;
