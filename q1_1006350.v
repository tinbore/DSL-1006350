`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 11:41:43
// Design Name: 
// Module Name: q1_1006350
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


module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
    );

reg [3:0] count=0;
reg ten=0;

always @(posedge clk)begin
    if(!rst)begin
        if (count == 4'd9)begin
            ten <= 1'b1;
            count <= 1'b0;
        end
        else begin
            ten <= 1'd0;
            count <= count + 1'b1;
        end
    end
end
endmodule
