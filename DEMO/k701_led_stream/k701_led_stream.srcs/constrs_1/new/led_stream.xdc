set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN A23 [get_ports {led[0]}]
set_property PACKAGE_PIN A24 [get_ports {led[1]}]
set_property PACKAGE_PIN D23 [get_ports {led[2]}]
set_property PACKAGE_PIN C24 [get_ports {led[3]}]
set_property PACKAGE_PIN C26 [get_ports {led[4]}]
set_property PACKAGE_PIN D24 [get_ports {led[5]}]
set_property PACKAGE_PIN D25 [get_ports {led[6]}]
set_property PACKAGE_PIN E25 [get_ports {led[7]}]
set_property PACKAGE_PIN G22 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN D26 [get_ports rst_n]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

