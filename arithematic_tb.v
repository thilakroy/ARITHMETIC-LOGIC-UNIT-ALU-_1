module alu_tb;

reg [3:0] a, b;
reg [2:0] op_code;
wire [3:0] result;

alu uut (
    .a(a), .b(b), .op_code(op_code), .result(result)
);

initial begin
    $monitor("a=%b b=%b op_code=%b => result=%b", a, b, op_code, result);

    // Test ADD
    a = 4'b0011; b = 4'b0101; op_code = 3'b000; #10;
    // Test SUB
    op_code = 3'b001; #10;
    // Test AND
    op_code = 3'b010; #10;
    // Test OR
    op_code = 3'b011; #10;
    // Test NOP
    op_code = 3'b100; #10;

    $finish;
end

endmodule