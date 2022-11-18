module alu
(
 input logic [31:0] A,B,
 input logic [2:0] aluControl,
 output logic [31:0] aluResult,
 output logic zero

);

always_comb 
 begin
 case(aluControl)
 3'b000: aluResult = A + B;
 3'b001: aluResult = A - B;
 3'b010: aluResult = A & B;
 3'b011: aluResult = A | B;
 3'b101: aluResult = (A<B)?1:0;
 default: aluResult = 32'bx;
 endcase
 end
 
 assign zero = (aluResult == 32'b0);
 
 endmodule
 
 