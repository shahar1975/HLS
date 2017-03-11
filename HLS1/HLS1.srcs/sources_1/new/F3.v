`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2017 05:45:24 PM
// Design Name: 
// Module Name: F3
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


module F3(clock, zero, one, k);
    
    parameter int_size = 32;
    parameter const1 = 56248112; 
    input clock;
    input [int_size-1:0] zero,one,k;
    
    //comments:
    //first pass: every Clocked_Register is a 32bit number
    reg [int_size-1:0] indvars_iv2;
    reg [int_size-1:0] y_03;
    reg CONTROL_REGISTER;
    
    //comments:
    //first pass: find 1 bit wires and 32 bit wires and declare them
    //"." is converted into "_"  
    wire cmp, cmp1, Ctrl_T, Ctrl_Edge, Ctrl_F;
    wire [int_size-1:0] indvars_iv_next, arrayidx, trunc, load, mul, split, predBB, MUX_y0_lcssa, Ctrl_cmp0, cMUX_indvars_iv2, cMUX_y_03, y_0_lcssa, ret;
    
    //comments:
    //always clock for the registers in the code
    always@(posedge clock)
    begin
    indvars_iv2 <= cMUX_indvars_iv2;
    y_03 <= (Ctrl_T) ? cMUX_y_03 : zero;
    CONTROL_REGISTER = 1;
    end
    
    //comments:
    //assignments for the wires in the code
    assign cmp = trunc < k;
    assign cmp1 = zero < k ? 1 : 0;
    //assign ctrl_T
    assign indvars_iv_next = indvars_iv2 + one;
    //assign arrayidx = GEP(A,0,indvars_iv2);
    //assign trunc = TRUNC(indvars_iv_next);   
    //assign load = LOAD(arrayidx);
    assign mul = load * y_03; 
    assign split = (Ctrl_F) ? mul : zero;
    assign predBB = CONTROL_REGISTER;
    assign MUX_y_0_lcssa = (cmp1) ? k : split;
    assign Ctrl_cmp0 = (predBB == const1) ? 1 : 0;
    assign cMUX_indvars_iv2 = (Ctrl_cmp0) ? indvars_iv_next : zero;
    assign cMUX_y_03 = (Ctrl_cmp0) ? mul : k;
    assign  y_0_lcssa = (Ctrl_F) ? MUX_y0_lcssa : zero; 
    assign ret = y_0_lcssa;
    
endmodule

