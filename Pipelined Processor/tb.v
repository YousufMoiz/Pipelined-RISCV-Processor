module tb();

reg clk, reset;

	RISC_V_Processor RSVP
	(	
		.clk(clk),
		.reset(reset)
	);
	
	
	initial 
	begin
		clk = 1'b0;
		reset = 1'b1;
	end
	
	always
		#3 clk = ~clk;
		
	initial
		#7 reset = 1'b0;
		

endmodule