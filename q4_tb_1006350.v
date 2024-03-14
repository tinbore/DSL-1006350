`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 14:42:34
// Design Name: 
// Module Name: nibbleadd_tb
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


module nibbleadd_tb;
    reg [7:0]A;
    reg [7:0]B;
    reg ctrl;
    wire [4:0]q;

nibbleadd nibbleadd_u0(
    .A(A),
    .B(B),
    .ctrl(ctrl),
    .q(q)
);

initial begin
    ctrl=0;A=8'h24;B=8'h81;
    #10 ctrl=0;A=8'h09;B=8'h63;
    #10 ctrl=0;A=8'h0d;B=8'h8d;
    #10 ctrl=0;A=8'h65;B=8'h12;
    #10 ctrl=0;A=8'h01;B=8'h0d;
    #10 ctrl=1;A=8'h76;B=8'h3d;
    #10 ctrl=1;A=8'hed;B=8'h8c;
    #10 ctrl=1;A=8'hf9;B=8'hc6;
    #10 ctrl=1;A=8'hc5;B=8'haa;
    #10 ctrl=1;A=8'he5;B=8'h77;
    #10 ctrl=1;A=8'h12;B=8'h8f;
    #10 $stop;
    #10 $finish;
end
endmodule
