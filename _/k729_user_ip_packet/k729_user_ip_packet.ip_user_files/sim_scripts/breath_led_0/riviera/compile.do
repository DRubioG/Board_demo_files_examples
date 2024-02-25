vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/breath_led.v" \
"../../../../k729_user_ip_packet.srcs/sources_1/ip/breath_led_0/sim/breath_led_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

