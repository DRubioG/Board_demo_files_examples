set_property SRC_FILE_INFO {cfile:c:/Users/Administrator/Desktop/K7325/DEMO/k712_ov5640_hdmi_display/k712_ov5640_hdmi_display.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../../../k712_ov5640_hdmi_display.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in]] 0.2
