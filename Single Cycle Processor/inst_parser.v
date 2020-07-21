module inst_parser(

input[31:0] instruction,
output reg[6:0] opcode, funct7,
output reg[4:0] rs1, rs2, rd,
output reg[2:0] funct3
);


	always @(instruction)
		begin
		funct7 = instruction[31:25];
		rs2 = instruction[24:20];
		rs1 = instruction[19:15];
		funct3  = instruction[14:12];
		rd = instruction[11:7];
		opcode = instruction[6:0];
		end
		

endmodule

