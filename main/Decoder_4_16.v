`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:24 11/04/2014 
// Design Name: 
// Module Name:    Decoder_4_16 
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
module Decoder_4_16(
	input [3:0]i,
	input enable,
	output [15:0]o
   );

	//i3 i2 i1 i0 is the input number
	and(o[0], enable, ~i[3] ,~i[2], ~i[1], ~i[0]);
	and(o[1], enable, ~i[3] ,~i[2], ~i[1], i[0]);
	and(o[2], enable, ~i[3] ,~i[2], i[1], ~i[0]);	
	and(o[3], enable, ~i[3] ,~i[2], i[1], i[0]);
	and(o[4], enable, ~i[3] ,i[2], ~i[1], ~i[0]);
	and(o[5], enable, ~i[3] ,i[2], ~i[1], i[0]);
	and(o[6], enable, ~i[3] ,i[2], i[1], ~i[0]);
	and(o[7], enable, ~i[3] ,i[2], i[1], i[0]);
	and(o[8], enable, i[3] ,~i[2], ~i[1], ~i[0]);
	and(o[9], enable, i[3] ,~i[2], ~i[1], i[0]);
	and(o[10], enable, i[3] ,~i[2], i[1], ~i[0]);
	and(o[11], enable, i[3] ,~i[2], i[1], i[0]);
	and(o[12], enable, i[3] ,i[2], ~i[1], ~i[0]);
	and(o[13], enable, i[3] ,i[2], ~i[1], i[0]);
	and(o[14], enable, i[3] ,i[2], i[1], ~i[0]);
	and(o[15], enable, i[3] ,i[2], i[1], i[0]);

endmodule
