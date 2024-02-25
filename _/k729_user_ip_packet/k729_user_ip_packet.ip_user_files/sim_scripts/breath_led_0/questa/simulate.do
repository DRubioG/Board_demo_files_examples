onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib breath_led_0_opt

do {wave.do}

view wave
view structure
view signals

do {breath_led_0.udo}

run -all

quit -force
