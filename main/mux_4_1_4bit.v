`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:18 11/10/2014 
// Design Name: 
// Module Name:    mux_4_1_4bit 
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
`ifndef mux_4_1_4bit
`define mux_4_1_4bit

module mux_4_1_4bit(

	input [3:0]a, b, c, d,
	input [1:0]s,
	output [3:0]out
	
	);

	assign out = s[1] ? (s[0] ? d : c) : (s[0] ? b : a);

endmodule


`endif 
