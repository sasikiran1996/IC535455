`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:55 11/11/2014 
// Design Name: 
// Module Name:    booth_multiplication 
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
`include "carry_lookahead_adder.v"
`include "adder_10bit.v"
`include "mux_4_1_10bit.v"
`include "arithmetic_right_shift_10bit.v"

module booth_multiplication(

	input [3:0] a, b,
	output [3:0] out,
	output cout

	);

	wire [9:0] A, S, P0;
	wire [3:0] neg_a;
	carry_lookahead_adder complement ( .x(~a), .y(4'b0000), .c0(1'b1), .s(neg_a), .cout() );

	
	assign A = { a[3], a, 5'b00000 };
	assign S = { ~a[3], neg_a, 5'b00000 };
	assign P0 = { 5'b00000, b, 1'b0 };

	wire [9:0] p_a0, p_s0, Q1, P1;
	adder_10bit ppa0 ( .a(P0), .b(A), .out(p_a0) );
	adder_10bit pps0 ( .a(P0), .b(S), .out(p_s0) );
	mux_4_1_10bit w0 ( .a(P0), .b(p_a0), .c(p_s0), .d(P0), .s(P0[1:0]), .out(Q1) );
	arithmetic_right_shift_10bit x0 ( .in(Q1), .out(P1) );

	wire [9:0] p_a1, p_s1, Q2, P2;
	adder_10bit ppa1 ( .a(P1), .b(A), .out(p_a1) );
	adder_10bit pps1 ( .a(P1), .b(S), .out(p_s1) );
	mux_4_1_10bit w1 ( .a(P1), .b(p_a1), .c(p_s1), .d(P1), .s(P1[1:0]), .out(Q2) );
	arithmetic_right_shift_10bit x1 ( .in(Q2), .out(P2) );

	wire [9:0] p_a2, p_s2, Q3, P3;
	adder_10bit ppa2 ( .a(P2), .b(A), .out(p_a2) );
	adder_10bit pps2 ( .a(P2), .b(S), .out(p_s2) );
	mux_4_1_10bit w2 ( .a(P2), .b(p_a2), .c(p_s2), .d(P2), .s(P2[1:0]), .out(Q3) );
	arithmetic_right_shift_10bit x2 ( .in(Q3), .out(P3) );

	wire [9:0] p_a3, p_s3, Q4, P4;
	adder_10bit ppa3 ( .a(P3), .b(A), .out(p_a3) );
	adder_10bit pps3 ( .a(P3), .b(S), .out(p_s3) );
	mux_4_1_10bit w3 ( .a(P3), .b(p_a3), .c(p_s3), .d(P3), .s(P3[1:0]), .out(Q4) );
	arithmetic_right_shift_10bit x3 ( .in(Q4), .out(P4) );

	assign out = P4[4:1];
	or ( cout, P4[8], P4[7], P4[6], P4[5] );


endmodule
