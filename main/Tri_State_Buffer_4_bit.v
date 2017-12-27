`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:27 11/08/2014 
// Design Name: 
// Module Name:    Tri_State_Buffer_4_bit 
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
`include "mux_2_1_4bit.v"
module Tri_State_Buffer_4_bit(
	input enable,
	input [3:0]in,
	output [3:0]out
   );

	mux_2_1_4bit z (
		.a(4'bzzzz),
		.b(in),
		.s(enable),
		.out(out)
	);
	


endmodule
