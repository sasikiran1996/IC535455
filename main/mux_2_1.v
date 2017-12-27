`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:32 09/23/2014 
// Design Name: 
// Module Name:    mux_2_1 
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
`ifndef mux_2_1
`define mux_2_1

module mux_2_1(
    input i1,
    input i2,
    input s0,
    output o1
    );
	assign o1 = s0 ? i2 : i1;

endmodule

`endif 