onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/reset
add wave -noupdate -format Literal /tb/RSVP/PC_In
add wave -noupdate -format Literal /tb/RSVP/PC_Out
add wave -noupdate -format Literal /tb/RSVP/Instruction
add wave -noupdate -format Literal /tb/RSVP/rs1
add wave -noupdate -format Literal /tb/RSVP/rs2
add wave -noupdate -format Literal /tb/RSVP/opcode
add wave -noupdate -format Logic /tb/RSVP/clk
add wave -noupdate -format Logic /tb/RSVP/reset
add wave -noupdate -format Literal /tb/RSVP/rd
add wave -noupdate -format Literal /tb/RSVP/ReadData1
add wave -noupdate -format Literal /tb/RSVP/ReadData2
add wave -noupdate -format Literal /tb/RSVP/imm_data
add wave -noupdate -format Literal /tb/RSVP/Result
add wave -noupdate -format Literal /tb/RSVP/WriteData
add wave -noupdate -format Literal /tb/RSVP/Read_Data
add wave -noupdate -format Literal /tb/RSVP/ALUIn
add wave -noupdate -format Literal /tb/RSVP/out1
add wave -noupdate -format Literal /tb/RSVP/out2
add wave -noupdate -format Literal /tb/RSVP/funct7
add wave -noupdate -format Literal /tb/RSVP/funct3
add wave -noupdate -format Logic /tb/RSVP/Branch
add wave -noupdate -format Logic /tb/RSVP/MemRead
add wave -noupdate -format Logic /tb/RSVP/MemtoReg
add wave -noupdate -format Logic /tb/RSVP/MemWrite
add wave -noupdate -format Logic /tb/RSVP/ALUSrc
add wave -noupdate -format Logic /tb/RSVP/RegWrite
add wave -noupdate -format Logic /tb/RSVP/zero
add wave -noupdate -format Logic /tb/RSVP/Less
add wave -noupdate -format Literal /tb/RSVP/ALUOp
add wave -noupdate -format Literal /tb/RSVP/Operation
add wave -noupdate -format Logic /tb/RSVP/pc1/clk
add wave -noupdate -format Logic /tb/RSVP/pc1/reset
add wave -noupdate -format Literal /tb/RSVP/pc1/PC_In
add wave -noupdate -format Literal /tb/RSVP/pc1/PC_Out
add wave -noupdate -format Literal /tb/RSVP/a1/a
add wave -noupdate -format Literal /tb/RSVP/a1/b
add wave -noupdate -format Literal /tb/RSVP/a1/out
add wave -noupdate -format Literal /tb/RSVP/im1/Inst_Address
add wave -noupdate -format Literal /tb/RSVP/im1/Instruction
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
add wave -noupdate -format Logic /tb/RSVP/cu1/Branch
add wave -noupdate -format Logic /tb/RSVP/cu1/MemRead
add wave -noupdate -format Logic /tb/RSVP/cu1/MemtoReg
add wave -noupdate -format Logic /tb/RSVP/cu1/MemWrite
add wave -noupdate -format Logic /tb/RSVP/cu1/ALUSrc
add wave -noupdate -format Logic /tb/RSVP/cu1/RegWrite
add wave -noupdate -format Literal /tb/RSVP/cu1/ALUOp
add wave -noupdate -format Literal /tb/RSVP/ac1/ALUOp
add wave -noupdate -format Literal /tb/RSVP/ac1/Funct
add wave -noupdate -format Literal /tb/RSVP/ac1/Operation
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/a
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/b
add wave -noupdate -format Logic /tb/RSVP/ALUIn_mux/sel
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/dataout
add wave -noupdate -format Literal /tb/RSVP/ALUIn_mux/out
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
add wave -noupdate -format Literal /tb/RSVP/dm1/Mem_Addr
add wave -noupdate -format Literal /tb/RSVP/dm1/Write_Data
add wave -noupdate -format Logic /tb/RSVP/dm1/clk
add wave -noupdate -format Logic /tb/RSVP/dm1/MemRead
add wave -noupdate -format Logic /tb/RSVP/dm1/MemWrite
add wave -noupdate -format Literal /tb/RSVP/dm1/Read_Data
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/a
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/b
add wave -noupdate -format Logic /tb/RSVP/DataMem_mux/sel
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/dataout
add wave -noupdate -format Literal /tb/RSVP/DataMem_mux/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14 ns} 0}
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ns} {64 ns}
