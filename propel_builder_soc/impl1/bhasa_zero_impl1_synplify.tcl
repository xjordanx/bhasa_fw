#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HE
set_option -package TG144C
set_option -speed_grade -4

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 100
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0
set_option -dup false

set_option -default_enum_encoding default

#simulation options


#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -seqshift_no_replicate 0

#-- add_file options
set_option -include_path {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/lib/latticesemi.com/module/ahbl0/1.3.0/rtl/ahbl0.v}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/lib/latticesemi.com/module/apb0/1.2.0/rtl/apb0.v}
add_file -vhdl -lib "work" {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/bhasa_zero.vhd}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/bhasa_zero_Top.v}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/lib/latticesemi.com/ip/uart0/1.3.0/rtl/uart0.v}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/lib/latticesemi.com/ip/cpu0/2.4.0/rtl/cpu0.v}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/lib/latticesemi.com/ip/gpio0/1.6.1/rtl/gpio0.v}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/lib/latticesemi.com/module/ahbl2apb0/1.1.0/rtl/ahbl2apb0.v}
add_file -verilog -vlog_std v2001 {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero/lib/latticesemi.com/ip/sysmem0/2.2.0/rtl/sysmem0.v}

#-- top module name
set_option -top_module HelloWorld_Top

#-- set result format/file last
project -result_file {C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/impl1/bhasa_zero_impl1.edi}

#-- error message log file
project -log_file {bhasa_zero_impl1.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run hdl_info_gen -fileorder
project -run
