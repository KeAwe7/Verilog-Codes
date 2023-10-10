module tb_test01;

    reg a, b;
    wire out;

    // Instantiate the module to be tested
    test01 uut (
        .a(a),
        .b(b),
        .out(out)
    );

    // Stimulus generation
    initial begin
        $monitor("a=%b, b=%b | out=%b", a, b, out);

        // Test case 1: a=0, b=0
        a = 1'b0;
        b = 1'b0;
        #10;

        // Test case 2: a=1, b=0
        a = 1'b1;
        b = 1'b0;
        #10;

        // Test case 3: a=0, b=1
        a = 1'b0;
        b = 1'b1;
        #10;

        // Test case 4: a=1, b=1
        a = 1'b1;
        b = 1'b1;
        #10;

        // Add more test cases as needed

        $finish;
    end
endmodule
