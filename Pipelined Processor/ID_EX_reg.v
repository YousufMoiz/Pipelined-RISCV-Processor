module ID_EX_reg
(	
	input[63:0] PC_Out1, ReadData1, ReadData2, imm_data,
	input[3:0] Funct,
	input[4:0] rs1, rs2, rd,
	input RegWrite, Branch, ALUSrc, MemRead, MemWrite, MemtoReg, 
	input clk, reset, id_ex_flush,
	input[1:0] ALUOp,
	output reg[63:0] PC_Out2, ReadData1_1, ReadData2_1, imm_data1,
	output reg[3:0] Funct_1,
	output reg[4:0] rs1_1, rs2_1, rd_1,
	output reg RegWrite_1, Branch_1, ALUSrc_1, 
	output reg MemRead_1, MemWrite_1, MemtoReg_1,
	output reg[1:0] ALUOp_1

);

	always @ (posedge clk)
	begin
		if (reset || id_ex_flush)
			begin
				PC_Out2 <= 64'd0;
				ReadData1_1 <= 64'd0;
				ReadData2_1 <= 64'd0;
				imm_data1 <= 64'd0;
				Funct_1 <= 4'd0;
				rd_1 <= 5'd0;
				rs1_1 <= 5'd0;
				rs2_1 <= 5'd0;
				RegWrite_1 <= 1'b0;
				Branch_1 <= 1'b0;
				ALUSrc_1 <= 1'b0;
				ALUOp_1 <= 2'b00;
				MemRead_1 <= 1'b0;
				MemWrite_1 <= 1'b0;
				MemtoReg_1 <= 1'b0;
			end
				
		else
			begin
				PC_Out2 <= PC_Out1;
				ReadData1_1 <= ReadData1;
				ReadData2_1 <= ReadData2;
				imm_data1 <= imm_data;
				Funct_1 <= Funct;
				rd_1 <= rd;
				rs1_1 <= rs1;
				rs2_1 <= rs2;
				RegWrite_1 <= RegWrite;
				Branch_1 <= Branch;
				ALUSrc_1 <= ALUSrc;
				ALUOp_1 <= ALUOp;
				MemRead_1 <= MemRead;
				MemWrite_1 <= MemWrite;
				MemtoReg_1 <= MemtoReg;
			end
	end
	
endmodule
		