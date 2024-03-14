`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 13:49:49
// Design Name: 
// Module Name: demultiplexer
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
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output reg [1:0]W,
    output reg [1:0]X,
    output reg [1:0]Y,
    output reg [1:0]Z
    );
    
always @(A or SEL)begin
    case(SEL)
        2'b00: begin
            W <= A;
            X <= 2'b00;
            Y <= 2'b00;
            Z <= 2'b00;
        end
        2'b01: begin
            W <= 2'b00;
            X <= A;
            Y <= 2'b00;
            Z <= 2'b00;
        end
        2'b10: begin
            W <= 2'b00;
            X <= 2'b00;
            Y <= A;
            Z <= 2'b00;
        end
        2'b11: begin
            W <= 2'b00;
            X <= 2'b00;
            Y <= 2'b00;
            Z <= A;
        end
        default: begin
            W <= 2'b01;
            X <= 2'b01;
            Y <= 2'b01;
            Z <= 2'b01;
        end
    endcase
end

endmodule
