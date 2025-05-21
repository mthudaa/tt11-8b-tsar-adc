`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 21:29:17
// Design Name: 
// Module Name: sar
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


module sar8b(
    input EN,
    input CLK,
    input RDY,
    input CMP_P,
    input CMP_N,
    output CKS,
    output CKSB,
    output [0:7] CF,
    output [0:7] SWP,
    output [0:7] SWN,
    output [0:7] DATA,
    output CKO
    );
    wire FINAL;
    clk_div clk_div_0 (.CK(CLK), .EN(EN), .CKS(CKS), .CKSB(CKSB));
    cyclic_flag cyclic_flag_0(.RDY(RDY), .CKS(CKS), .FINAL(FINAL), .CF(CF));
    cdac_ctrl cdac_ctrl_0(.CF(CF), .CKSB(CKS), .CMP_P(CMP_P), .CMP_N(CMP_N), .SWP(SWP), .SWN(SWN));
    out_latch out_latch_0(.FINAL(FINAL), .CKS(CKS), .EN(EN), .SWP(SWP), .CKO(CKO), .DATA(DATA));
endmodule
