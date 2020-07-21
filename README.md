# Pipelined-RISCV-Processor
This was a project for my course 'Computer Architecture' in which we first designed and tested a single cycle RISC-V processor and then converted it to a pipelined one with complete hazard detection. At the moment, it supports only a subset of the RISC-V instructions which are add, addi, sub, beq, blt, ld and sd. The coding of the processor was done on Verilog and the processor was simulated on ModelSim. 
This repository contains the codes for the pipelined and single cycle processor. The instruction memory of both these processors has bubble sort code preloaded which sorts the data in the data memory. 
# Note: 
The instruction size in the processors is 32 bit and the register size is 64 bits.

# How to Run:
Download the corresponding files for the processor on your system. Download and install ModelSim on your system. Open Modelsim and change the work directory to the directory in which the processor was downloaded. Then run the following commands: vlib work, do run.do
