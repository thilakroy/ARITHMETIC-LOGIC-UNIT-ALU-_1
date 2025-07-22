module alu (
    input [3:0] a,
    input [3:0] b,
    input [2:0] op_code,
    output reg [3:0] result
);

always @(*) begin
    case (op_code)
        3'b000: result = a + b;      // ADD
        3'b001: result = a - b;      // SUB
        3'b010: result = a & b;      // AND
        3'b011: result = a | b;      // OR
        3'b100: result = 4'b0000;    // NOP
        default: result = 4'b0000;
    endcase
end

endmodule