module rom(
    input [2:0] addr,
    output reg [7:0] data
);

reg [7:0] memory [0:7];

initial begin
    memory[0] = 8'h11;
    memory[1] = 8'h22;
    memory[2] = 8'h33;
    memory[3] = 8'h44;
    memory[4] = 8'h55;
    memory[5] = 8'h66;
    memory[6] = 8'h77;
    memory[7] = 8'h88;
end

always @(*) begin
    data = memory[addr];
end

endmodule
