`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:07 11/08/2014 
// Design Name: 
// Module Name:    mux_2_1_4bit 
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
`ifndef mux_2_1_4bit
`define mux_2_1_4bit

module mux_2_1_4bit(

	input [3:0]a,
	input [3:0]b,
	input s,
	output [3:0]out
	
	);

	assign out = s ? b : a;

endmodule

`endif 