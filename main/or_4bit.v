`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:13 11/08/2014 
// Design Name: 
// Module Name:    or_4bit 
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
module or_4bit(

	input [3:0]a,
	input [3:0]b,
	output [3:0]out

	);

	assign out = a | b;

endmodule
