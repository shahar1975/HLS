# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7k70tfbg484-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/user-win7/Xilinx/HLS1/HLS1.cache/wt [current_project]
set_property parent.project_path C:/Users/user-win7/Xilinx/HLS1/HLS1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/user-win7/Xilinx/HLS1/HLS1.srcs/sources_1/new/F3.v
  C:/Users/user-win7/Xilinx/HLS1/HLS1.srcs/sources_1/new/CLOCK.v
  C:/Users/user-win7/Xilinx/HLS1/HLS1.srcs/sources_1/new/testbench.v
}
synth_design -top testbench -part xc7k70tfbg484-3
write_checkpoint -noxdef testbench.dcp
catch { report_utilization -file testbench_utilization_synth.rpt -pb testbench_utilization_synth.pb }
