############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project k732_hls_fir_filter_ip
set_top k732_hls_fir_filter_ip
add_files k732_hls_fir_filter_ip/k732_hls_fir_filter_ip.cpp
add_files -tb k732_hls_fir_filter_ip/tb_main.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./k732_hls_fir_filter_ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
