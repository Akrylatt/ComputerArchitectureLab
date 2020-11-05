// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Thu Nov 05 15:26:19 2020"

module FullAdder(
	a,
	b,
	carry_in,
	sum,
	carry_out
);


input wire	a;
input wire	b;
input wire	carry_in;
output wire	sum;
output wire	carry_out;

wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_4 = a ^ b;

assign	sum = SYNTHESIZED_WIRE_4 ^ carry_in;

assign	SYNTHESIZED_WIRE_2 = a & b;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_4 & carry_in;

assign	carry_out = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;


endmodule
