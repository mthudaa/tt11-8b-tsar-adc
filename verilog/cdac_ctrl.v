`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2025 16:7:42
// Design Name: 
// Module Name: cdac_ctrl
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

module cdac_ctrl (
    input wire [7:0] CF,
    input wire CKSB,
    input wire CMP_P,
    input wire CMP_N,
    output reg [7:0] SWP,
    output reg [7:0] SWN
);
    
    always @(posedge CF[0] or negedge CKSB) begin
        if (!CKSB)
            SWP[0] <= 1'b0;
        else
            SWP[0] <= CMP_P;
    end
    
    always @(posedge CF[1] or negedge CKSB) begin
        if (!CKSB)
            SWP[1] <= 1'b0;
        else
            SWP[1] <= CMP_P;
    end
    
    always @(posedge CF[2] or negedge CKSB) begin
        if (!CKSB)
            SWP[2] <= 1'b0;
        else
            SWP[2] <= CMP_P;
    end
    
    always @(posedge CF[3] or negedge CKSB) begin
        if (!CKSB)
            SWP[3] <= 1'b0;
        else
            SWP[3] <= CMP_P;
    end
    
    always @(posedge CF[4] or negedge CKSB) begin
        if (!CKSB)
            SWP[4] <= 1'b0;
        else
            SWP[4] <= CMP_P;
    end
    
    always @(posedge CF[5] or negedge CKSB) begin
        if (!CKSB)
            SWP[5] <= 1'b0;
        else
            SWP[5] <= CMP_P;
    end
    
    always @(posedge CF[6] or negedge CKSB) begin
        if (!CKSB)
            SWP[6] <= 1'b0;
        else
            SWP[6] <= CMP_P;
    end
    
    always @(posedge CF[7] or negedge CKSB) begin
        if (!CKSB)
            SWP[7] <= 1'b0;
        else
            SWP[7] <= CMP_P;
    end
    
    always @(posedge CF[0] or negedge CKSB) begin
        if (!CKSB)
            SWN[0] <= 1'b0;
        else
            SWN[0] <= CMP_N;
    end
    
    always @(posedge CF[1] or negedge CKSB) begin
        if (!CKSB)
            SWN[1] <= 1'b0;
        else
            SWN[1] <= CMP_N;
    end
    
    always @(posedge CF[2] or negedge CKSB) begin
        if (!CKSB)
            SWN[2] <= 1'b0;
        else
            SWN[2] <= CMP_N;
    end
    
    always @(posedge CF[3] or negedge CKSB) begin
        if (!CKSB)
            SWN[3] <= 1'b0;
        else
            SWN[3] <= CMP_N;
    end
    
    always @(posedge CF[4] or negedge CKSB) begin
        if (!CKSB)
            SWN[4] <= 1'b0;
        else
            SWN[4] <= CMP_N;
    end
    
    always @(posedge CF[5] or negedge CKSB) begin
        if (!CKSB)
            SWN[5] <= 1'b0;
        else
            SWN[5] <= CMP_N;
    end
    
    always @(posedge CF[6] or negedge CKSB) begin
        if (!CKSB)
            SWN[6] <= 1'b0;
        else
            SWN[6] <= CMP_N;
    end
    
    always @(posedge CF[7] or negedge CKSB) begin
        if (!CKSB)
            SWN[7] <= 1'b0;
        else
            SWN[7] <= CMP_N;
    end
endmodule
