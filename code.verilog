// Code your design here
module alu_4bit (
    input  [3:0] a,
    input  [3:0] b,
    input  [2:0] op,      // operation select
    output reg [3:0] result,
    output reg carry_out
);

    always @(*) begin
        carry_out = 0;
        case (op)
            3'b000: {carry_out, result} = a + b;   // addition
            3'b001: {carry_out, result} = a - b;   // subtraction
            3'b010: result = a & b;                // bitwise AND
            3'b011: result = a | b;                // bitwise OR
            3'b100: result = a ^ b;                // bitwise XOR
            3'b101: result = ~a;                   // bitwise NOT (of a)
            3'b110: result = a << 1;                // logical shift left
            3'b111: result = a >> 1;                // logical shift right
            default: result = 4'b0000;
        endcase
    end

endmodule
