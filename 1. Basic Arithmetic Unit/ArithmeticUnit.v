`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: -
// Engineer: -
// 
// Create Date: 09.06.2024 16:21:07
// Design Name: -
// Module Name: Arithmetic Unit
// Project Name: VLSI
// Target Devices: -
// Tool Versions: -
// Description: -
// 
// Dependencies: -
// 
// Revision: -
// Revision 0.01 - File Created
// Additional Comments: -
// 
//////////////////////////////////////////////////////////////////////////////////


module ArithmeticUnit(
                      operation,
                      A,
                      B,
                      result,
                      error
                      );
    
    input [1:0] operation; // 00 for add, 01 for subtract, 10 for multiply, 11 for divide
    input [3:0] A;
    input [3:0] B;
    
    output [7:0] result;
    output error; // error flag for division by zero
    
    reg [7:0] result;
    reg error;


    always @(*) begin
        error = 0;
        case (operation)
            2'b00: result = A + B;                // Addition
            2'b01: result = A - B;                // Subtraction
            2'b10: result = A * B;                // Multiplication
            2'b11: begin                          // Division
                if (B == 4'b0000) begin
                    result = 8'b00000000;
                    error = 1;                    // Set error flag if division by zero
                end else begin
                    result = A / B;               // Division
                end
            end
            default: result = 8'b00000000;
        endcase
    end

endmodule

