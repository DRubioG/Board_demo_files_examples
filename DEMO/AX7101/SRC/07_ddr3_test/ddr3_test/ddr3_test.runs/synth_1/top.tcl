# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tfgg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.cache/wt [current_project]
set_property parent.project_path D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/usr_src/mem_burst.v
  D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/usr_src/mem_test.v
  D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/usr_src/top.v
}
read_ip -quiet D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ila_0/ila_0.xci
set_property used_in_synthesis false [get_files -all d:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ila_0/ila_0_ooc.xdc]

read_ip -quiet d:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ddr3/ddr3.xci
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3.xdc]
set_property used_in_implementation false [get_files -all d:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ddr3_test.xdc
set_property used_in_implementation false [get_files D:/demo_ax7101/demo/09_ddr3_test/ddr3_test/ddr3_test.srcs/sources_1/ddr3_test.xdc]


synth_design -top top -part xc7a100tfgg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
