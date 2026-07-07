4-bit-ALU
A 4-bit Arithmetic Logic Unit (ALU) designed and functionally verified in Verilog HDL, simulated using Icarus Verilog on EDA Playground.

Overview:
The ALU takes two 4-bit inputs (a, b) and a 3-bit operation select (op), and produces a 4-bit result along with a carry-out flag. It supports 8 operations spanning arithmetic and bitwise logic.



Files:
code.sv — ALU design (combinational logic, always @(*) block with a case statement on op)
testbench.sv — Testbench exercising all 8 operations, including an overflow case for addition


How it was verified:
The design was simulated in Icarus Verilog via EDA Playground. The testbench applies each operation with representative input values and uses $monitor to print op, a, b, result, and carry_out for every test vector, confirming correct output including carry generation on addition overflow (e.g. a=15, b=3 → result=2, carry=1).

Run it yourself

On EDA Playground:


Paste alu_4bit.sv into the Design pane and tb_alu_4bit.sv into the Testbench pane
Select Icarus Verilog as the simulator
Click Run


Notes

This was a self-directed project built to get hands-on with Verilog HDL and digital design fundamentals alongside coursework in Digital Electronics.
