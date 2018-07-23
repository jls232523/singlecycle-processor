`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 04:55:21 PM
// Design Name: 
// Module Name: datapath
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


module datapath(Clk,Rst,out77,en_outt);
input Clk,Rst;
wire [31:0] Out;
wire [31:0] PCAddResult,Instruction,ReadData1,ReadData2,ALUIn,SignExtOut,SignExtOut2,ALUResult,ReadData,ALUADDResult,PCMuxResult,PCResult,ALURealIn,addtopOut,readDataMuxOut;
wire RegWrite,RegDstMux,ALUSrc,Zero,MemWrite,MemRead,MemToReg,PCSrc,sel_a,sel_b;
wire [4:0] RegMuxOut;
wire w;
output [6:0] out77;
output  [7:0] en_outt;

wire [3:0] ALUOp;
(* mark_debug = "true" *) wire [31:0] debug_Reg8, 	debug_Reg16, debug_Reg17, debug_Reg18, debug_Reg19;


//wire[4:0] ReadRegister1,ReadRegister2,WriteRegister;
InstructionMemory my_instructionMemory(PCResult,Instruction);
controller_finalr my_controller(Instruction[31:26],Instruction[5:0],ALUSrc,RegDstMux,Rst,RegWrite,ALUOp,MemRead,MemWrite,MemToReg,PCSrc,sel_a,sel_b);
//controller_finalr(Opcode,func,ALUsrc,RegDst,rst,RegWrite,ALUop,MemRead,MemWrite,MemtoReg,PCsrc);


ProgramCounter my_programcounter(PCMuxResult,PCResult,Rst,Clk);
PCAdder my_PCAdder(PCResult,PCAddResult);


Mux32Bit2To1 my_RegDst(RegMuxOut,{27'b0,Instruction[20:16]},{27'b0,Instruction[15:11]},RegDstMux);

RegisterFile my_registerFile(Instruction[25:21],Instruction[20:16],RegMuxOut,Out,RegWrite,Clk,ReadData1,ReadData2,debug_Reg8, debug_Reg16, debug_Reg17, debug_Reg18, 
      debug_Reg19);

SignExtension my_signExt(Instruction[15:0],SignExtOut);

Mux32Bit2To1 my_ALUSrc(ALUIn,ReadData2,SignExtOut,ALUSrc);

ALU32Bit my_ALU(ALUOp,readDataMuxOut,ALURealIn,ALUResult,Zero);
DataMemory my_dataMemory(ALUResult,ReadData2,Clk,MemWrite,MemRead,ReadData);
Mux32Bit2To1 my_finalMux(Out,ALUResult,ReadData,MemToReg);

Mux32Bit2To1 my_mux(PCMuxResult,addtopOut,PCAddResult,andOut);
adder addtop(SignExtOut<<2,PCAddResult,addtopOut);
nand andgate(andOut,Zero,PCSrc);
Mux32Bit2To1 my_signExtMux(ALURealIn,ALUIn,{27'b0,Instruction[10:6]},sel_b);
Mux32Bit2To1 my_readdataMux(readDataMuxOut,ReadData1,ReadData2,sel_a);
//SignExtension my_signExt2({11'b0,Instruction[10:6]},SignExtOut2);
TwoDigitDisplay m3 (Clk,debug_Reg16,out77,en_outt);
ClkDiv div (Clk,0,w);
endmodule