///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
///																									  ///
///																									  ///
///  Company (Team):		IC5355																  ///
///  Engineers: 			Ujjawal Soni, Sasi Kiran										  ///
/// 																									  ///
///  Create Date:    	15:12:58 11/06/2014 												  ///
///  Submission Date:   23:55:00 11/13/2014 												  ///
///  Design Name: 		Ghost Processor													  ///
///  Module Name:    	test for 'main'													  ///
///  Project Name: 	 	Ghost Processor													  ///
///  Target Devices: 	Xilinx ISIM															  ///
///																									  ///
///																									  ///
///  Description: 		A CPU which performs following operations:				  ///
///							MOV R1 K			MOV R1 R2										  ///
///							INC R1    		DEC R1 K			INC R1 K						  ///
///							ADD R1 R2 R3	SUB R1 R2 R3	MUL R1 R2 R3				  ///
///							AND R1 R2 R3 	OR R1 R2 R3		NOT R1						  ///
///							SL R1 K			SR R1 K											  ///
///							SLC R1 K			SRC R1 K											  ///
///																									  ///
///																									  ///
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module test;

	// Inputs
	reg [9:0] data;
	reg reset;
	reg w;
	reg clock;

	// Outputs
	wire [3:0] reg01_value;
	wire [3:0] reg02_value;
	wire [3:0] reg03_value;
	wire [3:0] reg04_value;
	wire [1:0] count;
	wire carry;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.data(data), 
		.reset(reset), 
		.w(w), 
		.clock(clock),  
		.reg01_value(reg01_value), 
		.reg02_value(reg02_value), 
		.reg03_value(reg03_value), 
		.reg04_value(reg04_value), 
		.count(count),
		.carry(carry),
		.overflow(overflow)
	);

	initial begin

		// Initialize Inputs
		data = 0;
		reset = 1;
		w = 1;
		clock = 0;

		// Wait 20 ns for global reset to finish
		#20;

		// Add stimulus here
		reset = 0;
		data = 10'b0000011101;
		
		//#80 - for 1 cycles fn. (1 cycle for exec and wait for 1 cycle)
		//#120 - for 2 cycle fn. (2 cycle for exec and 1 cycle for wait)
		//#160 - for 3 cycle fn. (3 cycle for exec and 1 cycle for wait)
		
		#80;
		data = 10'b0000100111;
		
		#120;
		data = 10'b1010100000;
		
		#80;
		data = 10'b0111111001;

		#160;
		data = 10'b0110001101;

		#160;
		data = 10'b0010000100;
		
		#80;
		data = 10'b0101001100;
		
		#160;
		data = 10'b1000000100;
		
		#120;
		w = 1'b0;

	end
      
	always begin 

		#20;
		clock = ~clock;

	end

endmodule
