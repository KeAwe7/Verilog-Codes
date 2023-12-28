module four_bit_PRNG (
    input wire clk,
    input wire reset,
    output wire [3:0] out
);
    reg [3:0] lfsr;

    always @(posedge clk or posedge reset) begin
        if (reset)
            lfsr <= 4'b0001;  // Non-zero initial state
        else
            lfsr <= {lfsr[2:0], lfsr[3] ^ lfsr[0]};  // Shift and feedback
    end

    assign out = lfsr;
endmodule
