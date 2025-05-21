`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2025 16:11:42
// Design Name: 
// Module Name: clk_div
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


module clk_div (
    input CK,
    input EN,
    output reg CKS,
    output reg CKSB
);

    reg [3:0] COUNT; // Gunakan format konvensional [3:0]

    always @(posedge CK) begin
        if (!EN) begin  // Saat EN = 0, reset nilai
            CKS  <= 1'b0;
            CKSB <= 1'b1;
            COUNT <= 4'b0000;
        end 
        else begin
            if (COUNT == 4'b1001) begin
                CKS  <= ~CKS;
                CKSB <= CKS;
                COUNT <= 4'b0000;
            end
            else begin
                COUNT <= COUNT + 1;
            end
        end
    end

endmodule
