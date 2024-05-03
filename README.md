Processors are an integral part of the computer and electronics industry. Every computational unit contains some sort of processing circuit, designed to perform multiple
operations on a single device and can be categorized based on its speed, flexibility and adaptability.This repository presents a methodology for designing a single clock cycle MIPS RISC Processor using Verilog HDL.Verilog HDL facilitates the description, verification, simulation, and hardware implementation of the processor.The RISC processor includes 
32-bit general-purpose registers and operates with a memory word size of 32 bits. The processor is structured into five stages: instruction fetch, instruction decode, execution,
data memory, and write back, each controlled by a control unit. VHDL is chosen for its ability to handle concurrency, aligning with the parallel nature of digital hardware.
All modules in the design are coded in Verilog HDL, and a top-level module integrates these stages.
