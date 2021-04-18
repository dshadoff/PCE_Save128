setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/devel/Diamond/PCE_Save128/firmware/simulation/simulation.adf"]} { 
	design create simulation "C:/devel/Diamond/PCE_Save128/firmware"
  set newDesign 1
}
design open "C:/devel/Diamond/PCE_Save128/firmware/simulation"
cd "C:/devel/Diamond/PCE_Save128/firmware"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/devel/Diamond/PCE_Save128/firmware/Save128.v"
addfile "C:/devel/Diamond/PCE_Save128/firmware/top.v"
addfile "C:/devel/Diamond/PCE_Save128/firmware/testbench.v"
vlib "C:/devel/Diamond/PCE_Save128/firmware/simulation/work"
set worklib work
adel -all
vlog -dbg -work work "C:/devel/Diamond/PCE_Save128/firmware/Save128.v"
vlog -dbg -work work "C:/devel/Diamond/PCE_Save128/firmware/top.v"
vlog -dbg -work work "C:/devel/Diamond/PCE_Save128/firmware/testbench.v"
module MB128_TB
vsim  +access +r MB128_TB   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
