`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:13 11/11/2014 
// Design Name: 
// Module Name:    adder_10bit 
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
`include "FullAdder.v"

module adder_10bit(

	input [9:0] a, b,
	output [9:0] out

	);

	FullAdder x0 ( .i1(a[0]), .i2(b[0]), .cin(1'b0), .s(out[0]), .c(w1) );
	FullAdder x1 ( .i1(a[1]), .i2(b[1]), .cin(w1), .s(out[1]), .c(w2) );
	FullAdder x2 ( .i1(a[2]), .i2(b[2]), .cin(w2), .s(out[2]), .c(w3) );
	FullAdder x3 ( .i1(a[3]), .i2(b[3]), .cin(w3), .s(out[3]), .c(w4) );
	FullAdder x4 ( .i1(a[4]), .i2(b[4]), .cin(w4), .s(out[4]), .c(w5) );
	FullAdder x5 ( .i1(a[5]), .i2(b[5]), .cin(w5), .s(out[5]), .c(w6) );
	FullAdder x6 ( .i1(a[6]), .i2(b[6]), .cin(w6), .s(out[6]), .c(w7) );
	FullAdder x7 ( .i1(a[7]), .i2(b[7]), .cin(w7), .s(out[7]), .c(w8) );
	FullAdder x8 ( .i1(a[8]), .i2(b[8]), .cin(w8), .s(out[8]), .c(w9) );
	FullAdder x9 ( .i1(a[9]), .i2(b[9]), .cin(w9), .s(out[9]), .c() );
	

endmodule
