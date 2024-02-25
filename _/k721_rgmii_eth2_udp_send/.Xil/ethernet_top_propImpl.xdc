set_property SRC_FILE_INFO {cfile:c:/Users/Administrator/Desktop/ETH1_BACK/k720_rgmii_eth2_udp_send/eth_test.srcs/sources_1/ip/clk_ref/clk_ref.xdc rfile:../eth_test.srcs/sources_1/ip/clk_ref/clk_ref.xdc id:1 order:EARLY scoped_inst:clk_ref_inst/inst} [current_design]
current_instance clk_ref_inst/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
