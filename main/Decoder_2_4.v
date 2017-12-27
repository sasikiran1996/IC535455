`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:09:09 11/08/2014 
// Design Name: 
// Module Name:    Decoder_2_4 
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
module Decoder_2_4(
	input [1:0]i,
	input enable,
	output [3:0]o
   );

	and(o[0],enable,~i[1],~i[0]);
	and(o[1],enable,~i[1],i[0]);
	and(o[2],enable,i[1],~i[0]);
	and(o[3],enable,i[1],i[0]);


endmodule
