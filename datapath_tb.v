`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2017 09:47:07 AM
// Design Name: 
// Module Name: datapath_tb
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


module datapath_tb();
reg Clk_t;
reg Rst_t;
wire[31:0] WriteData_t;
datapath my_data(Clk_t,Rst_t,WriteData_t);
initial begin
		Clk_t <= 1'b0;
		forever #1 Clk_t <= ~Clk_t;
	end

	initial begin
	Rst_t<=1;
	#200;
	//@(posedge Clk_t);
	Rst_t<=0;
	
end
endmodule
