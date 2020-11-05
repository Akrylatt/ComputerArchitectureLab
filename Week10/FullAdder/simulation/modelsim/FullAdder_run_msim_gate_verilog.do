transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {FullAdder.vo}

vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week10/FullAdder {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week10/FullAdder/FullAdder.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week10/FullAdder {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week10/FullAdder/full_adder_testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  full_adder_testbench

do C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week10/FullAdder/Tcl_script2.tcl
