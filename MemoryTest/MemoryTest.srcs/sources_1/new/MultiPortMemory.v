`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2017 01:21:46 PM
// Design Name: 
// Module Name: MultiPortMemory
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


module MultiPortMemory(
    // Outputs
   data_0_out, data_1_out, 
   // Inputs
   read_0, read_1, write_0, write_1, clk, data_0_in, data_1_in, addr_0, addr_1
    );
    
    /*AUTOINPUT*/
       // Beginning of automatic inputs (from unused autoinst inputs)
       // End of automatics
       /*AUTOOUTPUT*/
       // Beginning of automatic outputs (from unused autoinst outputs)
       // End of automatics
       /*AUTOWIRE*/
       // Beginning of automatic wires (for undeclared instantiated-module outputs)
       // End of automatics
       
       parameter WIDTH = 10;        //word size in bits
       parameter LINES = 1024;      //address span
       input     read_0,read_1;
       input     write_0,write_1;
       input     clk;             
       input     wire [WIDTH-1:0] data_0_in;
       input     wire [WIDTH-1:0] data_1_in;
       input     wire [WIDTH-1:0] addr_0;
       input     wire [WIDTH-1:0] addr_1;
       output    wire [WIDTH-1:0] data_0_out;
       output    wire [WIDTH-1:0] data_1_out;
       
       reg [WIDTH-1:0] mem [LINES-1:0];
       assign   data_0_out = mem[addr_0];
       assign   data_1_out = mem[addr_1];
       
       always @(posedge clk)
         begin
         //write to memory from port 0 to address 0
         if (write_0 & ~write_1) 
            mem[addr_0] <= data_0_in;
            
        //write to memory from port 1 to address 1   
        else if(~write_0 & write_1)
            mem[addr_1] <= data_1_in;
            
        //write to memory from port 0 and port 1 to different addresses
        else if(write_0 & write_1 & (addr_0 != addr_1))
            begin
                mem[addr_0] <= data_0_in;
                mem[addr_1] <= data_1_in;
            end    
        end

endmodule
