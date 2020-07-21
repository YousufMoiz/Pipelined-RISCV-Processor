module Instruction_Memory
(
	input[63:0] Inst_Address,
	output reg[31:0] Instruction
);
	reg[7:0] instructions[159:0];

	initial
	begin
	/**
	
	//addi x10, x0, 0  x10 = base address of array
		instructions[0] = 8'h13;
		instructions[1] = 8'h05;
		instructions[2] = 8'h00;
		instructions[3] = 8'h00;
	// addi x11,x0,8  x11 = length of array
		instructions[4] = 8'h93;
		instructions[5] = 8'h05;
		instructions[6] = 8'h80;
		instructions[7] = 8'h00;
   //bubble : beq x11,x0,return
		instructions[8] = 8'h63;
		instructions[9] = 8'h8a;
		instructions[10] = 8'h05;
		instructions[11] = 8'h08;
   // addi x28,x0,0   int i = 0
		instructions[12] = 8'h13;
		instructions[13] = 8'h0e;
		instructions[14] = 8'h00;
		instructions[15] = 8'h00;
  //FirstLoop : beq x28, x11,return  
		instructions[16] = 8'h63;
		instructions[17] = 8'h06;
		instructions[18] = 8'hbe;
		instructions[19] = 8'h08; 
	// add x29,x28,x0  int j = i
		instructions[20] = 8'hb3;
		instructions[21] = 8'h0e;
		instructions[22] = 8'h0e;
		instructions[23] = 8'h00;
	//SecondLoop: beq x29,x11,l2
		instructions[24] = 8'h63;
		instructions[25] = 8'h8e;
		instructions[26] = 8'hbe;
		instructions[27] = 8'h06;
	//add x30, x28,x28  x30 = i + i
		instructions[28] = 8'h33;
		instructions[29] = 8'h0f;
		instructions[30] = 8'hce;
		instructions[31] = 8'h01;
	//add x30,x30,x28  x30 = x30 + i
		instructions[32] = 8'h33;
		instructions[33] = 8'h0f;
		instructions[34] = 8'hcf;
		instructions[35] = 8'h01;
	//add x30,x30,x28
		instructions[36] = 8'h33;
		instructions[37] = 8'h0f;
		instructions[38] = 8'hcf;
		instructions[39] = 8'h01;	
	//add x30,x30,x28
		instructions[40] = 8'h33;
		instructions[41] = 8'h0f;
		instructions[42] = 8'hcf;
		instructions[43] = 8'h01;
	//add x30,x30,x28
		instructions[44] = 8'h33;
		instructions[45] = 8'h0f;
		instructions[46] = 8'hcf;
		instructions[47] = 8'h01;
	//add x30,x30,x28
		instructions[48] = 8'h33;
		instructions[49] = 8'h0f;
		instructions[50] = 8'hcf;
		instructions[51] = 8'h01;
	//add x30,x30,x28
		instructions[52] = 8'h33;
		instructions[53] = 8'h0f;
		instructions[54] = 8'hcf;
		instructions[55] = 8'h01;
	//add x30,x30,x10 x30 = address of a[i]
	    instructions[56] = 8'h33;
		instructions[57] = 8'h0f;
		instructions[58] = 8'haf;
		instructions[59] = 8'h00;
	//ld x21,0(x30)  x21 = a[i]
	    instructions[60] = 8'h83;
		instructions[61] = 8'h3a;
		instructions[62] = 8'h0f;
		instructions[63] = 8'h00;
	//add x31,x29,x29   x31 = j + j
	    instructions[64] = 8'hb3;
		instructions[65] = 8'h8f;
		instructions[66] = 8'hde;
		instructions[67] = 8'h01;
	//add x31,x31,x29   x31 = x31 + j
	    instructions[68] = 8'hb3;
		instructions[69] = 8'h8f;
		instructions[70] = 8'hdf;
		instructions[71] = 8'h01;
	//add x31,x31,x29
	    instructions[72] = 8'hb3;
		instructions[73] = 8'h8f;
		instructions[74] = 8'hdf;
		instructions[75] = 8'h01;
	//add x31,x31,x29
	    instructions[76] = 8'hb3;
		instructions[77] = 8'h8f;
		instructions[78] = 8'hdf;
		instructions[79] = 8'h01;
	//add x31,x31,x29
	    instructions[80] = 8'hb3;
		instructions[81] = 8'h8f;
		instructions[82] = 8'hdf;
		instructions[83] = 8'h01;
	//add x31,x31,x29
	    instructions[84] = 8'hb3;
		instructions[85] = 8'h8f;
		instructions[86] = 8'hdf;
		instructions[87] = 8'h01;
	//add x31,x31,x29
	    instructions[88] = 8'hb3;
		instructions[89] = 8'h8f;
		instructions[90] = 8'hdf;
		instructions[91] = 8'h01;
	//add x31,x31,x10       x31 = address of a[j]
	    instructions[92] = 8'hb3;
		instructions[93] = 8'h8f;
		instructions[94] = 8'haf;
		instructions[95] = 8'h00;
	//ld x22,0(x31)       x22 = a[j]
	    instructions[96] = 8'h03;
		instructions[97] = 8'hbb;
		instructions[98] = 8'h0f;
		instructions[99] = 8'h00;
		
	//blt x21,x22,l1
	    instructions[100] = 8'h63;
		instructions[101] = 8'hc8;
		instructions[102] = 8'h6a;
		instructions[103] = 8'h01;
		
	//addi x29,x29,1   j = j + 1
	    instructions[104] = 8'h93;
		instructions[105] = 8'h8e;
		instructions[106] = 8'h1e;
		instructions[107] = 8'h00;
	//blt x29,x11,SecondLoop
	    instructions[108] = 8'he3;
		instructions[109] = 8'hc6;
		instructions[110] = 8'hbe;
		instructions[111] = 8'hfa;
	//beq x29,x11,l2
	    instructions[112] = 8'h63;
		instructions[113] = 8'h82;
		instructions[114] = 8'hbe;
		instructions[115] = 8'h02;
	//l1: add x5,x21,x0
	    instructions[116] = 8'hb3;
		instructions[117] = 8'h82;
		instructions[118] = 8'h0a;
		instructions[119] = 8'h00;
	//add x21,x22,x0
	    instructions[120] = 8'hb3;
		instructions[121] = 8'h0a;
		instructions[122] = 8'h0b;
		instructions[123] = 8'h00;
	//add x22,x5,x0
	    instructions[124] = 8'h33;
		instructions[125] = 8'h8b;
		instructions[126] = 8'h02;
		instructions[127] = 8'h00;
	//sd x21,0(x30)
	    instructions[128] = 8'h23;
		instructions[129] = 8'h30;
		instructions[130] = 8'h5f;
		instructions[131] = 8'h01;
	//sd x22,0(x31)
	    instructions[132] = 8'h23;
		instructions[133] = 8'hb0;
		instructions[134] = 8'h6f;
		instructions[135] = 8'h01;
	//addi x29,x29,1
	    instructions[136] = 8'h93;
		instructions[137] = 8'h8e;
		instructions[138] = 8'h1e;
		instructions[139] = 8'h00;
	//blt x29,x11,SecondLoop
	    instructions[140] = 8'he3;
		instructions[141] = 8'hc6;
		instructions[142] = 8'hbe;
		instructions[143] = 8'hf8;
	//beq x29,x11,l2
	    instructions[144] = 8'h63;
		instructions[145] = 8'h82;
		instructions[146] = 8'hbe;
		instructions[147] = 8'h00;
	//l2: addi x28,x28,1
	    instructions[148] = 8'h13;
		instructions[149] = 8'h0e;
		instructions[150] = 8'h1e;
		instructions[151] = 8'h00;
	//blt x28,x11,FirstLoop
	    instructions[152] = 8'he3;
		instructions[153] = 8'h4c;
		instructions[154] = 8'hbe;
		instructions[155] = 8'hf6;
	//return: addi x0,x0,0
	    instructions[156] = 8'h13;
		instructions[157] = 8'h00;
		instructions[158] = 8'h00;
		instructions[159] = 8'h00;  **/
		
		//00400593
	instructions[0] = 8'h93;
	instructions[1] = 8'h05;
	instructions[2] = 8'h80;
	instructions[3] = 8'h00;
