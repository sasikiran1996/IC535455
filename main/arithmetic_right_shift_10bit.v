`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:46 11/11/2014 
// Design Name: 
// Module Name:    arithmetic_right_shift_10bit 
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
module arithmetic_right_shift_10bit(
	input [9:0] in,
	output [9:0] out
   );

	and(out[0],1'b1,in[1]);
	and(out[1],1'b1,in[2]);
	and(out[2],1'b1,in[3]);
	and(out[3],1'b1,in[4]);
	and(out[4],1'b1,in[5]);
	and(out[5],1'b1,in[6]);
	and(out[6],1'b1,in[7]);
	and(out[7],1'b1,in[8]);
	and(out[8],1'b1,in[9]);
	and(out[9],1'b1,in[9]);
			

endmodule
