`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:02 11/10/2014 
// Design Name: 
// Module Name:    mux_16_1_4bit 
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
`include "mux_4_1_4bit.v"

module mux_16_1_4bit(

	input [3:0] a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, s,
	output [3:0] out

	);

	wire [3:0] temp0, temp1, temp2, temp3;

	mux_4_1_4bit w0 ( .a(a0), .b(a1), .c(a2), .d(a3), .s(s[1:0]), .out(temp0) );
	mux_4_1_4bit w1 ( .a(a4), .b(a5), .c(a6), .d(a7), .s(s[1:0]), .out(temp1) );
	mux_4_1_4bit w2 ( .a(a8), .b(a9), .c(a10), .d(a11), .s(s[1:0]), .out(temp2) );
	mux_4_1_4bit w3 ( .a(a12), .b(a13), .c(a14), .d(a15), .s(s[1:0]), .out(temp3) );

	mux_4_1_4bit w4 ( .a(temp0), .b(temp1), .c(temp2), .d(temp3), .s(s[3:2]), .out(out) );


endmodule
