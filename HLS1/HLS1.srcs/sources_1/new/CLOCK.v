`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2017 05:46:09 PM
// Design Name: 
// Module Name: CLOCK
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


module CLOCK(
    output clk
    );
    
    reg c = 1;
    assign clk = c;
    
    always@(*) begin
    #10 c = ~c;
    end
    
endmodule

