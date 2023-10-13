module mod_n_up_counter_tb;

reg clk;        // Clock signal
reg reset;      // Reset signal
wire [3:0] count; // Counter output


mod_n_up_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk; // Toggle the clock every 5 time units

initial begin
    clk = 0;
    reset = 0;
    reset = 1;
    #10 reset = 0;

    $display("Time   Count");
    $monitor($time, " clk=%b, reset=%b, count=%b", clk, reset, count);
    $display("%d   %b", $time, count);

    
    #100 $finish; 
end

endmodule
