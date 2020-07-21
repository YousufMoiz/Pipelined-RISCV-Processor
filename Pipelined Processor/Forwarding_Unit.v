module Forwarding_Unit
(
	input[4:0] id_ex_rs1, id_ex_rs2, ex_mem_rd, mem_wb_rd,
	input ex_mem_regwrite, mem_wb_regwrite,
    output reg[1:0] ForwardA, ForwardB
	
);
    initial
	begin
		ForwardA = 2'b00;
		ForwardB = 2'b00;
	end
	
	
	always @ (*)
	begin
		if (ex_mem_regwrite && (ex_mem_rd != 5'b0) && 
		   (ex_mem_rd == id_ex_rs1))
			ForwardA <= 2'b10;
		else if (mem_wb_regwrite && (mem_wb_rd != 5'b0) && 
		         !(ex_mem_regwrite && (ex_mem_rd != 5'b0)
				 && (ex_mem_rd == id_ex_rs1)) 
				 && (mem_wb_rd == id_ex_rs1))
			ForwardA <= 2'b01;
		else
			ForwardA <= 2'b00;
			
		if (ex_mem_regwrite && (ex_mem_rd != 5'b0) && 
		   (ex_mem_rd == id_ex_rs2))
			ForwardB <= 2'b10;
		else if (mem_wb_regwrite && (mem_wb_rd != 5'b0) && 
		       !(ex_mem_regwrite && (ex_mem_rd != 5'b0) 
			   && (ex_mem_rd == id_ex_rs2)) 
			   && (mem_wb_rd == id_ex_rs2))
			ForwardB <= 2'b01;
		else
			ForwardB <= 2'b00;
	end
endmodule

