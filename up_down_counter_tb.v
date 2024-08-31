module tb_up_down_counter;
    reg clk;
    reg reset;
    reg enable;
    reg up_down;
    reg load;
    reg [3:0] load_val;
    wire [3:0] count;

    // Instantiate the counter module
    up_down_counter uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .up_down(up_down),
        .load_val(load_val),
        .load(load),
        .count(count)
    );

    // Generate clock signal
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle clock every 5 time units
    end

    // Testbench stimulus
    initial begin
        // Initial values
        reset = 1;
        enable = 0;
        up_down = 0;
        load = 0;
        load_val = 4'b0000;

        // Reset the counter
        #10 reset = 0;  // De-assert reset after 10 time units

        // Load value 5 into the counter
        #10 load_val = 4'b0101;
        load = 1;
        #10 load = 0;  // De-assert load

        // Enable counting up
        #10 enable = 1;
        up_down = 1;  // Count up

        // Let it count for 50 time units
        #50;

        // Change to count down
        up_down = 0;

        // Let it count down for 50 time units
        #50;

        // Reset the counter
        reset = 1;
        #10 reset = 0;

        // End the simulation
        #100 $stop;
    end
endmodule
