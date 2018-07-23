`timescale 1ns / 1ps


module Lights(n,seg );
input [3:0] n;
output reg [6:0] seg;

always @ (n)
begin 
//A
seg[6] <= (~n[3]&~n[2]&~n[1]&n[0]) | (n[2]&~n[1]&~n[0]) | (n[3]&n[1]) | (n[3]&n[2]);
//B
seg[5] <= (n[2]&~n[1]&n[0]) | (n[2]&n[1]&~n[0]) | (n[3]&n[1]) | (n[3]&n[2]);
//C
seg[4] <= (~n[3]&~n[2]&n[1]&~n[0]) | (n[3]&n[1]) | (n[3]&n[2]);
//D
seg[3] <= (n[3]&n[1]) | (n[3]&n[2]) | (n[2]&~n[1]&~n[0]) | (~n[3]&~n[2]&~n[1]&n[0]) | (n[2]&n[1]&n[0]);
//E
seg[2] <= (n[3]&n[1]) | (n[0]) | (n[2]&~n[1]);
//F
seg[1] <= (n[1]&n[0]) | (~n[3]&~n[2]&n[1]) | ( ~n[3]&~n[2]&n[0]) | (n[3]&n[1]) | (n[3]&n[2]);
//G
seg[0] <= (n[2]&n[1]&n[0]) | (~n[3]&~n[2]&~n[1]) | (n[3]&n[1]) | (n[3]&n[2]);

end

endmodule