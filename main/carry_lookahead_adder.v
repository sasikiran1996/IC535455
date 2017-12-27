`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:48 11/08/2014 
// Design Name: 
// Module Name:    carry_lookahead_adder 
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
`ifndef carry_lookahead_adder
`define carry_lookahead_adder

module carry_lookahead_adder(

	input [3:0] x, y,
	input c0,
	output [3:0]s,
	output cout
   );

	//new_y is output of mux
	wire [3:0] g, p;
	
	and (g[0], x[0], y[0]);
	and (g[1], x[1], y[1]);
	and (g[2], x[2], y[2]);
	and (g[3], x[3], y[3]);

	or (p[0], x[0], y[0]);
	or (p[1], x[1], y[1]);
	or (p[2], x[2], y[2]);
	or (p[3], x[3], y[3]);
	
	wire c1, c2, c3;
	//1st block
	wire w0;
	
	and (w0, p[0], c0);
	or (c1, g[0], w0);
	xor (s[0], x[0], y[0], c0);
	
	//2nd block
	wire w1, w2;
	
	and (w1, p[1], p[0], c0);
	and (w2, p[1], g[0]);
	or (c2, g[1], w1, w2);
	xor (s[1], x[1], y[1], c1);
	
	//3rd block
	wire w3, w4, w5;
	
	and (w3, p[2], g[1]);
	and (w4, p[2], p[1], g[0]);
	and (w5, p[2], p[1], p[0], c0);
	or (c3, g[2], w3, w4, w5);
	xor (s[2], x[2], y[2], c2);
	
	//4th block
	wire w6, w7, w8, w9;
	
	and (w6, p[3], g[2]);
	and (w7, p[3], p[2], g[1]);
	and (w8, p[3], p[2], p[1], g[0]);
	and (w9, p[3], p[2], p[1], p[0], c0);
	or (cout, g[3], w6, w7, w8, w9);
	xor (s[3], x[3], y[3], c3);

endmodule

`endif 