module Program_Counter
(
	input clk, reset, PCWrite,
	input[63:0] PC_In,
	output reg[63:0] PC_Out
);

	always @(posedge clk or posedge reset)
	begin
		if (reset)
			PC_Out <= 64'd0;
		else if(PCWrite)
			PC_Out <= PC_In;
		
			
	end
	
endmodule