`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:37 09/16/2014 
// Design Name: 
// Module Name:    FullAdder 
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
`include "HalfAdder.v"

module FullAdder(
    input i1,
    input i2,
    input cin,
    output s,
    output c
    );

	s_Sample ha1 (i1, i2, s1, c1);
	s_Sample ha2 (s1, cin, s, c2);
	
	or (c, c1, c2);


endmodule
