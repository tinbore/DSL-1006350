`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 15:21:42
// Design Name: 
// Module Name: CCTA_tb
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


module CCTA_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;
    reg rst;
    reg ctrl;
    wire [4:0] q;

CCTA CCTA_u0(
    .A(A),
    .B(B),
    .C(C),
    .rst(rst),
    .ctrl(ctrl),
    .q(q)
);

initial begin
    A=4'b0100;B=4'b0001;C=4'b1001;rst=1;ctrl=0;
    #10 A=4'b0100;B=4'b0001;C=4'b1001;rst=0;ctrl=0;
    #10 A=4'b0011;B=4'b1101;C=4'b1101;rst=0;ctrl=0;
    #10 A=4'b0101;B=4'b0010;C=4'b0001;rst=0;ctrl=0;
    #10 A=4'b1101;B=4'b0110;C=4'b1101;rst=0;ctrl=0;
    #10 A=4'b1101;B=4'b1100;C=4'b1001;rst=0;ctrl=0;
    #10 A=4'b0110;B=4'b0101;C=4'b1010;rst=0;ctrl=1;
    #10 A=4'b0101;B=4'b0111;C=4'b0010;rst=0;ctrl=1;
    #10 A=4'b1111;B=4'b0010;C=4'b1110;rst=0;ctrl=1;
    #10 A=4'b1000;B=4'b0101;C=4'b1100;rst=0;ctrl=1;
    #10 A=4'b1101;B=4'b1101;C=4'b0101;rst=0;ctrl=1;
    #10 A=4'b0011;B=4'b1010;C=4'b0000;rst=0;ctrl=1;
    #10 $stop;
    #10 $finish;
end
endmodule
