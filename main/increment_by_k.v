`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:33:46 11/08/2014 
// Design Name: 
// Module Name:    increment_by_k 
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
`include "Addition_Subtraction.v"

module increment_by_k(

	input [3:0]x,
	input [3:0]k,
	output [3:0]s,
	output carry,
	output overflow

   );

	Addition_Subtraction a(
		.a(x),
		.b(k),
		.addsub(1'b0),
		.carry(carry),
		.out(s),
		.overflow(overflow)
	);
	
endmodule