//00000313
	instructions[4] = 8'h13;
	instructions[5] = 8'h03;
	instructions[6] = 8'h00;
	instructions[7] = 8'h00;
//00000393
	instructions[8] = 8'h93;
	instructions[9] = 8'h03;
	instructions[10] = 8'h00;
	instructions[11] = 8'h00;
//00000293
	instructions[12] = 8'h93;
	instructions[13] = 8'h02;
	instructions[14] = 8'h00;
	instructions[15] = 8'h00;
//08b30863
	instructions[16] = 8'h63;
	instructions[17] = 8'h08;
	instructions[18] = 8'hb3;
	instructions[19] = 8'h08;
//00000a93
	instructions[20] = 8'h93;
	instructions[21] = 8'h0a;
	instructions[22] = 8'h00;
	instructions[23] = 8'h00;
//006a8ab3
	instructions[24] = 8'hb3;
	instructions[25] = 8'h8a;
	instructions[26] = 8'h6a;
	instructions[27] = 8'h00;
//006a8ab3
	instructions[28] = 8'hb3;
	instructions[29] = 8'h8a;
	instructions[30] = 8'h6a;
	instructions[31] = 8'h00;
//006a8ab3
	instructions[32] = 8'hb3;
	instructions[33] = 8'h8a;
	instructions[34] = 8'h6a;
	instructions[35] = 8'h00;
//006a8ab3
	instructions[36] = 8'hb3;
	instructions[37] = 8'h8a;
	instructions[38] = 8'h6a;
	instructions[39] = 8'h00;
