`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:48 11/11/2014 
// Design Name: 
// Module Name:    mux_4_1_10bit 
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
module mux_4_1_10bit(

	input [9:0]a, b, c, d,
	input [1:0]s,
	output [9:0]out
	
	);

	assign out = s[1] ? (s[0] ? d : c) : (s[0] ? b : a);


endmodule
