set current_path "C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero"

cd $current_path

set diamond_project "C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero.ldf"

set DEVICE "LCMXO2-7000HE-4TG144C"

set DESIGN "bhasa_zero"

set LPF_FILE "C:/ECAD/FPGA_Designs/lattice_propel_workspace/bhasa_fw/bhasa_zero/bhasa_zero.lpf"

prj_project open $diamond_project


prj_impl option HDL_KEYFILE {key_data.dat}
prj_strgy set_value -strategy Strategy1 {bd_cmdline_args=-ip "a" -ic "b"}
prj_impl option top {HelloWorld_Top}
prj_strgy set_value -strategy Strategy1 {bd_mem_init_file_path=C:\ECAD\FPGA_Designs\lattice_propel_workspace\bhasa_fw\bhasa_zero\bhasa_zero\lib\latticesemi.com\ip\sysmem0\2.2.0}

prj_strgy set_value -strategy Strategy1 {par_place_iterator=10} {par_stop_zero=True}

prj_project save

