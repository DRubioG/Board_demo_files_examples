-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/sync_gen.v" \
  "../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/vga_color.v" \
  "../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/src/vga_top.v" \
  "../../../../k709_hdmi_output_test.srcs/sources_1/ip/vga_top_0_1/sim/vga_top_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

