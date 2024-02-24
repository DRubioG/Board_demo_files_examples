vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/breath_led.v" \
"../../../../k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/sim/breath_led_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

