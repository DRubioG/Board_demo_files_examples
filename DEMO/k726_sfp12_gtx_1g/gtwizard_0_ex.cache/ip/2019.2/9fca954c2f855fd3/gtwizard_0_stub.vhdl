-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Jul 13 17:09:33 2020
-- Host        : FXTVWR85EI30285 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gtwizard_0_stub.vhdl
-- Design      : gtwizard_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    sysclk_in : in STD_LOGIC;
    soft_reset_tx_in : in STD_LOGIC;
    soft_reset_rx_in : in STD_LOGIC;
    dont_reset_on_data_error_in : in STD_LOGIC;
    gt0_tx_fsm_reset_done_out : out STD_LOGIC;
    gt0_rx_fsm_reset_done_out : out STD_LOGIC;
    gt0_data_valid_in : in STD_LOGIC;
    gt1_tx_fsm_reset_done_out : out STD_LOGIC;
    gt1_rx_fsm_reset_done_out : out STD_LOGIC;
    gt1_data_valid_in : in STD_LOGIC;
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen_in : in STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_rxuserrdy_in : in STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxcdrovrden_in : in STD_LOGIC;
    gt0_rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxusrclk_in : in STD_LOGIC;
    gt0_rxusrclk2_in : in STD_LOGIC;
    gt0_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_gtxrxp_in : in STD_LOGIC;
    gt0_gtxrxn_in : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcommaalignen_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxoutclkfabric_out : out STD_LOGIC;
    gt0_gtrxreset_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_gttxreset_in : in STD_LOGIC;
    gt0_txuserrdy_in : in STD_LOGIC;
    gt0_txchardispmode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txchardispval_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txusrclk_in : in STD_LOGIC;
    gt0_txusrclk2_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt0_gtxtxn_out : out STD_LOGIC;
    gt0_gtxtxp_out : out STD_LOGIC;
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txoutclkfabric_out : out STD_LOGIC;
    gt0_txoutclkpcs_out : out STD_LOGIC;
    gt0_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpclk_in : in STD_LOGIC;
    gt1_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpen_in : in STD_LOGIC;
    gt1_drprdy_out : out STD_LOGIC;
    gt1_drpwe_in : in STD_LOGIC;
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_rxuserrdy_in : in STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxcdrovrden_in : in STD_LOGIC;
    gt1_rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxusrclk_in : in STD_LOGIC;
    gt1_rxusrclk2_in : in STD_LOGIC;
    gt1_rxdata_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxdisperr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxnotintable_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_gtxrxp_in : in STD_LOGIC;
    gt1_gtxrxn_in : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxbyteisaligned_out : out STD_LOGIC;
    gt1_rxbyterealign_out : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxmcommaalignen_in : in STD_LOGIC;
    gt1_rxpcommaalignen_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxoutclkfabric_out : out STD_LOGIC;
    gt1_gtrxreset_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxchariscomma_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxcharisk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_gttxreset_in : in STD_LOGIC;
    gt1_txuserrdy_in : in STD_LOGIC;
    gt1_txchardispmode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txchardispval_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txusrclk_in : in STD_LOGIC;
    gt1_txusrclk2_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_txdata_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt1_gtxtxn_out : out STD_LOGIC;
    gt1_gtxtxp_out : out STD_LOGIC;
    gt1_txoutclk_out : out STD_LOGIC;
    gt1_txoutclkfabric_out : out STD_LOGIC;
    gt1_txoutclkpcs_out : out STD_LOGIC;
    gt1_txcharisk_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_qplllock_in : in STD_LOGIC;
    gt0_qpllrefclklost_in : in STD_LOGIC;
    gt0_qpllreset_out : out STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sysclk_in,soft_reset_tx_in,soft_reset_rx_in,dont_reset_on_data_error_in,gt0_tx_fsm_reset_done_out,gt0_rx_fsm_reset_done_out,gt0_data_valid_in,gt1_tx_fsm_reset_done_out,gt1_rx_fsm_reset_done_out,gt1_data_valid_in,gt0_drpaddr_in[8:0],gt0_drpclk_in,gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_dmonitorout_out[7:0],gt0_loopback_in[2:0],gt0_rxpd_in[1:0],gt0_txpd_in[1:0],gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxcdrhold_in,gt0_rxcdrovrden_in,gt0_rxclkcorcnt_out[1:0],gt0_rxusrclk_in,gt0_rxusrclk2_in,gt0_rxdata_out[31:0],gt0_rxprbserr_out,gt0_rxprbssel_in[2:0],gt0_rxprbscntreset_in,gt0_rxdisperr_out[3:0],gt0_rxnotintable_out[3:0],gt0_gtxrxp_in,gt0_gtxrxn_in,gt0_rxbufreset_in,gt0_rxbufstatus_out[2:0],gt0_rxbyteisaligned_out,gt0_rxbyterealign_out,gt0_rxcommadet_out,gt0_rxmcommaalignen_in,gt0_rxpcommaalignen_in,gt0_rxdfelpmreset_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt0_rxoutclkfabric_out,gt0_gtrxreset_in,gt0_rxpcsreset_in,gt0_rxpmareset_in,gt0_rxlpmen_in,gt0_rxpolarity_in,gt0_rxchariscomma_out[3:0],gt0_rxcharisk_out[3:0],gt0_rxresetdone_out,gt0_txpostcursor_in[4:0],gt0_txprecursor_in[4:0],gt0_gttxreset_in,gt0_txuserrdy_in,gt0_txchardispmode_in[3:0],gt0_txchardispval_in[3:0],gt0_txusrclk_in,gt0_txusrclk2_in,gt0_txprbsforceerr_in,gt0_txbufstatus_out[1:0],gt0_txdiffctrl_in[3:0],gt0_txmaincursor_in[6:0],gt0_txdata_in[31:0],gt0_gtxtxn_out,gt0_gtxtxp_out,gt0_txoutclk_out,gt0_txoutclkfabric_out,gt0_txoutclkpcs_out,gt0_txcharisk_in[3:0],gt0_txpcsreset_in,gt0_txpmareset_in,gt0_txresetdone_out,gt0_txpolarity_in,gt0_txprbssel_in[2:0],gt1_drpaddr_in[8:0],gt1_drpclk_in,gt1_drpdi_in[15:0],gt1_drpdo_out[15:0],gt1_drpen_in,gt1_drprdy_out,gt1_drpwe_in,gt1_dmonitorout_out[7:0],gt1_loopback_in[2:0],gt1_rxpd_in[1:0],gt1_txpd_in[1:0],gt1_eyescanreset_in,gt1_rxuserrdy_in,gt1_eyescandataerror_out,gt1_eyescantrigger_in,gt1_rxcdrhold_in,gt1_rxcdrovrden_in,gt1_rxclkcorcnt_out[1:0],gt1_rxusrclk_in,gt1_rxusrclk2_in,gt1_rxdata_out[31:0],gt1_rxprbserr_out,gt1_rxprbssel_in[2:0],gt1_rxprbscntreset_in,gt1_rxdisperr_out[3:0],gt1_rxnotintable_out[3:0],gt1_gtxrxp_in,gt1_gtxrxn_in,gt1_rxbufreset_in,gt1_rxbufstatus_out[2:0],gt1_rxbyteisaligned_out,gt1_rxbyterealign_out,gt1_rxcommadet_out,gt1_rxmcommaalignen_in,gt1_rxpcommaalignen_in,gt1_rxdfelpmreset_in,gt1_rxmonitorout_out[6:0],gt1_rxmonitorsel_in[1:0],gt1_rxoutclkfabric_out,gt1_gtrxreset_in,gt1_rxpcsreset_in,gt1_rxpmareset_in,gt1_rxlpmen_in,gt1_rxpolarity_in,gt1_rxchariscomma_out[3:0],gt1_rxcharisk_out[3:0],gt1_rxresetdone_out,gt1_txpostcursor_in[4:0],gt1_txprecursor_in[4:0],gt1_gttxreset_in,gt1_txuserrdy_in,gt1_txchardispmode_in[3:0],gt1_txchardispval_in[3:0],gt1_txusrclk_in,gt1_txusrclk2_in,gt1_txprbsforceerr_in,gt1_txbufstatus_out[1:0],gt1_txdiffctrl_in[3:0],gt1_txmaincursor_in[6:0],gt1_txdata_in[31:0],gt1_gtxtxn_out,gt1_gtxtxp_out,gt1_txoutclk_out,gt1_txoutclkfabric_out,gt1_txoutclkpcs_out,gt1_txcharisk_in[3:0],gt1_txpcsreset_in,gt1_txpmareset_in,gt1_txresetdone_out,gt1_txpolarity_in,gt1_txprbssel_in[2:0],gt0_qplllock_in,gt0_qpllrefclklost_in,gt0_qpllreset_out,gt0_qplloutclk_in,gt0_qplloutrefclk_in";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gtwizard_0,gtwizard_v3_6_11,{protocol_file=aurora_8b10b_single_lane_4byte}";
begin
end;
