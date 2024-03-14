`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 14:42:09
// Design Name: 
// Module Name: nibbleadd
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

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output reg [4:0]q
);

always @(A or B or ctrl) begin
    if (ctrl) begin
        q <= A[7:4] + B[7:4];
    end
    else begin
        q <= A[3:0] + B[3:0];
    end
end

//YOUR CODE HERE
endmodule
