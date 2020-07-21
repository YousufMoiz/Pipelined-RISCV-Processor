module ALU_64_bit(

input[63:0] a,
input[63:0] b, 
input[3:0] ALUOp,
output reg[63:0] Result, 
output reg zero,
output reg Less
);

	always @(a or b or ALUOp)
	begin 
		case (ALUOp)
		4'b0000: 
		     Result = a & b;
		4'b0001: 
			Result = a | b;
		4'b0010:
			Result = a + b;
		4'b0110:
			Result = a - b;
		endcase
		zero <= Result ? 64'b0 : 64'b1;
		Less = Result[63];
		
	end
	
endmodule
			
			