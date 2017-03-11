`timescale 1ns / 1ps
`define int_size 32
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2017 06:03:37 PM
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    
    wire clk;
    wire [`int_size-1:0] zero;
    wire [`int_size-1:0] one;
    genvar i;
    
    generate for(i=0;i<`int_size;i=i+1) begin
        assign zero[i] = 1'b0;
        assign one[i] = 1'b1; 
    end
    endgenerate
    
    CLOCK clock(clk);
    F3 f3(clk, zer0, one, 10); 
endmodule
