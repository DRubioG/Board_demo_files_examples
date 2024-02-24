vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/sync_gen.v" \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/vga_color.v" \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/vga_top.v" \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/sim/vga_top_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

