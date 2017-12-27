`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:46 11/08/2014 
// Design Name: 
// Module Name:    register_unit 
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
`include "D_FlipFlop.v"
`include "Tri_State_Buffer.v"
module register_unit(
	input value_in,
	input R_in,
	input R_out,
	input clk,
	input reset,
	output stored_value,
	output value_out
   );

	wire w,Q,D;
	
	mux_2_1 a (
		.i1(Q),
		.i2(value_in),
		.s0(R_in),
		.o1(D)
	);
	
	wire garbage;
	
	D_FlipFlop b (
		.clk(clk),
		.D(D),
		.clear(reset),
		.preset(1'b0),
		.Q(Q),
		._Q()
	);
	
	and(stored_value,1'b1,Q);

	Tri_State_Buffer c (
		.enable(R_out),
		.in(Q),
		.out(value_out)
	);

endmodule
