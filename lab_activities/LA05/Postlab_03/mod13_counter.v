module mod13_counter (
    input wire clk,
    input wire reset,
    output wire [6:0] seg  // 7-segment display output
);
    reg [3:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;
        else if (count == 4'b1100)
            count <= 4'b0000;
        else
            count <= count + 1'b1;
    end

    bin_to_7seg display (.bin(count), .seg(seg));
endmodule

//module mod13_counter (
//    input wire clk_50MHz,  // Onboard clock
//    input wire reset,
//    output wire [6:0] seg  // 7-segment display output
//);
//    reg [25:0] clk_divider = 0;  // 50MHz to 1Hz clock divider
//    wire clk;  // 1Hz clock
//    reg [3:0] count;
//
//    // Clock divider
//    always @(posedge clk_50MHz or posedge reset) begin
//        if (reset)
//            clk_divider <= 0;
//        else if (clk_divider == 25'd49999999)
//            clk_divider <= 0;
//        else
//            clk_divider <= clk_divider + 1'b1;
//    end
//
//    assign clk = clk_divider[25];
//
//    // Counter
//    always @(posedge clk or posedge reset) begin
//        if (reset)
//            count <= 4'b0000;
//        else if (count == 4'b1100)
//            count <= 4'b0000;
//        else
//            count <= count + 1'b1;
//    end
//
//    bin_to_7seg display (.bin(count), .seg(seg));
//endmodule

