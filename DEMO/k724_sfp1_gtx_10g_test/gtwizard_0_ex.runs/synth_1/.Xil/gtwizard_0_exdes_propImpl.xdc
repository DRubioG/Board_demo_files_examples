set_property SRC_FILE_INFO {cfile:C:/Users/Administrator/Desktop/K7325/R5/SFP/k724_sfp1_gtx_10g_test/gtwizard_0_ex.srcs/constrs_1/imports/example_design/gtwizard_0_exdes.xdc rfile:../../../gtwizard_0_ex.srcs/constrs_1/imports/example_design/gtwizard_0_exdes.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
create_clock -name drpclk_in_i -period 20.0 [get_ports DRP_CLK_IN_P]
set_property src_info {type:XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTXE2_CHANNEL_X0Y0 [get_cells gtwizard_0_support_i/gtwizard_0_init_i/inst/gtwizard_0_i/gt0_gtwizard_0_i/gtxe2_i]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
create_debug_core u_ila_0 ila
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:109 export:INPUT save:INPUT read:READ} [current_design]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:110 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:111 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
set_property src_info {type:XDC file:1 line:113 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list gtwizard_0_support_i/gt_usrclk_source/GT0_TXUSRCLK_OUT]]
set_property src_info {type:XDC file:1 line:114 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 64 [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:116 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe0 [get_nets [list {gt0_frame_check/rx_data_wire[0]} {gt0_frame_check/rx_data_wire[1]} {gt0_frame_check/rx_data_wire[2]} {gt0_frame_check/rx_data_wire[3]} {gt0_frame_check/rx_data_wire[4]} {gt0_frame_check/rx_data_wire[5]} {gt0_frame_check/rx_data_wire[6]} {gt0_frame_check/rx_data_wire[7]} {gt0_frame_check/rx_data_wire[8]} {gt0_frame_check/rx_data_wire[9]} {gt0_frame_check/rx_data_wire[10]} {gt0_frame_check/rx_data_wire[11]} {gt0_frame_check/rx_data_wire[12]} {gt0_frame_check/rx_data_wire[13]} {gt0_frame_check/rx_data_wire[14]} {gt0_frame_check/rx_data_wire[15]} {gt0_frame_check/rx_data_wire[16]} {gt0_frame_check/rx_data_wire[17]} {gt0_frame_check/rx_data_wire[18]} {gt0_frame_check/rx_data_wire[19]} {gt0_frame_check/rx_data_wire[20]} {gt0_frame_check/rx_data_wire[21]} {gt0_frame_check/rx_data_wire[22]} {gt0_frame_check/rx_data_wire[23]} {gt0_frame_check/rx_data_wire[24]} {gt0_frame_check/rx_data_wire[25]} {gt0_frame_check/rx_data_wire[26]} {gt0_frame_check/rx_data_wire[27]} {gt0_frame_check/rx_data_wire[28]} {gt0_frame_check/rx_data_wire[29]} {gt0_frame_check/rx_data_wire[30]} {gt0_frame_check/rx_data_wire[31]} {gt0_frame_check/rx_data_wire[32]} {gt0_frame_check/rx_data_wire[33]} {gt0_frame_check/rx_data_wire[34]} {gt0_frame_check/rx_data_wire[35]} {gt0_frame_check/rx_data_wire[36]} {gt0_frame_check/rx_data_wire[37]} {gt0_frame_check/rx_data_wire[38]} {gt0_frame_check/rx_data_wire[39]} {gt0_frame_check/rx_data_wire[40]} {gt0_frame_check/rx_data_wire[41]} {gt0_frame_check/rx_data_wire[42]} {gt0_frame_check/rx_data_wire[43]} {gt0_frame_check/rx_data_wire[44]} {gt0_frame_check/rx_data_wire[45]} {gt0_frame_check/rx_data_wire[46]} {gt0_frame_check/rx_data_wire[47]} {gt0_frame_check/rx_data_wire[48]} {gt0_frame_check/rx_data_wire[49]} {gt0_frame_check/rx_data_wire[50]} {gt0_frame_check/rx_data_wire[51]} {gt0_frame_check/rx_data_wire[52]} {gt0_frame_check/rx_data_wire[53]} {gt0_frame_check/rx_data_wire[54]} {gt0_frame_check/rx_data_wire[55]} {gt0_frame_check/rx_data_wire[56]} {gt0_frame_check/rx_data_wire[57]} {gt0_frame_check/rx_data_wire[58]} {gt0_frame_check/rx_data_wire[59]} {gt0_frame_check/rx_data_wire[60]} {gt0_frame_check/rx_data_wire[61]} {gt0_frame_check/rx_data_wire[62]} {gt0_frame_check/rx_data_wire[63]}]]
set_property src_info {type:XDC file:1 line:117 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:118 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:119 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:120 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list {gt0_frame_check/rx_ctrl[0]} {gt0_frame_check/rx_ctrl[1]}]]
set_property src_info {type:XDC file:1 line:121 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:122 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:123 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:124 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe2 [get_nets [list {gt0_frame_gen/tx_ctrl[0]} {gt0_frame_gen/tx_ctrl[1]} {gt0_frame_gen/tx_ctrl[2]} {gt0_frame_gen/tx_ctrl[3]} {gt0_frame_gen/tx_ctrl[4]} {gt0_frame_gen/tx_ctrl[5]} {gt0_frame_gen/tx_ctrl[6]} {gt0_frame_gen/tx_ctrl[7]}]]
set_property src_info {type:XDC file:1 line:125 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:126 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 80 [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:128 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe3 [get_nets [list {gt0_frame_gen/tx_data_out_wire[0]} {gt0_frame_gen/tx_data_out_wire[1]} {gt0_frame_gen/tx_data_out_wire[2]} {gt0_frame_gen/tx_data_out_wire[3]} {gt0_frame_gen/tx_data_out_wire[4]} {gt0_frame_gen/tx_data_out_wire[5]} {gt0_frame_gen/tx_data_out_wire[6]} {gt0_frame_gen/tx_data_out_wire[7]} {gt0_frame_gen/tx_data_out_wire[8]} {gt0_frame_gen/tx_data_out_wire[9]} {gt0_frame_gen/tx_data_out_wire[10]} {gt0_frame_gen/tx_data_out_wire[11]} {gt0_frame_gen/tx_data_out_wire[12]} {gt0_frame_gen/tx_data_out_wire[13]} {gt0_frame_gen/tx_data_out_wire[14]} {gt0_frame_gen/tx_data_out_wire[15]} {gt0_frame_gen/tx_data_out_wire[16]} {gt0_frame_gen/tx_data_out_wire[17]} {gt0_frame_gen/tx_data_out_wire[18]} {gt0_frame_gen/tx_data_out_wire[19]} {gt0_frame_gen/tx_data_out_wire[20]} {gt0_frame_gen/tx_data_out_wire[21]} {gt0_frame_gen/tx_data_out_wire[22]} {gt0_frame_gen/tx_data_out_wire[23]} {gt0_frame_gen/tx_data_out_wire[24]} {gt0_frame_gen/tx_data_out_wire[25]} {gt0_frame_gen/tx_data_out_wire[26]} {gt0_frame_gen/tx_data_out_wire[27]} {gt0_frame_gen/tx_data_out_wire[28]} {gt0_frame_gen/tx_data_out_wire[29]} {gt0_frame_gen/tx_data_out_wire[30]} {gt0_frame_gen/tx_data_out_wire[31]} {gt0_frame_gen/tx_data_out_wire[32]} {gt0_frame_gen/tx_data_out_wire[33]} {gt0_frame_gen/tx_data_out_wire[34]} {gt0_frame_gen/tx_data_out_wire[35]} {gt0_frame_gen/tx_data_out_wire[36]} {gt0_frame_gen/tx_data_out_wire[37]} {gt0_frame_gen/tx_data_out_wire[38]} {gt0_frame_gen/tx_data_out_wire[39]} {gt0_frame_gen/tx_data_out_wire[40]} {gt0_frame_gen/tx_data_out_wire[41]} {gt0_frame_gen/tx_data_out_wire[42]} {gt0_frame_gen/tx_data_out_wire[43]} {gt0_frame_gen/tx_data_out_wire[44]} {gt0_frame_gen/tx_data_out_wire[45]} {gt0_frame_gen/tx_data_out_wire[46]} {gt0_frame_gen/tx_data_out_wire[47]} {gt0_frame_gen/tx_data_out_wire[48]} {gt0_frame_gen/tx_data_out_wire[49]} {gt0_frame_gen/tx_data_out_wire[50]} {gt0_frame_gen/tx_data_out_wire[51]} {gt0_frame_gen/tx_data_out_wire[52]} {gt0_frame_gen/tx_data_out_wire[53]} {gt0_frame_gen/tx_data_out_wire[54]} {gt0_frame_gen/tx_data_out_wire[55]} {gt0_frame_gen/tx_data_out_wire[56]} {gt0_frame_gen/tx_data_out_wire[57]} {gt0_frame_gen/tx_data_out_wire[58]} {gt0_frame_gen/tx_data_out_wire[59]} {gt0_frame_gen/tx_data_out_wire[60]} {gt0_frame_gen/tx_data_out_wire[61]} {gt0_frame_gen/tx_data_out_wire[62]} {gt0_frame_gen/tx_data_out_wire[63]} {gt0_frame_gen/tx_data_out_wire[64]} {gt0_frame_gen/tx_data_out_wire[65]} {gt0_frame_gen/tx_data_out_wire[66]} {gt0_frame_gen/tx_data_out_wire[67]} {gt0_frame_gen/tx_data_out_wire[68]} {gt0_frame_gen/tx_data_out_wire[69]} {gt0_frame_gen/tx_data_out_wire[70]} {gt0_frame_gen/tx_data_out_wire[71]} {gt0_frame_gen/tx_data_out_wire[72]} {gt0_frame_gen/tx_data_out_wire[73]} {gt0_frame_gen/tx_data_out_wire[74]} {gt0_frame_gen/tx_data_out_wire[75]} {gt0_frame_gen/tx_data_out_wire[76]} {gt0_frame_gen/tx_data_out_wire[77]} {gt0_frame_gen/tx_data_out_wire[78]} {gt0_frame_gen/tx_data_out_wire[79]}]]
set_property src_info {type:XDC file:1 line:129 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:130 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:131 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:132 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe4 [get_nets [list rxresetdone_vio_i]]
set_property src_info {type:XDC file:1 line:133 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:134 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:135 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:136 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe5 [get_nets [list soft_reset_vio_i]]
set_property src_info {type:XDC file:1 line:137 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:138 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:139 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:140 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets gt0_rxusrclk2_i]
set_property src_info {type:XDC file:1 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G22 [get_ports DRP_CLK_IN]
set_property src_info {type:XDC file:1 line:145 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G4 [get_ports RXP_IN]
set_property src_info {type:XDC file:1 line:146 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H23 [get_ports TX_DIS]
set_property src_info {type:XDC file:1 line:147 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D6 [get_ports Q0_CLK1_GTREFCLK_PAD_P_IN]
