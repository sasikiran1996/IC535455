`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:20:48 11/04/2014 
// Design Name: 
// Module Name:    D_FlipFlop 
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
`ifndef _D_Flip_Flop_
`define _D_Flip_Flop_

module D_FlipFlop(
	input clk,
	input D,
	input clear,
	input preset,
	output Q,
	output _Q
   );
	
	nand(w1, ~preset, w4, w2);
	nand(w2, w1, clk, ~clear);
	nand(w3, w2, clk, w4);
	nand(w4, w3, D, ~clear);
	
	nand(Q, ~preset, w2, _Q);
	nand(_Q, Q, w3, ~clear);
		

endmodule

`endif //_D_Flip_Flop_