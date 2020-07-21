module RISC_V_Processor
(
	input clk, reset
);
    wire[63:0] PC_In, PC_Out, out1, out2, imm_data, 
	wire[63:0] ReadData1, ReadData2, ALUIn, Result, 
	wire[63:0] Read_Data, WriteData, PC_Out1, PC_Out2, imm_data1;
	wire[63:0] out_1, Result_1, ReadData2_2, Read_Data_1, 
	wire[63:0] Result_2, ReadData1_1, ReadData2_1, 
	wire[63:0] ALUmuxouput1, ALUmuxoutput2;
	wire[31:0] Instruction, Instruction1;
	wire[6:0] opcode,funct7;
	wire[4:0] rd,rs1,rs2, rs1_1, rs2_1, rd_1, rd_2, rd_3;
	wire[2:0] funct3;
	wire Branch, MemRead, MemWrite, MemtoReg, 
	wire RegWrite, ALUSrc, zero, Less, branch_op, 
	wire Branch_1, MemRead_1, MemtoReg_1, MemWrite_1;
	wire ALUSrc_1, RegWrite_1, MemtoReg_2, MemWrite_2, 
	wire MemRead_2, RegWrite_2, Branch_2, RegWrite_3, 
	wire MemtoReg_3, branch_op1, PCWrite, if_id_write;
	wire control_mux_sel;
	wire[1:0] ALUOp, ALUOp_1, ForwardA, ForwardB;
	wire[3:0] Operation, Funct_1;
	wire[7:0] control_lines, control_mux_output;
	
	assign Branch = control_mux_output[7];
	assign MemRead = control_mux_output[6];
	assign MemWrite = control_mux_output[4];
	assign MemtoReg = control_mux_output[5];
	assign RegWrite = control_mux_output[2];
	assign ALUSrc = control_mux_output[3];
	assign ALUOp = control_mux_output[1:0];
	
	
	Program_Counter pc1
	(
		.clk(clk),
		.reset(reset),
		.PCWrite(PCWrite),
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
	
	IF_ID_reg if_id
	(
		.PC_Out(PC_Out),
		.Instruction(Instruction),
		.clk(clk),
		.reset(reset),
		.if_id_flush(Branch_2 & branch_op1),
		.if_id_write(if_id_write),
		.PC_Out1(PC_Out1),
		.Instruction1(Instruction1)
	);
	
	inst_parser ip1
	(
		.instruction(Instruction1),
		.opcode(opcode),
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.funct3(funct3),
		.funct7(funct7)
	);
	
	imm_data_extractor id1
	(
		.instruction(Instruction1),
		.imm_data(imm_data)
	);
	
	registerFile rf1
	(
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd_3),
		.clk(clk),
		.reset(reset),
		.WriteData(WriteData),
		.RegWrite(RegWrite_3),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
	Control_Unit cu1
	(
		.opcode(opcode),
		.control_lines(control_lines)
	);
	
	Control_mux c_mux
	(
		.a(control_lines),
		.b(8'b00000000),
		.control_mux_sel(control_mux_sel),
		.control_mux_output(control_mux_output)
	);
	
	Hazard_Detection hd
	(
		.id_ex_memread(MemRead_1),
		.id_ex_rd(rd_1),
		.if_id_rs1(rs1),
		.if_id_rs2(rs2),
		.PCWrite(PCWrite),
		.if_id_write(if_id_write),
		.control_mux_sel(control_mux_sel)
	);
	
	ID_EX_reg id_ex
	(
		.PC_Out1(PC_Out1),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2),
		.imm_data(imm_data),
		.Funct({Instruction1[30], Instruction1[14:12]}),
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.RegWrite(RegWrite),
		.Branch(Branch),
		.ALUSrc(ALUSrc),
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.MemtoReg(MemtoReg),
		.clk(clk),
		.reset(reset),
		.id_ex_flush(Branch_2 & branch_op1),
		.ALUOp(ALUOp),
		.PC_Out2(PC_Out2),
		.ReadData1_1(ReadData1_1),
		.ReadData2_1(ReadData2_1),
		.imm_data1(imm_data1),
		.Funct_1(Funct_1),
		.rs1_1(rs1_1),
		.rs2_1(rs2_1),
		.rd_1(rd_1),
		.RegWrite_1(RegWrite_1),
		.Branch_1(Branch_1),
		.ALUSrc_1(ALUSrc_1),
		.MemRead_1(MemRead_1),
		.MemWrite_1(MemWrite_1),
		.MemtoReg_1(MemtoReg_1),
		.ALUOp_1(ALUOp_1)
	);
	
	ALU_Control ac1
	(
		.ALUOp(ALUOp_1),
		.Funct(Funct_1),
		.Operation(Operation)
	);
	
	mux_64 ALUIn_mux
	(
		.a(ALUmuxoutput2),
		.b(imm_data1),
		.sel(ALUSrc_1),
		.dataout(ALUIn)
	);
	
	mux_64_TRIINPUT ALUmux_1
	(
		.a(ReadData1_1),
		.b(WriteData),
		.c(Result_1),
		.sel(ForwardA),
		.dataout(ALUmuxouput1)
	);
	
	mux_64_TRIINPUT ALUmux_2
	(
		.a(ReadData2_1),
		.b(WriteData),
		.c(Result_1),
		.sel(ForwardB),
		.dataout(ALUmuxoutput2)
	);
	
	
	Adder a2
	(
		.a(PC_Out2),
		.b({imm_data1[62:0],1'b0}),
		.out(out2)
	);
	
	mux_64 conditional_mux
	(
		.a(out1),
		.b(out_1),
		.sel(Branch_2 & branch_op1),
		.dataout(PC_In)
	);
	
	ALU_64_bit alu
	(
		.a(ALUmuxouput1),
		.b(ALUIn),
		.ALUOp(Operation),
		.Result(Result),
		.zero(zero),
		.Less(Less)
	);
	
	Forwarding_Unit f1
	(
		.id_ex_rs1(rs1_1),
		.id_ex_rs2(rs2_1),
		.ex_mem_rd(rd_2),
		.mem_wb_rd(rd_3),
		.ex_mem_regwrite(RegWrite_2),
		.mem_wb_regwrite(RegWrite_3),
		.ForwardA(ForwardA),
		.ForwardB(ForwardB)
	);
	
	
	EX_MEM_reg ex_mem
	(
		.out(out2),
		.Result(Result),
		.ReadData2_1(ALUmuxoutput2),
		.rd_1(rd_1),
		.branch_op(branch_op),
		.MemtoReg_1(MemtoReg_1),
		.MemWrite_1(MemWrite_1),
		.MemRead_1(MemRead_1),
		.RegWrite_1(RegWrite_1),
		.Branch_1(Branch_1),
		.clk(clk),
		.reset(reset),
		.ex_mem_flush(Branch_2 & branch_op1),
		.out_1(out_1),
		.Result_1(Result_1),
		.ReadData2_2(ReadData2_2),
		.rd_2(rd_2),
		.MemtoReg_2(MemtoReg_2),
		.MemWrite_2(MemWrite_2),
		.MemRead_2(MemRead_2),
		.RegWrite_2(RegWrite_2),
        .branch_op1(branch_op1),
		.Branch_2(Branch_2)
	
	);
	
	
	Branch_Control b1
	(
		.Funct(Funct_1),
		.zero(zero),
		.Less(Less),
	    .branch_op(branch_op)
	);
	
	Data_Memory dm1
	(
		.Mem_Addr(Result_1),
		.Write_Data(ReadData2_2),
		.clk(clk),
		.MemWrite(MemWrite_2),
		.MemRead(MemRead_2),
		.Read_Data(Read_Data)
	);
	
	MEM_WB_reg mem_wb
	(
		.Read_Data(Read_Data),
		.Result_1(Result_1),
		.RegWrite_2(RegWrite_2),
		.MemtoReg_2(MemtoReg_2),
		.clk(clk),
		.reset(reset),
		.rd_2(rd_2),
		.Read_Data_1(Read_Data_1),
		.Result_2(Result_2),
		.RegWrite_3(RegWrite_3),
		.MemtoReg_3(MemtoReg_3),
		.rd_3(rd_3)
	);
	
	mux_64 DataMem_mux
	(
		.b(Read_Data_1),
		.a(Result_2),
		.sel(MemtoReg_3),
		.dataout(WriteData)
	);
	
endmodule
	
	