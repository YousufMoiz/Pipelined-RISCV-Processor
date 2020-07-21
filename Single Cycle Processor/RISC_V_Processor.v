module RISC_V_Processor
(
	input clk, reset
);
    wire[63:0] PC_In, PC_Out, out1, out2, imm_data, ReadData1, ReadData2, ALUIn, Result, Read_Data, WriteData;
	wire[31:0] Instruction;
	wire[6:0] opcode,funct7;
	wire[4:0] rd,rs1,rs2;
	wire[2:0] funct3;
	wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, zero, Less, branch_op;
	wire[1:0] ALUOp;
	wire[3:0] Operation;
	
	Program_Counter pc1
	(
		.clk(clk),
		.reset(reset),
		.PC_In(PC_In),
		.PC_Out(PC_Out)
	);
	
	Adder a1
	(
		.a(PC_Out),
		.b(64'd4),
		.out(out1)
	);
	
	Instruction_Memory im1
	(
		.Inst_Address(PC_Out),
		.Instruction(Instruction)
	);
	
	inst_parser ip1
	(
		.instruction(Instruction),
		.opcode(opcode),
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.funct3(funct3),
		.funct7(funct7)
	);
	
	imm_data_extractor id1
	(
		.instruction(Instruction),
		.imm_data(imm_data)
	);
	
	registerFile rf1
	(
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.clk(clk),
		.reset(reset),
		.WriteData(WriteData),
		.RegWrite(RegWrite),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
	Control_Unit cu1
	(
		.opcode(opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.ALUOp(ALUOp),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite)
	);
	
	ALU_Control ac1
	(
		.ALUOp(ALUOp),
		.Funct({Instruction[30], Instruction[14:12]}),
		.Operation(Operation)
	);
	
	mux_64 ALUIn_mux
	(
		.a(ReadData2),
		.b(imm_data),
		.sel(ALUSrc),
		.dataout(ALUIn)
	);
	
	Adder a2
	(
		.a(PC_Out),
		.b({imm_data[62:0],1'b0}),
		.out(out2)
	);
	
	mux_64 conditional_mux
	(
		.a(out1),
		.b(out2),
		.sel(Branch & branch_op),
		.dataout(PC_In)
	);
	
	ALU_64_bit alu
	(
		.a(ReadData1),
		.b(ALUIn),
		.ALUOp(Operation),
		.Result(Result),
		.zero(zero),
		.Less(Less)
	);
	
	Branch_Control b1
	(
		.Funct({Instruction[30], Instruction[14:12]}),
		.zero(zero),
		.Less(Less),
	    .branch_op(branch_op)
	);
	
	Data_Memory dm1
	(
		.Mem_Addr(Result),
		.Write_Data(ReadData2),
		.clk(clk),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.Read_Data(Read_Data)
	);
	
	mux_64 DataMem_mux
	(
		.b(Read_Data),
		.a(Result),
		.sel(MemtoReg),
		.dataout(WriteData)
	);
	
endmodule
	
	