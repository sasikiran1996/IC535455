`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:52 11/08/2014 
// Design Name: 
// Module Name:    and_4bit 
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
module and_4bit(
   
	input [3:0]a,
	input [3:0]b,
	output [3:0]out
	
	);

	assign out = a & b;

endmodule
