module MEM_WB_reg
(
	input[63:0] Read_Data, Result_1,
	input RegWrite_2, MemtoReg_2, clk, reset,
	input[4:0] rd_2,
	output reg[63:0] Read_Data_1, Result_2,
	output reg RegWrite_3, MemtoReg_3,
	output reg[4:0] rd_3
);

	always @(posedge clk)
	begin 
		if (reset)
			begin
				Read_Data_1 <= 64'd0;
				Result_2 <= 64'd0;
				RegWrite_3 <= 1'b0;
				MemtoReg_3 <= 1'b0;
				rd_3 <= 5'd0;
			end
		
		else
			begin
					
				Read_Data_1 <= Read_Data;
				Result_2 <= Result_1;
				RegWrite_3 <= RegWrite_2;
				MemtoReg_3 <= MemtoReg_2;
				rd_3 <= rd_2;
			end
	end
endmodule 