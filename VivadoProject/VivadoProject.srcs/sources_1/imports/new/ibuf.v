`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2025 02:38:20 PM
// Design Name: 
// Module Name: ibuf
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


module ibuf(
    input clk_in,
    output clk_out
    );

// IBUF: Single-ended Input Buffer
//       7 Series
// Xilinx HDL Language Template, version 2025.1

IBUF #(
   .IBUF_LOW_PWR("FALSE"),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
) IBUF_inst (
   .O(clk_out),    // Buffer output
   .I(clk_in)      // Buffer input (connect directly to top-level port)
);

// End of IBUF_inst instantiation
    
endmodule
