`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:52 11/12/2014 
// Design Name: 
// Module Name:    Addition_Subtraction 
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
`ifndef Additon_Subtraction
`define Additon_Subtraction

`include "add_sub.v"
`include "mux_4_1.v"

module Addition_Subtraction(

	input [3:0] a, b,
	input addsub,
	output [3:0] out,
	output carry,
	output overflow

	);

	wire compare, carry_sub, carry_add;
	wire w1, w2;
	wire x0, x1, x2;

	xor (x0, a[0], b[0]);
	mux_2_1 y0 ( .i1(1'b0), .i2(a[0]), .s0(x0), .o1(w1) );
	xor (x1, a[1], b[1]);
	mux_2_1 y1 ( .i1(w1), .i2(a[1]), .s0(x1), .o1(w2) );
	xor (x2, a[2], b[2]);
	mux_2_1 y2 ( .i1(w2), .i2(a[2]), .s0(x2), .o1(compare) );

	mux_4_1 carrie ( .i1(~compare), .i2(1'b1), .i3(1'b0), .i4(~compare), .s1(a[3]), .s0(b[3]), .o1(carry_sub) );
	
	add_sub as ( .x(a), .y(b), .add_sub(addsub), .s(out), .cout(carry_add) );
	assign overflow = ~addsub & ( a[3] & b[3] & ~out[3] | ~a[3] & ~b[3] & out[3] );
	
	mux_2_1 carryf ( .i1(carry_add), .i2(carry_sub), .s0(addsub), .o1(carry) );

endmodule

`endif 