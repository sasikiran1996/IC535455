`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:29 10/13/2014 
// Design Name: 
// Module Name:    mux_16_1 
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
`include "mux_8_1.v"

module mux_16_1(
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input i8,
    input i9,
    input i10,
    input i11,
    input i12,
    input i13,
    input i14,
    input i15,
    input i16,
    input s1,
    input s2,
    input s3,
    input s4,
    output o
    );

	mux_8_1 a (i1 ,i2 ,i3 ,i4 ,i5 ,i6 ,i7 ,i8 ,s2 ,s3 ,s4 ,w1);
	mux_8_1 b (i9 ,i10 ,i11 ,i12 ,i13 ,i14 ,i15 ,i16 ,s2 ,s3 ,s4 ,w2);
	mux_2_1 c (w1 ,w2 ,s1 ,o);

endmodule
