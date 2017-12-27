`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:31 11/08/2014 
// Design Name: 
// Module Name:    register 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "register_unit.v"
module register(
	input [3:0]value_in,
	input reset,
	input R_in,
	input clk,
	input R_out,
	output [3:0]stored_value,
	output [3:0]value_out
   );

	register_unit a (
		.value_in(value_in[0]),
		.R_in(R_in),
		.R_out(R_out),
		.clk(clk),
		.reset(reset),
		.stored_value(stored_value[0]),
		.value_out(value_out[0])
	);

	register_unit b (
		.value_in(value_in[1]),
		.R_in(R_in),
		.R_out(R_out),
		.clk(clk),
		.reset(reset),
		.stored_value(stored_value[1]),
		.value_out(value_out[1])
	);
	
	register_unit c (
		.value_in(value_in[2]),
		.R_in(R_in),
		.R_out(R_out),
		.clk(clk),
		.reset(reset),
		.stored_value(stored_value[2]),
		.value_out(value_out[2])
	);
	
	register_unit d (
		.value_in(value_in[3]),
		.R_in(R_in),
		.R_out(R_out),
		.clk(clk),
		.reset(reset),
		.stored_value(stored_value[3]),
		.value_out(value_out[3])
	);

endmodule
