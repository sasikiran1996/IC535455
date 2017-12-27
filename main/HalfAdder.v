`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:33 09/16/2014 
// Design Name: 
// Module Name:    s_Sample 
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
module s_Sample(
    input i1,
    input i2,
    output s,
    output c
    );

	and (c, i1, i2);
	xor (s, i1, i2);


endmodule

