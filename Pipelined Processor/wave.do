onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/reset
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/PC_In
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/PC_Out
add wave -noupdate -format Literal -radix hexadecimal /tb/RSVP/Instruction
add wave -noupdate -format Literal -radix hexadecimal /tb/RSVP/Instruction1
add wave -noupdate -format Logic /tb/RSVP/reset
add wave -noupdate -format Logic /tb/RSVP/clk
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rs1
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rs2
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rd
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rs1_1
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rs2_1
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rd_1
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rd_2
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/rd_3
add wave -noupdate -format Literal /tb/RSVP/opcode
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ReadData1
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ReadData2
add wave -noupdate -format Literal -radix decimal /tb/RSVP/imm_data
add wave -noupdate -format Literal -radix decimal /tb/RSVP/Result
add wave -noupdate -format Literal -radix decimal /tb/RSVP/WriteData
add wave -noupdate -format Literal -radix decimal /tb/RSVP/Read_Data
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ALUIn
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ALUmuxouput1
add wave -noupdate -format Literal /tb/RSVP/Operation
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/out1
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/out2
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/PC_Out1
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/PC_Out2
add wave -noupdate -format Literal -radix decimal /tb/RSVP/imm_data1
add wave -noupdate -format Literal -radix unsigned /tb/RSVP/out_1
add wave -noupdate -format Literal -radix decimal /tb/RSVP/Result_1
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ReadData2_2
add wave -noupdate -format Literal -radix decimal /tb/RSVP/Read_Data_1
add wave -noupdate -format Literal -radix decimal /tb/RSVP/Result_2
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ReadData1_1
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ReadData2_1
add wave -noupdate -format Literal -radix decimal /tb/RSVP/ALUmuxoutput2
add wave -noupdate -format Literal /tb/RSVP/funct7
add wave -noupdate -format Literal /tb/RSVP/funct3
add wave -noupdate -format Logic /tb/RSVP/Branch
add wave -noupdate -format Logic /tb/RSVP/MemRead
add wave -noupdate -format Logic /tb/RSVP/MemWrite
add wave -noupdate -format Logic /tb/RSVP/MemtoReg
add wave -noupdate -format Logic /tb/RSVP/RegWrite
add wave -noupdate -format Logic /tb/RSVP/ALUSrc
add wave -noupdate -format Logic /tb/RSVP/zero
add wave -noupdate -format Logic /tb/RSVP/Less
add wave -noupdate -format Logic /tb/RSVP/branch_op
add wave -noupdate -format Logic /tb/RSVP/Branch_1
add wave -noupdate -format Logic /tb/RSVP/MemRead_1
add wave -noupdate -format Logic /tb/RSVP/MemtoReg_1
add wave -noupdate -format Logic /tb/RSVP/MemWrite_1
add wave -noupdate -format Logic /tb/RSVP/ALUSrc_1
add wave -noupdate -format Logic /tb/RSVP/RegWrite_1
add wave -noupdate -format Logic /tb/RSVP/MemtoReg_2
add wave -noupdate -format Logic /tb/RSVP/MemWrite_2
add wave -noupdate -format Logic /tb/RSVP/MemRead_2
add wave -noupdate -format Logic /tb/RSVP/RegWrite_2
add wave -noupdate -format Logic /tb/RSVP/Branch_2
add wave -noupdate -format Logic /tb/RSVP/RegWrite_3
add wave -noupdate -format Logic /tb/RSVP/MemtoReg_3
add wave -noupdate -format Logic /tb/RSVP/branch_op1
add wave -noupdate -format Logic /tb/RSVP/PCWrite
add wave -noupdate -format Logic /tb/RSVP/if_id_write
add wave -noupdate -format Logic /tb/RSVP/control_mux_sel
add wave -noupdate -format Literal /tb/RSVP/ALUOp
add wave -noupdate -format Literal /tb/RSVP/ALUOp_1
add wave -noupdate -format Literal /tb/RSVP/ForwardA
add wave -noupdate -format Literal /tb/RSVP/ForwardB
add wave -noupdate -format Literal /tb/RSVP/Funct_1
add wave -noupdate -format Literal /tb/RSVP/control_lines
add wave -noupdate -format Literal /tb/RSVP/control_mux_output
add wave -noupdate -format Logic /tb/RSVP/pc1/clk
add wave -noupdate -format Logic /tb/RSVP/pc1/reset
add wave -noupdate -format Logic /tb/RSVP/pc1/PCWrite
add wave -noupdate -format Literal /tb/RSVP/pc1/PC_In
add wave -noupdate -format Literal /tb/RSVP/pc1/PC_Out
add wave -noupdate -format Literal /tb/RSVP/a1/a
add wave -noupdate -format Literal /tb/RSVP/a1/b
add wave -noupdate -format Literal /tb/RSVP/a1/out
add wave -noupdate -format Literal /tb/RSVP/im1/Inst_Address
add wave -noupdate -format Literal /tb/RSVP/im1/Instruction
add wave -noupdate -format Literal /tb/RSVP/if_id/PC_Out
add wave -noupdate -format Literal /tb/RSVP/if_id/Instruction
add wave -noupdate -format Logic /tb/RSVP/if_id/clk
add wave -noupdate -format Logic /tb/RSVP/if_id/reset
add wave -noupdate -format Logic /tb/RSVP/if_id/if_id_write
add wave -noupdate -format Logic /tb/RSVP/if_id/if_id_flush
add wave -noupdate -format Literal /tb/RSVP/if_id/PC_Out1
add wave -noupdate -format Literal /tb/RSVP/if_id/Instruction1
add wave -noupdate -format Literal /tb/RSVP/ip1/instruction
add wave -noupdate -format Literal /tb/RSVP/ip1/opcode
add wave -noupdate -format Literal /tb/RSVP/ip1/funct7
add wave -noupdate -format Literal /tb/RSVP/ip1/rs1
add wave -noupdate -format Literal /tb/RSVP/ip1/rs2
add wave -noupdate -format Literal /tb/RSVP/ip1/rd
add wave -noupdate -format Literal /tb/RSVP/ip1/funct3
add wave -noupdate -format Literal /tb/RSVP/id1/instruction
add wave -noupdate -format Literal /tb/RSVP/id1/imm_data
add wave -noupdate -format Literal /tb/RSVP/id1/sign_ext
add wave -noupdate -format Literal /tb/RSVP/rf1/rs1
add wave -noupdate -format Literal /tb/RSVP/rf1/rs2
add wave -noupdate -format Literal /tb/RSVP/rf1/rd
add wave -noupdate -format Literal /tb/RSVP/rf1/WriteData
add wave -noupdate -format Logic /tb/RSVP/rf1/clk
add wave -noupdate -format Logic /tb/RSVP/rf1/reset
add wave -noupdate -format Logic /tb/RSVP/rf1/RegWrite
add wave -noupdate -format Literal /tb/RSVP/rf1/ReadData1
add wave -noupdate -format Literal /tb/RSVP/rf1/ReadData2
add wave -noupdate -format Literal /tb/RSVP/cu1/opcode
add wave -noupdate -format Literal /tb/RSVP/cu1/control_lines
add wave -noupdate -format Logic /tb/RSVP/cu1/Branch
add wave -noupdate -format Logic /tb/RSVP/cu1/MemRead
add wave -noupdate -format Logic /tb/RSVP/cu1/MemtoReg
add wave -noupdate -format Logic /tb/RSVP/cu1/MemWrite
add wave -noupdate -format Logic /tb/RSVP/cu1/ALUSrc
add wave -noupdate -format Logic /tb/RSVP/cu1/RegWrite
add wave -noupdate -format Literal /tb/RSVP/cu1/ALUOp
add wave -noupdate -format Literal /tb/RSVP/c_mux/a
add wave -noupdate -format Literal /tb/RSVP/c_mux/b
add wave -noupdate -format Logic /tb/RSVP/c_mux/control_mux_sel
add wave -noupdate -format Literal /tb/RSVP/c_mux/control_mux_output
add wave -noupdate -format Logic /tb/RSVP/hd/id_ex_memread
add wave -noupdate -format Literal /tb/RSVP/hd/id_ex_rd
add wave -noupdate -format Literal /tb/RSVP/hd/if_id_rs1
add wave -noupdate -format Literal /tb/RSVP/hd/if_id_rs2
add wave -noupdate -format Logic /tb/RSVP/hd/PCWrite
add wave -noupdate -format Logic /tb/RSVP/hd/if_id_write
add wave -noupdate -format Logic /tb/RSVP/hd/control_mux_sel
add wave -noupdate -format Literal /tb/RSVP/id_ex/PC_Out1
add wave -noupdate -format Literal /tb/RSVP/id_ex/ReadData1
add wave -noupdate -format Literal /tb/RSVP/id_ex/ReadData2
add wave -noupdate -format Literal /tb/RSVP/id_ex/imm_data
add wave -noupdate -format Literal /tb/RSVP/id_ex/Funct
add wave -noupdate -format Literal /tb/RSVP/id_ex/rs1
add wave -noupdate -format Literal /tb/RSVP/id_ex/rs2
add wave -noupdate -format Literal /tb/RSVP/id_ex/rd
add wave -noupdate -format Logic /tb/RSVP/id_ex/RegWrite
add wave -noupdate -format Logic /tb/RSVP/id_ex/Branch
add wave -noupdate -format Logic /tb/RSVP/id_ex/ALUSrc
add wave -noupdate -format Logic /tb/RSVP/id_ex/MemRead
add wave -noupdate -format Logic /tb/RSVP/id_ex/MemWrite
add wave -noupdate -format Logic /tb/RSVP/id_ex/MemtoReg
add wave -noupdate -format Logic /tb/RSVP/id_ex/clk
add wave -noupdate -format Logic /tb/RSVP/id_ex/reset
add wave -noupdate -format Logic /tb/RSVP/id_ex/id_ex_flush
add wave -noupdate -format Literal /tb/RSVP/id_ex/ALUOp
add wave -noupdate -format Literal /tb/RSVP/id_ex/PC_Out2
add wave -noupdate -format Literal /tb/RSVP/id_ex/ReadData1_1
add wave -noupdate -format Literal /tb/RSVP/id_ex/ReadData2_1
add wave -noupdate -format Literal /tb/RSVP/id_ex/imm_data1
add wave -noupdate -format Literal /tb/RSVP/id_ex/Funct_1
add wave -noupdate -format Literal /tb/RSVP/id_ex/rs1_1
add wave -noupdate -format Literal /tb/RSVP/id_ex/rs2_1
add wave -noupdate -format Literal /tb/RSVP/id_ex/rd_1
add wave -noupdate -format Logic /tb/RSVP/id_ex/RegWrite_1
add wave -noupdate -format Logic /tb/RSVP/id_ex/Branch_1
add wave -noupdate -format Logic /tb/RSVP/id_ex/ALUSrc_1
add wave -noupdate -format Logic /tb/RSVP/id_ex/MemRead_1
add wave -noupdate -format Logic /tb/RSVP/id_ex/MemWrite_1
add wave -noupdate -format Logic /tb/RSVP/id_ex/MemtoReg_1
add wave -noupdate -format Literal /tb/RSVP/id_ex/ALUOp_1
add wave -noupdate -format Literal /tb/RSVP/ac1/ALUOp
add wave -noupdate -format Literal /tb/RSVP/ac1/Funct
add wave -noupdate -format Literal /tb/RSVP/ac1/Operation
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/a
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/b
add wave -noupdate -format Logic /tb/RSVP/ALUIn_mux/sel
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/dataout
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/out
add wave -noupdate -format Literal /tb/RSVP/ALUmux_1/a
add wave -noupdate -format Literal /tb/RSVP/ALUmux_1/b
add wave -noupdate -format Literal /tb/RSVP/ALUmux_1/c
add wave -noupdate -format Literal /tb/RSVP/ALUmux_1/sel
add wave -noupdate -format Literal /tb/RSVP/ALUmux_1/dataout
add wave -noupdate -format Literal /tb/RSVP/ALUmux_2/a
add wave -noupdate -format Literal /tb/RSVP/ALUmux_2/b
add wave -noupdate -format Literal /tb/RSVP/ALUmux_2/c
add wave -noupdate -format Literal /tb/RSVP/ALUmux_2/sel
add wave -noupdate -format Literal /tb/RSVP/ALUmux_2/dataout
add wave -noupdate -format Literal /tb/RSVP/a2/a
add wave -noupdate -format Literal /tb/RSVP/a2/b
add wave -noupdate -format Literal /tb/RSVP/a2/out
add wave -noupdate -format Literal /tb/RSVP/conditional_mux/a
add wave -noupdate -format Literal /tb/RSVP/conditional_mux/b
add wave -noupdate -format Logic /tb/RSVP/conditional_mux/sel
add wave -noupdate -format Literal /tb/RSVP/conditional_mux/dataout
add wave -noupdate -format Literal /tb/RSVP/conditional_mux/out
add wave -noupdate -format Literal /tb/RSVP/alu/a
add wave -noupdate -format Literal /tb/RSVP/alu/b
add wave -noupdate -format Literal /tb/RSVP/alu/ALUOp
add wave -noupdate -format Literal /tb/RSVP/alu/Result
add wave -noupdate -format Logic /tb/RSVP/alu/zero
add wave -noupdate -format Logic /tb/RSVP/alu/Less
add wave -noupdate -format Literal /tb/RSVP/f1/id_ex_rs1
add wave -noupdate -format Literal /tb/RSVP/f1/id_ex_rs2
add wave -noupdate -format Literal /tb/RSVP/f1/ex_mem_rd
add wave -noupdate -format Literal /tb/RSVP/f1/mem_wb_rd
add wave -noupdate -format Logic /tb/RSVP/f1/ex_mem_regwrite
add wave -noupdate -format Logic /tb/RSVP/f1/mem_wb_regwrite
add wave -noupdate -format Literal /tb/RSVP/f1/ForwardA
add wave -noupdate -format Literal /tb/RSVP/f1/ForwardB
add wave -noupdate -format Literal /tb/RSVP/ex_mem/out
add wave -noupdate -format Literal /tb/RSVP/ex_mem/Result
add wave -noupdate -format Literal /tb/RSVP/ex_mem/ReadData2_1
add wave -noupdate -format Literal /tb/RSVP/ex_mem/rd_1
add wave -noupdate -format Logic /tb/RSVP/ex_mem/MemtoReg_1
add wave -noupdate -format Logic /tb/RSVP/ex_mem/MemWrite_1
add wave -noupdate -format Logic /tb/RSVP/ex_mem/MemRead_1
add wave -noupdate -format Logic /tb/RSVP/ex_mem/RegWrite_1
add wave -noupdate -format Logic /tb/RSVP/ex_mem/branch_op
add wave -noupdate -format Logic /tb/RSVP/ex_mem/clk
add wave -noupdate -format Logic /tb/RSVP/ex_mem/Branch_1
add wave -noupdate -format Logic /tb/RSVP/ex_mem/reset
add wave -noupdate -format Logic /tb/RSVP/ex_mem/ex_mem_flush
add wave -noupdate -format Literal /tb/RSVP/ex_mem/out_1
add wave -noupdate -format Literal /tb/RSVP/ex_mem/Result_1
add wave -noupdate -format Literal /tb/RSVP/ex_mem/ReadData2_2
add wave -noupdate -format Literal /tb/RSVP/ex_mem/rd_2
add wave -noupdate -format Logic /tb/RSVP/ex_mem/MemtoReg_2
add wave -noupdate -format Logic /tb/RSVP/ex_mem/MemWrite_2
add wave -noupdate -format Logic /tb/RSVP/ex_mem/MemRead_2
add wave -noupdate -format Logic /tb/RSVP/ex_mem/RegWrite_2
add wave -noupdate -format Logic /tb/RSVP/ex_mem/Branch_2
add wave -noupdate -format Logic /tb/RSVP/ex_mem/branch_op1
add wave -noupdate -format Literal /tb/RSVP/b1/Funct
add wave -noupdate -format Logic /tb/RSVP/b1/zero
add wave -noupdate -format Logic /tb/RSVP/b1/Less
add wave -noupdate -format Logic /tb/RSVP/b1/branch_op
add wave -noupdate -format Literal /tb/RSVP/dm1/Mem_Addr
add wave -noupdate -format Literal /tb/RSVP/dm1/Write_Data
add wave -noupdate -format Logic /tb/RSVP/dm1/clk
add wave -noupdate -format Logic /tb/RSVP/dm1/MemRead
add wave -noupdate -format Logic /tb/RSVP/dm1/MemWrite
add wave -noupdate -format Literal /tb/RSVP/dm1/Read_Data
add wave -noupdate -format Literal /tb/RSVP/mem_wb/Read_Data
add wave -noupdate -format Literal /tb/RSVP/mem_wb/Result_1
add wave -noupdate -format Logic /tb/RSVP/mem_wb/RegWrite_2
add wave -noupdate -format Logic /tb/RSVP/mem_wb/MemtoReg_2
add wave -noupdate -format Logic /tb/RSVP/mem_wb/clk
add wave -noupdate -format Logic /tb/RSVP/mem_wb/reset
add wave -noupdate -format Literal /tb/RSVP/mem_wb/rd_2
add wave -noupdate -format Literal /tb/RSVP/mem_wb/Read_Data_1
add wave -noupdate -format Literal /tb/RSVP/mem_wb/Result_2
add wave -noupdate -format Logic /tb/RSVP/mem_wb/RegWrite_3
add wave -noupdate -format Logic /tb/RSVP/mem_wb/MemtoReg_3
add wave -noupdate -format Literal /tb/RSVP/mem_wb/rd_3
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/a
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/b
add wave -noupdate -format Logic /tb/RSVP/DataMem_mux/sel
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/dataout
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27 ns} 0}
configure wave -namecolwidth 164
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {136 ns}
