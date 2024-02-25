vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/breath_led.v" \
"../../../../k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/sim/breath_led_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

