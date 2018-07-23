`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2017 02:09:32 AM
// Design Name: 
// Module Name: controller_final
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controller_finalr(Opcode,func,ALUsrc,RegDst,rst,RegWrite,ALUop,MemRead,MemWrite,MemtoReg,PCsrc,sel_a,sel_b);
input [5:0] Opcode;
input [5:0] func;
input rst;
output reg ALUsrc,RegDst,RegWrite,MemRead,MemWrite,MemtoReg,PCsrc,sel_a,sel_b;
output reg [3:0] ALUop;

always @(*)
if ( rst == 1'b1)
begin
ALUsrc <= 1'b0;
RegDst <= 1'b0;
RegWrite <= 1'b0;
ALUop <= 4'b0000;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;

end
else begin
 
case(Opcode)
6'b000000: begin 
if (func == 6'b100000 )//add 
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b0000;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
if (func == 6'b100010 ) //sub
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b0001;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
if (func == 6'b100100 ) //and
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b0011;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
if (func == 6'b100101 ) //or
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b0100;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
if (func == 6'b101010 ) //slt
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b0101;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
if (func == 6'b000000 ) //sll
begin
ALUsrc <= 1'b1;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b1000;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b1;
sel_b<=1'b1;
end
if (func == 6'b000010 ) //srl
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b1010;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b1;
sel_b<=1'b1;
end
end
6'b011100: begin 
if (func == 6'b100001 ) //clo
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b1011;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
if (func == 6'b100000 ) //clz
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b1100;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end

if (func == 6'b000010 ) //mul
begin
ALUsrc <= 1'b0;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b0010;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
end
6'b001000: begin//adi
ALUsrc <= 1'b1;
RegDst <= 1'b0;
RegWrite <= 1'b1;
ALUop <= 4'b0000;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0; 
sel_b<=1'b0;
end
6'b001101: begin//ori
ALUsrc <= 1'b1;
RegDst <= 1'b0;
RegWrite <= 1'b1;
ALUop <= 4'b0100;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0; 
sel_a<=1'b0;
sel_b<=1'b0;
end
6'b100011: begin//lW
ALUsrc <= 1'b1;
RegDst <= 1'b0;
RegWrite <= 1'b1;
ALUop <= 4'b0000;
MemRead <= 1'b1;
MemWrite <= 1'b0;
MemtoReg <= 1'b1;
PCsrc <= 1'b0; 
sel_a<=1'b0;
sel_b<=1'b0;
end
6'b101011: begin//SW
ALUsrc <= 1'b1;
RegDst <= 1'b1;
RegWrite <= 1'b1;
ALUop <= 4'b0000;
MemRead <= 1'b0;
MemWrite <= 1'b1;
MemtoReg <= 1'b1;
PCsrc <= 1'b1; 
sel_a<=1'b0;
sel_b<=1'b0;
end
6'b000101: begin//bne
ALUsrc <= 1'b0;
RegDst <= 1'b0;
RegWrite <= 1'b0;
ALUop <= 4'b0111;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b1; 
sel_a<=1'b0;
sel_b<=1'b0;
end
default: begin
ALUsrc <= 1'b0;
RegDst <= 1'b0;
RegWrite <= 1'b0;
ALUop <= 4'b0000;
MemRead <= 1'b0;
MemWrite <= 1'b0;
MemtoReg <= 1'b0;
PCsrc <= 1'b0;
sel_a<=1'b0;
sel_b<=1'b0;
end
 endcase
 end

endmodule
