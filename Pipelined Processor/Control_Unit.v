module Control_Unit
(
	input[6:0] opcode,
	output reg[7:0] control_lines
);
reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
reg[1:0] ALUOp;
		initial
		begin
			Branch = 1'b0;
			MemRead = 1'b0;
			MemtoReg = 1'b0;
			MemWrite = 1'b0;
			ALUSrc = 1'b0;
			RegWrite = 1'b0;
			ALUOp = 2'b00;
			control_lines = {Branch, MemRead, MemtoReg, 
			            MemWrite, ALUSrc, RegWrite, ALUOp};
		end
		
		always @(opcode)
		begin
			case (opcode)
			7'b0110011:
				begin
					Branch = 1'b0;
					MemRead = 1'b0;
					MemtoReg = 1'b0;
					MemWrite = 1'b0;
					ALUSrc = 1'b0;
					RegWrite = 1'b1;
					ALUOp = 2'b10;				
				end
			7'b0000011: 
				begin
					Branch = 1'b0;
					MemRead = 1'b1;
					MemtoReg = 1'b1;
					MemWrite = 1'b0;
					ALUSrc = 1'b1;
					RegWrite = 1'b1;
					ALUOp = 2'b00;
				end
		    7'b0100011: 
				begin
					Branch = 1'b0;
					MemRead = 1'b0;
					MemtoReg = 1'bx;
					MemWrite = 1'b1;
					ALUSrc = 1'b1;
					RegWrite = 1'b0;
					ALUOp = 2'b00;
				end
			7'b1100011:
				 begin
					Branch = 1'b1;
					MemRead = 1'b0;
					MemtoReg = 1'bx;
					MemWrite = 1'b0;
					ALUSrc = 1'b0;
					RegWrite = 1'b0;
					ALUOp = 2'b01;
				end
			7'b0010011:
				begin
					Branch = 1'b0;
					MemRead = 1'b0;      //changed from 1 to 0
					MemtoReg = 1'b0;
					MemWrite = 1'b0;
					ALUSrc = 1'b1;
					RegWrite = 1'b1;
					ALUOp = 2'b00;
				end
			endcase
			control_lines = {Branch, MemRead, MemtoReg, 
			             MemWrite, ALUSrc, RegWrite, ALUOp};
		end
endmodule