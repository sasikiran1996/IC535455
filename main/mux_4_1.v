`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:10 09/23/2014 
// Design Name: 
// Module Name:    mux_4_1 
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
`ifndef mux_4_1
`define mux_4_1

`include "mux_2_1.v"

module mux_4_1(
    input i1,
    input i2,
    input i3,
    input i4,
    input s1,
    input s0,
    output o1
    );
	 
	 mux_2_1 a (i1, i2, s0, w1);
	 mux_2_1 b (i3, i4, s0, w2);
	 mux_2_1 c (w1, w2, s1, o1);


endmodule

`endif 