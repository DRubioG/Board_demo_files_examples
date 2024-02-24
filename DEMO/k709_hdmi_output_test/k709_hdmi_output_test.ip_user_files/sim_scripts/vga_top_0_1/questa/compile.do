vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/sync_gen.v" \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/vga_color.v" \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/vga_top.v" \
"../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/sim/vga_top_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

