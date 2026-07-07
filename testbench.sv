// Code your testbench here
// or browse Examples
module tb_alu_4bit;
    reg [3:0] a, b;
    reg [2:0] op;
    wire [3:0] result;
    wire carry_out;

    alu_4bit uut (.a(a), .b(b), .op(op), .result(result), .carry_out(carry_out));

    initial begin
        $monitor("op=%b a=%d b=%d -> result=%d carry=%b", op, a, b, result, carry_out);

        a = 4'd5;  b = 4'd3;  op = 3'b000; #10; // add
        a = 4'd5;  b = 4'd3;  op = 3'b001; #10; // sub
        a = 4'b1010; b = 4'b0110; op = 3'b010; #10; // and
        a = 4'b1010; b = 4'b0110; op = 3'b011; #10; // or
        a = 4'b1010; b = 4'b0110; op = 3'b100; #10; // xor
        a = 4'b1010; b = 4'd0;    op = 3'b101; #10; // not a
        a = 4'b0011; b = 4'd0;    op = 3'b110; #10; // shift left
        a = 4'b0110; b = 4'd0;    op = 3'b111; #10; // shift right

        $finish;
    end
endmodule
