module mod_n_up_counter (
    input wire clk,        // Clock input
    input wire reset,      // Reset input
    output reg [3:0] count // 4-bit counter output
);

parameter N = 16; 

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'b0000; 
    end
    else begin
        if (count == N - 1) begin
            count <= 4'b0000; 
        end
        else begin
            count <= count + 1; 
        end
    end
end

endmodule
