`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:02 11/08/2014 
// Design Name: 
// Module Name:    counter 
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
`include "D_FlipFlop.v"

module counter(

	input reset,
	input clk,
	output [1:0]counter

);

	xor (d1, counter[0], 1'b1);
	D_FlipFlop a ( .clk(clk), .D(d1), .clear(reset), .preset(1'b0), .Q(counter[0]), ._Q() );

	and (temp, counter[0], 1'b1);
	xor (d2, counter[1], temp);
	D_FlipFlop b ( .clk(clk), .D(d2), .clear(reset), .preset(1'b0), .Q(counter[1]), ._Q() );
	

endmodule
