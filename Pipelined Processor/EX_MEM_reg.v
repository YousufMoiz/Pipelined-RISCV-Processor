module EX_MEM_reg
(
	input[63:0] out, Result, ReadData2_1,
	input[4:0] rd_1,
	input MemtoReg_1, MemWrite_1, MemRead_1, RegWrite_1, 
	input branch_op, clk, Branch_1, reset, ex_mem_flush,
	output reg[63:0] out_1, Result_1, ReadData2_2,
	output reg[4:0] rd_2,
	output reg MemtoReg_2, MemWrite_2, MemRead_2, 
	output reg RegWrite_2, Branch_2, branch_op1
);

	always @(posedge clk)
	begin 
		if (reset || ex_mem_flush)
			begin
				out_1 <= 64'd0;
				Result_1 <= 64'd0;
				ReadData2_2 <= 64'd0;
				rd_2 <= 5'd0;
				MemtoReg_2 <= 1'b0;
				MemWrite_2 <= 1'b0;
				MemRead_2 <= 1'b0;
				RegWrite_2 <= 1'b0;
				branch_op1 <= 1'b0;
				Branch_2 <= 1'b0;
			end
		
		else
			begin
					
				out_1 <= out;
				Result_1 <= Result;
				ReadData2_2 <= ReadData2_1;
				rd_2 <= rd_1;
				MemtoReg_2 <= MemtoReg_1;
				MemWrite_2 <= MemWrite_1;
				MemRead_2 <= MemRead_1;
				RegWrite_2 <= RegWrite_1;
				branch_op1 <= branch_op;
				Branch_2 <= Branch_1;
			end
	end
	
endmodule
