module IF_ID_reg
(
	input[63:0] PC_Out,
	input[31:0] Instruction,
	input clk, reset, if_id_write, if_id_flush,
	output reg[63:0] PC_Out1,
	output reg[31:0] Instruction1
);

	always @ (posedge clk)
	begin
		if (reset || if_id_flush)
		begin
			PC_Out1 <= 64'd0;
			Instruction1 <= 32'd0;
		end
		
	    else if(if_id_write)
		begin
			PC_Out1 <= PC_Out;
			Instruction1 <= Instruction;
		end
	end
	
endmodule
