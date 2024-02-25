
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rstn]
set_property PACKAGE_PIN G22 [get_ports clk]
set_property PACKAGE_PIN D26 [get_ports rstn]
set_property PACKAGE_PIN AE22 [get_ports HDMI_OUT_EN1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_OUT_EN1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_OUT_EN2]
set_property PACKAGE_PIN W20 [get_ports HDMI_OUT_EN2]
set_property PACKAGE_PIN Y22 [get_ports TMDS_CLK_P1]
set_property PACKAGE_PIN AD26 [get_ports TMDS_CLK_P2]
set_property PACKAGE_PIN AF24 [get_ports {TMDS_DATA_P1[0]}]
set_property PACKAGE_PIN AE23 [get_ports {TMDS_DATA_P1[1]}]
set_property PACKAGE_PIN AC23 [get_ports {TMDS_DATA_P1[2]}]
set_property PACKAGE_PIN AB26 [get_ports {TMDS_DATA_P2[0]}]
set_property PACKAGE_PIN AB22 [get_ports {TMDS_DATA_P2[1]}]
set_property PACKAGE_PIN Y23 [get_ports {TMDS_DATA_P2[2]}]


set_property IOSTANDARD TMDS_33 [get_ports {TMDS_DATA_N2[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_DATA_N2[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_DATA_N2[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_DATA_P2[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_DATA_P2[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_DATA_P2[0]}]

set_property IOSTANDARD TMDS_33 [get_ports TMDS_CLK_P2]


set_property SLEW FAST [get_ports HDMI_OUT_EN1]

