module full_adder (
    output reg cout,
    output reg sum,
    input wire ain,
    input wire bin,
    input wire cin
);

always @(*) begin
    sum = ain ^ bin ^ cin;
    cout = (ain & bin) | (cin & (ain ^ bin));
end

endmodule
