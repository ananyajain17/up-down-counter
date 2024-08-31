module up_down_counter_tb();
    reg clk, reset, enable, up_down;
    wire [3:0] count;

    // Instantiate the counter
    up_down_counter dut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset = 1; enable = 0; up_down = 0;
        #15 reset = 0; // Deassert reset after 15ns
        #10 enable = 1; // Enable counting after 10ns
        #30 up_down = 1; // Switch to down counting
        #50 $stop; // End the simulation
    end
endmodule