//006a8ab3
	instructions[40] = 8'hb3;
	instructions[41] = 8'h8a;
	instructions[42] = 8'h6a;
	instructions[43] = 8'h00;
//006a8ab3
	instructions[44] = 8'hb3;
	instructions[45] = 8'h8a;
	instructions[46] = 8'h6a;
	instructions[47] = 8'h00;
//006a8ab3
	instructions[48] = 8'hb3;
	instructions[49] = 8'h8a;
	instructions[50] = 8'h6a;
	instructions[51] = 8'h00;
//006a8ab3
	instructions[52] = 8'hb3;
	instructions[53] = 8'h8a;
	instructions[54] = 8'h6a;
	instructions[55] = 8'h00;
//00130313	
	instructions[56] = 8'h13;
	instructions[57] = 8'h03;
	instructions[58] = 8'h13;
	instructions[59] = 8'h00;
//00000393
	instructions[60] = 8'h93;
	instructions[61] = 8'h03;
	instructions[62] = 8'h00;
	instructions[63] = 8'h00;
//00030393
	instructions[64] = 8'h93;
	instructions[65] = 8'h03;
	instructions[66] = 8'h03;
	instructions[67] = 8'h00;
//fcb386e3
	instructions[68] = 8'he3;
	instructions[69] = 8'h86;
	instructions[70] = 8'hb3;
	instructions[71] = 8'hfc;
//007b0b33
	instructions[72] = 8'h33;
	instructions[73] = 8'h0b;
	instructions[74] = 8'h7b;
	instructions[75] = 8'h00;
//007b0b33
	instructions[76] = 8'h33;
	instructions[77] = 8'h0b;
	instructions[78] = 8'h7b;
	instructions[79] = 8'h00;
//007b0b33
	instructions[80] = 8'h33;
	instructions[81] = 8'h0b;
	instructions[82] = 8'h7b;
	instructions[83] = 8'h00;
//007b0b33
	instructions[84] = 8'h33;
	instructions[85] = 8'h0b;
	instructions[86] = 8'h7b;
	instructions[87] = 8'h00;
//007b0b33
	instructions[88] = 8'h33;
	instructions[89] = 8'h0b;
	instructions[90] = 8'h7b;
	instructions[91] = 8'h00;
//007b0b33
	instructions[92] = 8'h33;
	instructions[93] = 8'h0b;
	instructions[94] = 8'h7b;
	instructions[95] = 8'h00;
//007b0b33
	instructions[96] = 8'h33;
	instructions[97] = 8'h0b;
	instructions[98] = 8'h7b;
	instructions[99] = 8'h00;
//007b0b33
	instructions[100] = 8'h33;
	instructions[101] = 8'h0b;
	instructions[102] = 8'h7b;
	instructions[103] = 8'h00;
//00138393
	instructions[104] = 8'h93;
	instructions[105] = 8'h83;
	instructions[106] = 8'h13;
	instructions[107] = 8'h00;
//005a8733
	instructions[108] = 8'h33;
	instructions[109] = 8'h87;
	instructions[110] = 8'h5a;
	instructions[111] = 8'h00;
//005b07b3
	instructions[112] = 8'hb3;
	instructions[113] = 8'h07;
	instructions[114] = 8'h5b;
	instructions[115] = 8'h00;
//00000b13
	instructions[116] = 8'h13;
	instructions[117] = 8'h0b;
	instructions[118] = 8'h00;
	instructions[119] = 8'h00;
//00073803
	instructions[120] = 8'h03;
	instructions[121] = 8'h38;
	instructions[122] = 8'h07;
	instructions[123] = 8'h00;
//0007b883
	instructions[124] = 8'h83;
	instructions[125] = 8'hb8;
	instructions[126] = 8'h07;
	instructions[127] = 8'h00;
//fd1802e3
	instructions[128] = 8'he3;
	instructions[129] = 8'h02;
	instructions[130] = 8'h18;
	instructions[131] = 8'hfd;
//fd1840e3
	instructions[132] = 8'he3;
	instructions[133] = 8'h40;
	instructions[134] = 8'h18;
	instructions[135] = 8'hfd;
//01000933
	instructions[136] = 8'h33;
	instructions[137] = 8'h09;
	instructions[138] = 8'h00;
	instructions[139] = 8'h01;
//01100833
	instructions[140] = 8'h33;
	instructions[141] = 8'h08;
	instructions[142] = 8'h10;
	instructions[143] = 8'h01;
//01073023
	instructions[144] = 8'h23;
	instructions[145] = 8'h30;
	instructions[146] = 8'h07;
	instructions[147] = 8'h01;
//012008b3
	instructions[148] = 8'hb3;
	instructions[149] = 8'h08;
	instructions[150] = 8'h20;
	instructions[151] = 8'h01;
//0117b023
	instructions[152] = 8'h23;
	instructions[153] = 8'hb0;
	instructions[154] = 8'h17;
	instructions[155] = 8'h01;
//fa0004e3
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
	
	