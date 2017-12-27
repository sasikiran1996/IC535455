`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:34 11/04/2014 
// Design Name: 
// Module Name:    Tri_State_Buffer 
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
`include "mux_2_1.v"
module Tri_State_Buffer(
	input enable,
	input in,
	output out
   );

	mux_2_1 a ( 
		.i1(1'bz),
		.i2(in),
		.s0(enable),
		.o1(out)
	);

endmodule
