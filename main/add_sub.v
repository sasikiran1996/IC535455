`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:21 11/08/2014 
// Design Name: 
// Module Name:    add_sub 
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
`ifndef add_sub
`define add_sub

`include "carry_lookahead_adder.v"
`include "mux_2_1_4bit.v"
module add_sub(
	input [3:0]x,
	input [3:0]y,
	input add_sub,
	output [3:0]s,
	output cout
   );
	
	//find the 2's complement of number in neg_y
	wire [3:0]neg_y;
	wire garbage;
	
	carry_lookahead_adder a (
		.x(~y),
		.y(4'b0000),
		.c0(1'b1),
		.s(neg_y),
		.cout()
	);
	
	wire [3:0]temp_y;
	
	mux_2_1_4bit b (
		.a(y),
		.b(neg_y),
		.s(add_sub),
		.out(temp_y)
	);
	
	carry_lookahead_adder c (
		.x(x),
		.y(temp_y),
		.c0(1'b0),
		.s(s),
		.cout(cout)
	);

endmodule

`endif 