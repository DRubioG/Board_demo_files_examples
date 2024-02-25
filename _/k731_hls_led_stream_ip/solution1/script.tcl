############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project k731_hls_led_stream_ip
set_top k731_hls_led_stream_ip
add_files k731_hls_led_stream_ip/k731_hls_led_stream_ip.cpp
add_files -tb k731_hls_led_stream_ip/k731_hls_tb.cpp
open_solution "solution1"
set_part {xc7k325tffg676-2}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./k731_hls_led_stream_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
