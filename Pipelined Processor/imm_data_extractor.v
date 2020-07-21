module imm_data_extractor(

input[31:0] instruction,
output reg[63:0] imm_data
);

  reg[51:0] sign_ext;

	always @(instruction)
	begin
	sign_ext = {52{instruction[31]}};
    if(instruction[6:0] == 7'b0010011 || instruction[6:0] == 7'b0000011)   //I-Type
	  imm_data = {sign_ext, instruction[31:20]};
	else if(instruction[6:0] == 7'b1100011)      //SB-Type
	  imm_data = {sign_ext, instruction[31], instruction[7], instruction[30:25],
             	  instruction[11:8]};
	else
	  imm_data = {sign_ext, instruction[31:25], instruction[11:7]};    //S-Type
	end
		
endmodule