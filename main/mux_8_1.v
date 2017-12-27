`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:20 09/23/2014 
// Design Name: 
// Module Name:    mux_8_1 
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

module mux_8_1(
	 input a1,
	 input a2,
	 input a3,
	 input a4,
	 input a5,
	 input a6,
	 input a7,
	 input a8,
    input s1,
    input s2,
    input s3,
    output o1
    );
	
	
	mux_4_1 x (a1, a2, a3, a4, s2, s3, w1);
	mux_4_1 y (a5, a6, a7, a8, s2, s3, w2);
	mux_2_1 z (w1, w2, s1, o1);

endmodule
