set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design] 


############## clock define##################
create_clock -period 5 [get_ports sys_clk_p]
set_property PACKAGE_PIN R4 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]

##############reset key define##################
set_property PACKAGE_PIN T6 [get_ports rst_n]
set_property IOSTANDARD LVCMOS15 [get_ports rst_n]

############## AN070 LCD on AX7101 J11##################
#set_property PACKAGE_PIN B22 [get_ports {lcd_int}]
set_property PACKAGE_PIN c22 [get_ports {lcd_pwm}]
#set_property PACKAGE_PIN A20 [get_ports {lcd_scl}]
#set_property PACKAGE_PIN B20 [get_ports {lcd_sda}]
set_property PACKAGE_PIN F20 [get_ports {lcd_hs}]
set_property PACKAGE_PIN F19 [get_ports {lcd_vs}]
set_property PACKAGE_PIN J16 [get_ports {lcd_dclk}]
set_property PACKAGE_PIN F15 [get_ports {lcd_de}]
set_property PACKAGE_PIN F21 [get_ports {lcd_b[6]}]
set_property PACKAGE_PIN M17 [get_ports {lcd_b[7]}]
set_property PACKAGE_PIN A21 [get_ports {lcd_b[4]}]
set_property PACKAGE_PIN B21 [get_ports {lcd_b[5]}]
set_property PACKAGE_PIN D21 [get_ports {lcd_b[2]}]
set_property PACKAGE_PIN E21 [get_ports {lcd_b[3]}]
set_property PACKAGE_PIN G18 [get_ports {lcd_b[0]}]
set_property PACKAGE_PIN G17 [get_ports {lcd_b[1]}]
set_property PACKAGE_PIN H19 [get_ports {lcd_g[6]}]
set_property PACKAGE_PIN J19 [get_ports {lcd_g[7]}]
set_property PACKAGE_PIN G16 [get_ports {lcd_g[4]}]
set_property PACKAGE_PIN G15 [get_ports {lcd_g[5]}]
set_property PACKAGE_PIN D19 [get_ports {lcd_g[2]}]
set_property PACKAGE_PIN E19 [get_ports {lcd_g[3]}]
set_property PACKAGE_PIN C20 [get_ports {lcd_g[0]}]
set_property PACKAGE_PIN D20 [get_ports {lcd_g[1]}]
set_property PACKAGE_PIN A19 [get_ports {lcd_r[6]}]
set_property PACKAGE_PIN A18 [get_ports {lcd_r[7]}]
set_property PACKAGE_PIN E18 [get_ports {lcd_r[4]}]
set_property PACKAGE_PIN F18 [get_ports {lcd_r[5]}]
set_property PACKAGE_PIN C19 [get_ports {lcd_r[2]}]
set_property PACKAGE_PIN C18 [get_ports {lcd_r[3]}]
set_property PACKAGE_PIN B18 [get_ports {lcd_r[0]}]
set_property PACKAGE_PIN B17 [get_ports {lcd_r[1]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {lcd_int}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_pwm}]
#set_property IOSTANDARD LVCMOS33 [get_ports {lcd_scl}]
#set_property IOSTANDARD LVCMOS33 [get_ports {lcd_sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_hs}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_vs}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_dclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_de}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[1]}]





