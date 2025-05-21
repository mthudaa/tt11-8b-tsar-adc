`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2025 16:7:42
// Design Name: 
// Module Name: cyclic_flag
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


module cyclic_flag(
    input RDY,
    input CKS,
    output FINAL,
    output [0:7] CF
    );
    reg [8:0] CF_BUF;
    always @(posedge RDY or negedge CKS) begin
        if (!CKS)
            CF_BUF <= 9'b0;
        else
            CF_BUF <= {CF_BUF[8:0], CKS}; // Shift register dengan input EN
    end
    assign CF = {CF_BUF[0], CF_BUF[1], CF_BUF[2], CF_BUF[3], CF_BUF[4], CF_BUF[5], CF_BUF[6], CF_BUF[7]};
    assign FINAL = CF_BUF[8];
endmodule