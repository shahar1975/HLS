`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 06:01:31 PM
// Design Name: 
// Module Name: Memory
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


module Memory(in, index, number);

    parameter int_size = 32;
    parameter arr_size = 0;
    
    input [arr_size*int_size-1:0] in;
    input [int_size-1:0] index;
    output [int_size-1:0] number;
    
    
    wire [int_size-1:0] memory[0:arr_size-1];
    reg [int_size-1:0] num;
    genvar i;
    

    for(i=0;i<arr_size;i=i+1)
    begin
        assign memory[i] = in[int_size*(i+1)-1:int_size*i];
    end
    
    assign number = memory[index];
       
endmodule
