module registerFile
(
    input [4:0] rs1, rs2, rd,
	input [63:0] WriteData,
	input clk, reset, RegWrite,
	output reg[63:0] ReadData1, ReadData2
	
);

    reg [63:0] registers [31:0];
	
	initial 
	begin
		ReadData1 = {64{1'b0}};
		ReadData2 = {64{1'b0}};
		registers[0] = 64'd0;
		registers[1] = 64'd0;
		registers[2] = 64'd0;
		registers[3] = 64'd0;
		registers[4] = 64'd0;
		registers[5] = 64'd0;
		registers[6] = 64'd0;
		registers[7] = 64'd0;
		registers[8] = 64'd0;
		registers[9] = 64'd0;
		registers[10] = 64'd0;
		registers[11] = 64'd0;
		registers[12] = 64'd0;
		registers[13] = 64'd0;
		registers[14] = 64'd0;
		registers[15] = 64'd0;
		registers[16] = 64'd0;
		registers[17] = 64'd0;
		registers[18] = 64'd0;
		registers[19] = 64'd0;
		registers[20] = 64'd0;
		registers[21] = 64'd0;
		registers[22] = 64'd0;
		registers[23] = 64'd0;
		registers[24] = 64'd0;
		registers[25] = 64'd0;
		registers[26] = 64'd0;
		registers[27] = 64'd0;
		registers[28] = 64'd0;
		registers[29] = 64'd0;
		registers[30] = 64'd0;
		registers[31] = 64'd0;
	end
	
	always @(posedge clk)
	begin
		if (RegWrite)
			registers[rd] = WriteData;
		if (reset)
			begin
				ReadData1 = {64{1'b0}};
				ReadData2 = {64{1'b0}};
			end
	end
	
	always @(rs1 or rs2 or reset or registers)
	begin
		if (reset)
			begin
				ReadData1 = {64{1'b0}};
				ReadData2 = {64{1'b0}};
			end
		else
		begin
			ReadData1 = registers[rs1];
			ReadData2 = registers[rs2];
		end
		
	end
	initial
	$monitor("register[rd] = %d", registers[rd]);
	
endmodule

				