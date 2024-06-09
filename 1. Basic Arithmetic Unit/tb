`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: -
// Engineer: -
// 
// Create Date: 09.06.2024 16:26:21
// Design Name: -
// Module Name: tb_ArithmeticUnit
// Project Name: -
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


module tb_ArithmeticUnit();
    reg [1:0] operation;
    reg [3:0] A;
    reg [3:0] B;
    
    wire [7:0] result;
    wire error;
    
    ArithmeticUnit ArithmeticUnit_i( .operation(operation), .A(A), .B(B), .result(result), .error(error));
    
     initial begin
        // Test Addition
        operation = 2'b00; A = 4'b0011; B = 4'b0101; // 3 + 5
        #10;
        
        // Test Subtraction
        operation = 2'b01; A = 4'b0110; B = 4'b0011; // 6 - 3
        #10;
        
        // Test Multiplication
        operation = 2'b10; A = 4'b0011; B = 4'b0010; // 3 * 2
        #10;
        
        // Test Division
        operation = 2'b11; A = 4'b1000; B = 4'b0010; // 8 / 2
        #10;
        
        // Test Division by zero
        operation = 2'b11; A = 4'b1000; B = 4'b0000; // 8 / 0
        #10;
        
        $finish;
    end

    

endmodule
