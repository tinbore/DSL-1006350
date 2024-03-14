`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 15:21:11
// Design Name: 
// Module Name: CCTA
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
module CCTA(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input rst,
    input ctrl,
    output reg [4:0] q
);

always @(A or B or C or rst or ctrl) begin
    if (rst) begin
        q <= 0;
    end
    else if (!rst) begin
        if (!ctrl) begin
            q <= A + B;
        end
        else begin
            q <= A - C;
        end
    end
end

endmodule
