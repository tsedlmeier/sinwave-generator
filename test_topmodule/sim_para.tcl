lappend auto_path "C:/lscc/radiant/2.2/scripts/tcl/simulation"
package require simulation_generation
set ::bali::simulation::Para(DEVICEPM) {ice40tp}
set ::bali::simulation::Para(DEVICEFAMILYNAME) {iCE40UP}
set ::bali::simulation::Para(PROJECT) {test_topmodule}
set ::bali::simulation::Para(PROJECTPATH) {C:/lscc/radiant/2.2/projects/sinewave_generator}
set ::bali::simulation::Para(FILELIST) {"C:/lscc/radiant/2.2/projects/sinewave_generator/source/impl_1/clock_devider.v" "C:/lscc/radiant/2.2/projects/sinewave_generator/RAM_LUT/rtl/RAM_LUT.v" "C:/lscc/radiant/2.2/projects/sinewave_generator/source/impl_1/pwm.v" "C:/lscc/radiant/2.2/projects/sinewave_generator/source/impl_1/write_sine.v" "C:/lscc/radiant/2.2/projects/sinewave_generator/source/impl_1/sine_gen.v" "C:/lscc/radiant/2.2/projects/sinewave_generator/source/impl_1/top.v" "C:/lscc/radiant/2.2/projects/sinewave_generator/source/impl_1/tb_top.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_ice40up}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {tb_top}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/lscc/radiant/2.2}
set ::bali::simulation::Para(MEMPATH) {C:/lscc/radiant/2.2/projects/sinewave_generator/PLL_24M;C:/lscc/radiant/2.2/projects/sinewave_generator/RAM_LUT}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(ISRTL)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
::bali::simulation::ModelSim_Run
