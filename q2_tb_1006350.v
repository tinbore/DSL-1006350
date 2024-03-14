`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 13:22:06
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb;
    reg [1:0]A;
    reg [1:0]B;
    reg [1:0]C;
    reg [1:0]D;
    reg [1:0]SEL;
    wire [1:0] X;

multiplexer mulitplexer_u0(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .SEL(SEL),
    .X(X)
);

initial begin
    A=2'b00;
    B=2'b01;
    C=2'b01;
    D=2'b11;
    SEL=2'b00;
    #10 SEL=2'b01;
    #10 SEL=2'b10;
    #10 SEL=2'b11;
    #10 $stop;
    #10 $finish;
end

endmodule
