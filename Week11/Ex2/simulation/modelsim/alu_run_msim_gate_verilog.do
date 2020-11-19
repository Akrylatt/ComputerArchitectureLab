transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {alu.vo}

vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1/srt.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1/sub.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1/add.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week11/Ex1/Tcl_script1.tcl
