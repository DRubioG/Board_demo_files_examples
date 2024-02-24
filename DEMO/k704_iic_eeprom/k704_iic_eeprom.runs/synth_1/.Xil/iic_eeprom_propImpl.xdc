set_property SRC_FILE_INFO {cfile:C:/Users/Administrator/Desktop/K7325/DEMO/k704_iic_eeprom/k704_iic_eeprom.srcs/constrs_1/new/iic_eeprom.xdc rfile:../../../k704_iic_eeprom.srcs/constrs_1/new/iic_eeprom.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D26 [get_ports rst_n]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G22 [get_ports clk]
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A23 [get_ports {led[0]}]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D23 [get_ports {led[1]}]
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C26 [get_ports {led[2]}]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D25 [get_ports {led[3]}]
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B21 [get_ports SCL]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C21 [get_ports SDA]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
create_debug_core u_ila_0 ila
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property C_DATA_DEPTH 32768 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe0 [get_nets [list {write_byte_reg[0]} {write_byte_reg[1]} {write_byte_reg[2]} {write_byte_reg[3]} {write_byte_reg[4]} {write_byte_reg[5]} {write_byte_reg[6]} {write_byte_reg[7]}]]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 7 [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list {cnt[0]} {cnt[1]} {cnt[2]} {cnt[3]} {cnt[4]} {cnt[5]} {cnt[6]}]]
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe2 [get_nets [list {write_byte_cnt[0]} {write_byte_cnt[1]} {write_byte_cnt[2]} {write_byte_cnt[3]}]]
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 5 [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe3 [get_nets [list {state_reg[0]} {state_reg[1]} {state_reg[2]} {state_reg[3]} {state_reg[4]}]]
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe4 [get_nets [list read_start_flag_wire]]
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe5 [get_nets [list SCL_OBUF]]
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe6 [get_nets [list SDA_IBUF]]
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe7 [get_nets [list SDA_OBUF]]
set_property src_info {type:XDC file:1 line:62 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe8 [get_nets [list write_start_flag_wire]]
set_property src_info {type:XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
