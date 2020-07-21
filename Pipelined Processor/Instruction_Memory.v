module Instruction_Memory
(
	input[63:0] Inst_Address,
	output reg[31:0] Instruction
);
	reg[7:0] instructions[159:0];

	initial
	begin

      

	//addi x11,x0,4  length of array
	instructions[0] = 8'h93;
	instructions[1] = 8'h05;
	instructions[2] = 8'h80;
	instructions[3] = 8'h00;
     
	//addi x6,x0,0   i
	instructions[4] = 8'h13;
	instructions[5] = 8'h03;
	instructions[6] = 8'h00;
	instructions[7] = 8'h00;
	
    //addi x7,x0,0   j
	instructions[8] = 8'h93;
	instructions[9] = 8'h03;
	instructions[10] = 8'h00;
	instructions[11] = 8'h00;
    
	//addi x5, x0, 0  base address of a
	instructions[12] = 8'h93;
	instructions[13] = 8'h02;
	instructions[14] = 8'h00;
	instructions[15] = 8'h00;
	
    //Loop1 : beq x6,x11,return
	instructions[16] = 8'h63;
	instructions[17] = 8'h08;
	instructions[18] = 8'hb3;
	instructions[19] = 8'h08;
	
    //addi x21,x0,0
	instructions[20] = 8'h93;
	instructions[21] = 8'h0a;
	instructions[22] = 8'h00;
	instructions[23] = 8'h00;
	
    //add x21,x21,x6
	instructions[24] = 8'hb3;
	instructions[25] = 8'h8a;
	instructions[26] = 8'h6a;
	instructions[27] = 8'h00;
	
    //add x21,x21,x6
	instructions[28] = 8'hb3;
	instructions[29] = 8'h8a;
	instructions[30] = 8'h6a;
	instructions[31] = 8'h00;
	
    //add x21,x21,x6
	instructions[32] = 8'hb3;
	instructions[33] = 8'h8a;
	instructions[34] = 8'h6a;
	instructions[35] = 8'h00;
	
    //add x21,x21,x6
	instructions[36] = 8'hb3;
	instructions[37] = 8'h8a;
	instructions[38] = 8'h6a;
	instructions[39] = 8'h00;
	
    //add x21,x21,x6
	instructions[40] = 8'hb3;
	instructions[41] = 8'h8a;
	instructions[42] = 8'h6a;
	instructions[43] = 8'h00;
	
    //add x21,x21,x6
	instructions[44] = 8'hb3;
	instructions[45] = 8'h8a;
	instructions[46] = 8'h6a;
	instructions[47] = 8'h00;
	
    //add x21,x21,x6
	instructions[48] = 8'hb3;
	instructions[49] = 8'h8a;
	instructions[50] = 8'h6a;
	instructions[51] = 8'h00;
	
	//add x21,x21,x6
	instructions[52] = 8'hb3;
	instructions[53] = 8'h8a;
	instructions[54] = 8'h6a;
	instructions[55] = 8'h00;
	
    //addi x6,x6,1     i = i + 1
	instructions[56] = 8'h13;
	instructions[57] = 8'h03;
	instructions[58] = 8'h13;
	instructions[59] = 8'h00;
	
    //addi x7,x0,0
	instructions[60] = 8'h93;
	instructions[61] = 8'h03;
	instructions[62] = 8'h00;
	instructions[63] = 8'h00;
	
    //addi x7,x6,0   j = i
	instructions[64] = 8'h93;
	instructions[65] = 8'h03;
	instructions[66] = 8'h03;
	instructions[67] = 8'h00;
	
    //Loop2 : beq x7,x11,Loop1
	instructions[68] = 8'he3;
	instructions[69] = 8'h86;
	instructions[70] = 8'hb3;
	instructions[71] = 8'hfc;
	
    //add x22,x22,x7
	instructions[72] = 8'h33;
	instructions[73] = 8'h0b;
	instructions[74] = 8'h7b;
	instructions[75] = 8'h00;
	
    //add x22,x22,x7
	instructions[76] = 8'h33;
	instructions[77] = 8'h0b;
	instructions[78] = 8'h7b;
	instructions[79] = 8'h00;
	
    //add x22,x22,x7
	instructions[80] = 8'h33;
	instructions[81] = 8'h0b;
	instructions[82] = 8'h7b;
	instructions[83] = 8'h00;
	
    //add x22,x22,x7
	instructions[84] = 8'h33;
	instructions[85] = 8'h0b;
	instructions[86] = 8'h7b;
	instructions[87] = 8'h00;
	
    //add x22,x22,x7
	instructions[88] = 8'h33;
	instructions[89] = 8'h0b;
	instructions[90] = 8'h7b;
	instructions[91] = 8'h00;
	
    //add x22,x22,x7
	instructions[92] = 8'h33;
	instructions[93] = 8'h0b;
	instructions[94] = 8'h7b;
	instructions[95] = 8'h00;
	
    //add x22,x22,x7
	instructions[96] = 8'h33;
	instructions[97] = 8'h0b;
	instructions[98] = 8'h7b;
	instructions[99] = 8'h00;
	
    //add x22,x22,x7
	instructions[100] = 8'h33;
	instructions[101] = 8'h0b;
	instructions[102] = 8'h7b;
	instructions[103] = 8'h00;
	
    //addi x7,x7,1
	instructions[104] = 8'h93;
	instructions[105] = 8'h83;
	instructions[106] = 8'h13;
	instructions[107] = 8'h00;
	
    //add x14,x21,x5     address of a[i]
	instructions[108] = 8'h33;
	instructions[109] = 8'h87;
	instructions[110] = 8'h5a;
	instructions[111] = 8'h00;
	
    //add x15,x22,x5     address of a[j]
	instructions[112] = 8'hb3;
	instructions[113] = 8'h07;
	instructions[114] = 8'h5b;
	instructions[115] = 8'h00;
	
    //addi x22,x0,0
	instructions[116] = 8'h13;
	instructions[117] = 8'h0b;
	instructions[118] = 8'h00;
	instructions[119] = 8'h00;
	
    //ld x16,0(x14)  x16 = a[i]
	instructions[120] = 8'h03;
	instructions[121] = 8'h38;
	instructions[122] = 8'h07;
	instructions[123] = 8'h00;
	
    //ld x17,0(x15) x17 = a[j]
	instructions[124] = 8'h83;
	instructions[125] = 8'hb8;
	instructions[126] = 8'h07;
	instructions[127] = 8'h00;
	
    //beq x16,x17,Loop2  (a[i] == a[j])
	instructions[128] = 8'he3;
	instructions[129] = 8'h02;
	instructions[130] = 8'h18;
	instructions[131] = 8'hfd;
	
    //blt x16,x17,Loop2   (a[i] < a[j])
	instructions[132] = 8'he3;
	instructions[133] = 8'h40;
	instructions[134] = 8'h18;
	instructions[135] = 8'hfd;
	
    //add x18,x0,x16
	instructions[136] = 8'h33;
	instructions[137] = 8'h09;
	instructions[138] = 8'h00;
	instructions[139] = 8'h01;
	
    //add x16,x0,x17
	instructions[140] = 8'h33;
	instructions[141] = 8'h08;
	instructions[142] = 8'h10;
	instructions[143] = 8'h01;
	
    //sd x16, 0(x14)
	instructions[144] = 8'h23;
	instructions[145] = 8'h30;
	instructions[146] = 8'h07;
	instructions[147] = 8'h01;
	
	//add x17,x0,x18
	instructions[148] = 8'hb3;
	instructions[149] = 8'h08;
	instructions[150] = 8'h20;
	instructions[151] = 8'h01;
	
    //sd x17,0(x15)
	instructions[152] = 8'h23;
	instructions[153] = 8'hb0;
	instructions[154] = 8'h17;
	instructions[155] = 8'h01;
	
    //beq x0,x0,Loop2
	instructions[156] = 8'he3;
	instructions[157] = 8'h04;
	instructions[158] = 8'h00;
	instructions[159] = 8'hfa;

	


		

		

	end
	
	always @ (Inst_Address)
	begin
		Instruction = {instructions[Inst_Address+3], 
		               instructions[Inst_Address+2], 
		               instructions[Inst_Address+1], 
					   instructions[Inst_Address]};
	end
	
endmodule
	
	