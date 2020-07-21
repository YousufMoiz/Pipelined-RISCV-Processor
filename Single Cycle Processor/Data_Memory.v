module Data_Memory
(
	input[63:0] Mem_Addr, Write_Data,
	input clk, MemRead, MemWrite,
	output reg[63:0] Read_Data

);


	reg [7:0] data [63:0];
	
	initial
	begin
		data[0] = 8'd100;
		data[1] = 8'd0;
		data[2] = 8'd0;
		data[3] = 8'd0;
		data[4] = 8'd0;
		data[5] = 8'd0;
		data[6] = 8'd0;
		data[7] = 8'd0;
		
		data[8] = 8'd120;
		data[9] = 8'd0;
		data[10] = 8'd0;
		data[11] = 8'd0;
		data[12] = 8'd0;
		data[13] = 8'd0;
		data[14] = 8'd0;
		data[15] = 8'd0;
		
		data[16] = 8'd125;
		data[17] = 8'd0;
		data[18] = 8'd0;
		data[19] = 8'd0;
		data[20] = 8'd0;
		data[21] = 8'd0;
		data[22] = 8'd0;
		data[23] = 8'd0;
		
		data[24] = 8'd10;
		data[25] = 8'd0;
		data[26] = 8'd0;
		data[27] = 8'd0;
		data[28] = 8'd0;
		data[29] = 8'd0;
		data[30] = 8'd0;
		data[31] = 8'd0;
		
		data[32] = 8'd1;
		data[33] = 8'd0;
		data[34] = 8'd0;
		data[35] = 8'd0;
		data[36] = 8'd0;
		data[37] = 8'd0;
		data[38] = 8'd0;
		data[39] = 8'd0;
		
		data[40] = 8'd33;
		data[41] = 8'd0;
		data[42] = 8'd0;
		data[43] = 8'd0;
		data[44] = 8'd0;
		data[45] = 8'd0;
		data[46] = 8'd0;
		data[47] = 8'd0;
		
		data[48] = 8'd19;
		data[49] = 8'd0;
		data[50] = 8'd0;
		data[51] = 8'd0;
		data[52] = 8'd0;
		data[53] = 8'd0;
		data[54] = 8'd0;
		data[55] = 8'd0;
		
		data[56] = 8'd65;
		data[57] = 8'd0;
		data[58] = 8'd0;
		data[59] = 8'd0;
		data[60] = 8'd0;
		data[61] = 8'd0;
		data[62] = 8'd0;
		data[63] = 8'd0;
	end
	
	always @ (posedge clk)
	begin
		if (MemWrite)
		begin
			data[Mem_Addr] = Write_Data[7:0];
			data[Mem_Addr+1] = Write_Data[15:8];
			data[Mem_Addr+2] = Write_Data[23:16];
			data[Mem_Addr+3] = Write_Data[31:24];
			data[Mem_Addr+4] = Write_Data[39:32];
			data[Mem_Addr+5] = Write_Data[47:40];
			data[Mem_Addr+6] = Write_Data[55:48];
			data[Mem_Addr+7] = Write_Data[63:56];
		end
	end
	
	always @(Mem_Addr or MemRead)
	begin
		if (MemRead)
		begin
			Read_Data = {data[Mem_Addr+7], 
			             data[Mem_Addr+6], 
						 data[Mem_Addr+5], 
						 data[Mem_Addr+4], 
			             data[Mem_Addr+3], 
						 data[Mem_Addr+2], 
						 data[Mem_Addr+1], 
						 data[Mem_Addr]};
		end
		else
			Read_Data = 64'd0;
	end
endmodule
			