`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:19 11/08/2014 
// Design Name: 
// Module Name:    decrement_by_1 
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

module decrement_by_1(
	input [3:0]x,
	output [3:0]s,
	output carry,
	output overflow
   );

	Addition_Subtraction a (
		.a(x),
		.b(4'b0001),
		.addsub(1'b1),
		.out(s),
		.carry(carry),
		.overflow(overflow)
	);
	

endmodule
