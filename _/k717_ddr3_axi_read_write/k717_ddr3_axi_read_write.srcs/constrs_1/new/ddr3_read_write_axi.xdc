
set_property PACKAGE_PIN G22 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports calib_done]
set_property IOSTANDARD LVCMOS33 [get_ports rstn]

set_property PACKAGE_PIN A23 [get_ports calib_done]
set_property PACKAGE_PIN D23 [get_ports locked]
set_property PACKAGE_PIN D26 [get_ports rstn]
set_property IOSTANDARD LVCMOS33 [get_ports locked]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list mig_7series_0_inst/u_mig_7series_0_mig/u_ddr3_infrastructure/CLK]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {S00_AXI_WR_awburst[0]} {S00_AXI_WR_awburst[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 64 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {S00_AXI_RD_rdata[0]} {S00_AXI_RD_rdata[1]} {S00_AXI_RD_rdata[2]} {S00_AXI_RD_rdata[3]} {S00_AXI_RD_rdata[4]} {S00_AXI_RD_rdata[5]} {S00_AXI_RD_rdata[6]} {S00_AXI_RD_rdata[7]} {S00_AXI_RD_rdata[8]} {S00_AXI_RD_rdata[9]} {S00_AXI_RD_rdata[10]} {S00_AXI_RD_rdata[11]} {S00_AXI_RD_rdata[12]} {S00_AXI_RD_rdata[13]} {S00_AXI_RD_rdata[14]} {S00_AXI_RD_rdata[15]} {S00_AXI_RD_rdata[16]} {S00_AXI_RD_rdata[17]} {S00_AXI_RD_rdata[18]} {S00_AXI_RD_rdata[19]} {S00_AXI_RD_rdata[20]} {S00_AXI_RD_rdata[21]} {S00_AXI_RD_rdata[22]} {S00_AXI_RD_rdata[23]} {S00_AXI_RD_rdata[24]} {S00_AXI_RD_rdata[25]} {S00_AXI_RD_rdata[26]} {S00_AXI_RD_rdata[27]} {S00_AXI_RD_rdata[28]} {S00_AXI_RD_rdata[29]} {S00_AXI_RD_rdata[30]} {S00_AXI_RD_rdata[31]} {S00_AXI_RD_rdata[32]} {S00_AXI_RD_rdata[33]} {S00_AXI_RD_rdata[34]} {S00_AXI_RD_rdata[35]} {S00_AXI_RD_rdata[36]} {S00_AXI_RD_rdata[37]} {S00_AXI_RD_rdata[38]} {S00_AXI_RD_rdata[39]} {S00_AXI_RD_rdata[40]} {S00_AXI_RD_rdata[41]} {S00_AXI_RD_rdata[42]} {S00_AXI_RD_rdata[43]} {S00_AXI_RD_rdata[44]} {S00_AXI_RD_rdata[45]} {S00_AXI_RD_rdata[46]} {S00_AXI_RD_rdata[47]} {S00_AXI_RD_rdata[48]} {S00_AXI_RD_rdata[49]} {S00_AXI_RD_rdata[50]} {S00_AXI_RD_rdata[51]} {S00_AXI_RD_rdata[52]} {S00_AXI_RD_rdata[53]} {S00_AXI_RD_rdata[54]} {S00_AXI_RD_rdata[55]} {S00_AXI_RD_rdata[56]} {S00_AXI_RD_rdata[57]} {S00_AXI_RD_rdata[58]} {S00_AXI_RD_rdata[59]} {S00_AXI_RD_rdata[60]} {S00_AXI_RD_rdata[61]} {S00_AXI_RD_rdata[62]} {S00_AXI_RD_rdata[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 3 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {S00_AXI_RD_arsize[0]} {S00_AXI_RD_arsize[1]} {S00_AXI_RD_arsize[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 64 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {S00_AXI_WR_wdata[0]} {S00_AXI_WR_wdata[1]} {S00_AXI_WR_wdata[2]} {S00_AXI_WR_wdata[3]} {S00_AXI_WR_wdata[4]} {S00_AXI_WR_wdata[5]} {S00_AXI_WR_wdata[6]} {S00_AXI_WR_wdata[7]} {S00_AXI_WR_wdata[8]} {S00_AXI_WR_wdata[9]} {S00_AXI_WR_wdata[10]} {S00_AXI_WR_wdata[11]} {S00_AXI_WR_wdata[12]} {S00_AXI_WR_wdata[13]} {S00_AXI_WR_wdata[14]} {S00_AXI_WR_wdata[15]} {S00_AXI_WR_wdata[16]} {S00_AXI_WR_wdata[17]} {S00_AXI_WR_wdata[18]} {S00_AXI_WR_wdata[19]} {S00_AXI_WR_wdata[20]} {S00_AXI_WR_wdata[21]} {S00_AXI_WR_wdata[22]} {S00_AXI_WR_wdata[23]} {S00_AXI_WR_wdata[24]} {S00_AXI_WR_wdata[25]} {S00_AXI_WR_wdata[26]} {S00_AXI_WR_wdata[27]} {S00_AXI_WR_wdata[28]} {S00_AXI_WR_wdata[29]} {S00_AXI_WR_wdata[30]} {S00_AXI_WR_wdata[31]} {S00_AXI_WR_wdata[32]} {S00_AXI_WR_wdata[33]} {S00_AXI_WR_wdata[34]} {S00_AXI_WR_wdata[35]} {S00_AXI_WR_wdata[36]} {S00_AXI_WR_wdata[37]} {S00_AXI_WR_wdata[38]} {S00_AXI_WR_wdata[39]} {S00_AXI_WR_wdata[40]} {S00_AXI_WR_wdata[41]} {S00_AXI_WR_wdata[42]} {S00_AXI_WR_wdata[43]} {S00_AXI_WR_wdata[44]} {S00_AXI_WR_wdata[45]} {S00_AXI_WR_wdata[46]} {S00_AXI_WR_wdata[47]} {S00_AXI_WR_wdata[48]} {S00_AXI_WR_wdata[49]} {S00_AXI_WR_wdata[50]} {S00_AXI_WR_wdata[51]} {S00_AXI_WR_wdata[52]} {S00_AXI_WR_wdata[53]} {S00_AXI_WR_wdata[54]} {S00_AXI_WR_wdata[55]} {S00_AXI_WR_wdata[56]} {S00_AXI_WR_wdata[57]} {S00_AXI_WR_wdata[58]} {S00_AXI_WR_wdata[59]} {S00_AXI_WR_wdata[60]} {S00_AXI_WR_wdata[61]} {S00_AXI_WR_wdata[62]} {S00_AXI_WR_wdata[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 6 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {S00_AXI_RD_arid[0]} {S00_AXI_RD_arid[1]} {S00_AXI_RD_arid[2]} {S00_AXI_RD_arid[3]} {S00_AXI_RD_arid[4]} {S00_AXI_RD_arid[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 4 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {S00_AXI_RD_arlen[0]} {S00_AXI_RD_arlen[1]} {S00_AXI_RD_arlen[2]} {S00_AXI_RD_arlen[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 2 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {S00_AXI_RD_arburst[0]} {S00_AXI_RD_arburst[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {S00_AXI_WR_awaddr[0]} {S00_AXI_WR_awaddr[1]} {S00_AXI_WR_awaddr[2]} {S00_AXI_WR_awaddr[3]} {S00_AXI_WR_awaddr[4]} {S00_AXI_WR_awaddr[5]} {S00_AXI_WR_awaddr[6]} {S00_AXI_WR_awaddr[7]} {S00_AXI_WR_awaddr[8]} {S00_AXI_WR_awaddr[9]} {S00_AXI_WR_awaddr[10]} {S00_AXI_WR_awaddr[11]} {S00_AXI_WR_awaddr[12]} {S00_AXI_WR_awaddr[13]} {S00_AXI_WR_awaddr[14]} {S00_AXI_WR_awaddr[15]} {S00_AXI_WR_awaddr[16]} {S00_AXI_WR_awaddr[17]} {S00_AXI_WR_awaddr[18]} {S00_AXI_WR_awaddr[19]} {S00_AXI_WR_awaddr[20]} {S00_AXI_WR_awaddr[21]} {S00_AXI_WR_awaddr[22]} {S00_AXI_WR_awaddr[23]} {S00_AXI_WR_awaddr[24]} {S00_AXI_WR_awaddr[25]} {S00_AXI_WR_awaddr[26]} {S00_AXI_WR_awaddr[27]} {S00_AXI_WR_awaddr[28]} {S00_AXI_WR_awaddr[29]} {S00_AXI_WR_awaddr[30]} {S00_AXI_WR_awaddr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 32 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {S00_AXI_RD_araddr[0]} {S00_AXI_RD_araddr[1]} {S00_AXI_RD_araddr[2]} {S00_AXI_RD_araddr[3]} {S00_AXI_RD_araddr[4]} {S00_AXI_RD_araddr[5]} {S00_AXI_RD_araddr[6]} {S00_AXI_RD_araddr[7]} {S00_AXI_RD_araddr[8]} {S00_AXI_RD_araddr[9]} {S00_AXI_RD_araddr[10]} {S00_AXI_RD_araddr[11]} {S00_AXI_RD_araddr[12]} {S00_AXI_RD_araddr[13]} {S00_AXI_RD_araddr[14]} {S00_AXI_RD_araddr[15]} {S00_AXI_RD_araddr[16]} {S00_AXI_RD_araddr[17]} {S00_AXI_RD_araddr[18]} {S00_AXI_RD_araddr[19]} {S00_AXI_RD_araddr[20]} {S00_AXI_RD_araddr[21]} {S00_AXI_RD_araddr[22]} {S00_AXI_RD_araddr[23]} {S00_AXI_RD_araddr[24]} {S00_AXI_RD_araddr[25]} {S00_AXI_RD_araddr[26]} {S00_AXI_RD_araddr[27]} {S00_AXI_RD_araddr[28]} {S00_AXI_RD_araddr[29]} {S00_AXI_RD_araddr[30]} {S00_AXI_RD_araddr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 8 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {S00_AXI_WR_awlen[0]} {S00_AXI_WR_awlen[1]} {S00_AXI_WR_awlen[2]} {S00_AXI_WR_awlen[3]} {S00_AXI_WR_awlen[4]} {S00_AXI_WR_awlen[5]} {S00_AXI_WR_awlen[6]} {S00_AXI_WR_awlen[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 64 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {wr_burst_data[0]} {wr_burst_data[1]} {wr_burst_data[2]} {wr_burst_data[3]} {wr_burst_data[4]} {wr_burst_data[5]} {wr_burst_data[6]} {wr_burst_data[7]} {wr_burst_data[8]} {wr_burst_data[9]} {wr_burst_data[10]} {wr_burst_data[11]} {wr_burst_data[12]} {wr_burst_data[13]} {wr_burst_data[14]} {wr_burst_data[15]} {wr_burst_data[16]} {wr_burst_data[17]} {wr_burst_data[18]} {wr_burst_data[19]} {wr_burst_data[20]} {wr_burst_data[21]} {wr_burst_data[22]} {wr_burst_data[23]} {wr_burst_data[24]} {wr_burst_data[25]} {wr_burst_data[26]} {wr_burst_data[27]} {wr_burst_data[28]} {wr_burst_data[29]} {wr_burst_data[30]} {wr_burst_data[31]} {wr_burst_data[32]} {wr_burst_data[33]} {wr_burst_data[34]} {wr_burst_data[35]} {wr_burst_data[36]} {wr_burst_data[37]} {wr_burst_data[38]} {wr_burst_data[39]} {wr_burst_data[40]} {wr_burst_data[41]} {wr_burst_data[42]} {wr_burst_data[43]} {wr_burst_data[44]} {wr_burst_data[45]} {wr_burst_data[46]} {wr_burst_data[47]} {wr_burst_data[48]} {wr_burst_data[49]} {wr_burst_data[50]} {wr_burst_data[51]} {wr_burst_data[52]} {wr_burst_data[53]} {wr_burst_data[54]} {wr_burst_data[55]} {wr_burst_data[56]} {wr_burst_data[57]} {wr_burst_data[58]} {wr_burst_data[59]} {wr_burst_data[60]} {wr_burst_data[61]} {wr_burst_data[62]} {wr_burst_data[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {rd_burst_addr[0]} {rd_burst_addr[1]} {rd_burst_addr[2]} {rd_burst_addr[3]} {rd_burst_addr[4]} {rd_burst_addr[5]} {rd_burst_addr[6]} {rd_burst_addr[7]} {rd_burst_addr[8]} {rd_burst_addr[9]} {rd_burst_addr[10]} {rd_burst_addr[11]} {rd_burst_addr[12]} {rd_burst_addr[13]} {rd_burst_addr[14]} {rd_burst_addr[15]} {rd_burst_addr[16]} {rd_burst_addr[17]} {rd_burst_addr[18]} {rd_burst_addr[19]} {rd_burst_addr[20]} {rd_burst_addr[21]} {rd_burst_addr[22]} {rd_burst_addr[23]} {rd_burst_addr[24]} {rd_burst_addr[25]} {rd_burst_addr[26]} {rd_burst_addr[27]} {rd_burst_addr[28]} {rd_burst_addr[29]} {rd_burst_addr[30]} {rd_burst_addr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 10 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {rd_burst_len[0]} {rd_burst_len[1]} {rd_burst_len[2]} {rd_burst_len[3]} {rd_burst_len[4]} {rd_burst_len[5]} {rd_burst_len[6]} {rd_burst_len[7]} {rd_burst_len[8]} {rd_burst_len[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 64 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {rd_burst_data[0]} {rd_burst_data[1]} {rd_burst_data[2]} {rd_burst_data[3]} {rd_burst_data[4]} {rd_burst_data[5]} {rd_burst_data[6]} {rd_burst_data[7]} {rd_burst_data[8]} {rd_burst_data[9]} {rd_burst_data[10]} {rd_burst_data[11]} {rd_burst_data[12]} {rd_burst_data[13]} {rd_burst_data[14]} {rd_burst_data[15]} {rd_burst_data[16]} {rd_burst_data[17]} {rd_burst_data[18]} {rd_burst_data[19]} {rd_burst_data[20]} {rd_burst_data[21]} {rd_burst_data[22]} {rd_burst_data[23]} {rd_burst_data[24]} {rd_burst_data[25]} {rd_burst_data[26]} {rd_burst_data[27]} {rd_burst_data[28]} {rd_burst_data[29]} {rd_burst_data[30]} {rd_burst_data[31]} {rd_burst_data[32]} {rd_burst_data[33]} {rd_burst_data[34]} {rd_burst_data[35]} {rd_burst_data[36]} {rd_burst_data[37]} {rd_burst_data[38]} {rd_burst_data[39]} {rd_burst_data[40]} {rd_burst_data[41]} {rd_burst_data[42]} {rd_burst_data[43]} {rd_burst_data[44]} {rd_burst_data[45]} {rd_burst_data[46]} {rd_burst_data[47]} {rd_burst_data[48]} {rd_burst_data[49]} {rd_burst_data[50]} {rd_burst_data[51]} {rd_burst_data[52]} {rd_burst_data[53]} {rd_burst_data[54]} {rd_burst_data[55]} {rd_burst_data[56]} {rd_burst_data[57]} {rd_burst_data[58]} {rd_burst_data[59]} {rd_burst_data[60]} {rd_burst_data[61]} {rd_burst_data[62]} {rd_burst_data[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 32 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {wr_burst_addr[0]} {wr_burst_addr[1]} {wr_burst_addr[2]} {wr_burst_addr[3]} {wr_burst_addr[4]} {wr_burst_addr[5]} {wr_burst_addr[6]} {wr_burst_addr[7]} {wr_burst_addr[8]} {wr_burst_addr[9]} {wr_burst_addr[10]} {wr_burst_addr[11]} {wr_burst_addr[12]} {wr_burst_addr[13]} {wr_burst_addr[14]} {wr_burst_addr[15]} {wr_burst_addr[16]} {wr_burst_addr[17]} {wr_burst_addr[18]} {wr_burst_addr[19]} {wr_burst_addr[20]} {wr_burst_addr[21]} {wr_burst_addr[22]} {wr_burst_addr[23]} {wr_burst_addr[24]} {wr_burst_addr[25]} {wr_burst_addr[26]} {wr_burst_addr[27]} {wr_burst_addr[28]} {wr_burst_addr[29]} {wr_burst_addr[30]} {wr_burst_addr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 10 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {wr_burst_len[0]} {wr_burst_len[1]} {wr_burst_len[2]} {wr_burst_len[3]} {wr_burst_len[4]} {wr_burst_len[5]} {wr_burst_len[6]} {wr_burst_len[7]} {wr_burst_len[8]} {wr_burst_len[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 3 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {axi_master_write_inst/wr_state[0]} {axi_master_write_inst/wr_state[1]} {axi_master_write_inst/wr_state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 16 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {axi_master_write_inst/test_cnt_reg[0]} {axi_master_write_inst/test_cnt_reg[1]} {axi_master_write_inst/test_cnt_reg[2]} {axi_master_write_inst/test_cnt_reg[3]} {axi_master_write_inst/test_cnt_reg[4]} {axi_master_write_inst/test_cnt_reg[5]} {axi_master_write_inst/test_cnt_reg[6]} {axi_master_write_inst/test_cnt_reg[7]} {axi_master_write_inst/test_cnt_reg[8]} {axi_master_write_inst/test_cnt_reg[9]} {axi_master_write_inst/test_cnt_reg[10]} {axi_master_write_inst/test_cnt_reg[11]} {axi_master_write_inst/test_cnt_reg[12]} {axi_master_write_inst/test_cnt_reg[13]} {axi_master_write_inst/test_cnt_reg[14]} {axi_master_write_inst/test_cnt_reg[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list axi_hp_clk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list rd_burst_finish]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list rd_burst_req]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list read_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list S00_AXI_RD_arready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list S00_AXI_RD_arvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list S00_AXI_RD_bready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list S00_AXI_RD_bvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list S00_AXI_RD_rlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list S00_AXI_RD_rready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list S00_AXI_RD_rvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list S00_AXI_WR_awready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list S00_AXI_WR_awvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list S00_AXI_WR_bready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list S00_AXI_WR_bvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list S00_AXI_WR_wlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list S00_AXI_WR_wready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list S00_AXI_WR_wvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list ui_clk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list ui_rst]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe38]
set_property port_width 1 [get_debug_ports u_ila_0/probe38]
connect_debug_port u_ila_0/probe38 [get_nets [list wr_burst_finish]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe39]
set_property port_width 1 [get_debug_ports u_ila_0/probe39]
connect_debug_port u_ila_0/probe39 [get_nets [list wr_burst_req]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe40]
set_property port_width 1 [get_debug_ports u_ila_0/probe40]
connect_debug_port u_ila_0/probe40 [get_nets [list wr_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe41]
set_property port_width 1 [get_debug_ports u_ila_0/probe41]
connect_debug_port u_ila_0/probe41 [get_nets [list write_en]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets ui_clk]
