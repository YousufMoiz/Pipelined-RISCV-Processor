
vlog tb.v RISC_V_Processor.v ALU_Control.v Control_Unit.v Branch_Control.v Adder.v Program_Counter.v Instruction_Memory.v inst_parser.v imm_data_extractor.v registerFile.v mux_64.v ALU_64_bit.v Data_Memory.v


vsim -novopt work.tb

view wave

#add wave -r /*

do wave.do

run 10ns