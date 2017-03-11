`timescale 1ns / 1ps
`define int_size 32
`define arr_size 20
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2017 09:56:46 AM
// Design Name: 
// Module Name: ClkMemory
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


module ClkMemory(
    input clk,
    input [`arr_size*`int_size-1:0] in,
    input [`int_size-1:0] index,
    output [`int_size-1:0] number
    );
    
    reg [`int_size-1:0] memory[0:`arr_size-1];
    reg [`int_size-1:0] num;
    reg [`int_size-1:0] count;
    genvar i;
    

    /*for(i=0;i<`arr_size;i=i+1)
    begin
        //memory[i] = in[`int_size*(i+1)-1:`int_size*i];
    end*/
    assign number = num;
    
    always @(negedge clk)
    begin
        if(1)
        begin
            for(count=0;count<`arr_size;count=count+1)
            begin
                //memory[count] <= in[`int_size*(count+1)-1:`int_size*count];
                memory[count] <= in[`int_size*count +: `int_size];
            end
            num <= memory[index];
        end
    end 
    
    
endmodule
