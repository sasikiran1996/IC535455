`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:05:53 11/09/2014 
// Design Name: 
// Module Name:    encoder_4_2 
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
module encoder_4_2(
	input [3:0]in,
	output [1:0]out
   );

	or(out[0],in[1],in[3]);
	or(out[1],in[2],in[3]);

endmodule
