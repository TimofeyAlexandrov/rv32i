module top ( input logic clk, reset,
output logic [31:0] WriteData,
                    DataAdr,
output logic MemWrite);

logic [31:0] PC,Instr,ReadData;

rvsingle riscv (clk,reset,PC,Instr,MemWrite,DataAdr,
					 WriteData,ReadData);
imem imem (PC[7:2],Instr);
dmem dmem (clk,MemWrite,DataAdr,WriteData,ReadData);

endmodule

