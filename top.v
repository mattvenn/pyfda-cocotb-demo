`default_nettype none
module top (
    input wire clk,
    input wire signed [15:0] data_in,
    input wire signed [15:0] data_out
    );

    `ifdef COCOTB_SIM
        initial begin
            $dumpfile ("top.vcd");
            $dumpvars (0, top);
            #1;
        end
    `endif

    assign data_out = data_in;

endmodule
