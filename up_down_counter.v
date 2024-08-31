module up_down_counter (
    input clk,           // Clock input
    input reset,         // Synchronous reset
    input enable,        // Enable for counting
    input up_down,       // Up/Down control (1 = Up, 0 = Down)
    input [3:0] load_val, // Value to load into the counter
    input load,          // Load signal to load a specific value
    output reg [3:0] count // 4-bit counter output
);

always @(posedge clk) begin
    if (reset) begin
        count <= 4'b0000;   // Reset counter to 0
    end else if (load) begin
        count <= load_val;  // Load specific value
    end else if (enable) begin
        if (up_down) begin
            count <= count + 1; // Count up
        end else begin
            count <= count - 1; // Count down
        end
    end
end

endmodule
