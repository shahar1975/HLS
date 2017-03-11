`timescale 1ns / 1ps
`define int_size 32
`define arr_size 20
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 06:00:25 PM
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
    
    integer arr[0:`arr_size-1] = {1,2,3,4,5,6,78,9,45,26,87,89,56,23,15,45,788,98,8,35};
    integer index = 0;
    genvar i;
    reg [`int_size-1:0] num = 0;
    reg [`int_size-1:0] res;
    wire [(`int_size)*`arr_size-1:0] w_mem;
    wire [`int_size-1:0] number;
    wire [`int_size-1:0] result;
    wire clk;
    
    
    generate for(i=0;i<`arr_size;i=i+1)
    begin
        assign w_mem[`int_size*(i+1)-1:`int_size*i] = arr[i];
    end
    endgenerate
    
    assign result = res;
    Clock clock(clk); 
    ClkMemory mem(clk, w_mem, index, number);
    
    always @(negedge clk)
    begin
       res <= res + number;
       index <= index + 1; 
    end
    /*initial begin
    for(count=0;count<10;count=count+1)
    begin
        $display("arr in count: %d",arr[count]); 
    end
    #10 $display("arr in count: %d",arr[count]);
    end*/
    
endmodule
