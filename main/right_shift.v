`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:31 11/08/2014 
// Design Name: 
// Module Name:    right_shift 
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
`include "mux_4_1.v"

module right_shift(

	input [3:0]in,
	input [1:0]k,
	output [3:0]out

);

	mux_4_1 a (in[0], in[1], in[2], in[3], k[1], k[0], out[0]);
	mux_4_1 b (in[1], in[2], in[3], 1'b0, k[1], k[0], out[1]);
	mux_4_1 c (in[2], in[3], 1'b0, 1'b0, k[1], k[0], out[2]);
	mux_4_1 d (in[3], 1'b0, 1'b0, 1'b0, k[1], k[0], out[3]);


endmodule
