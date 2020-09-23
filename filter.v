/* Machine-generated using Migen */
module filter(
	input signed [15:0] i,
	output signed [15:0] o,
	input sys_clk,
	input sys_rst
);

reg signed [15:0] sreg0 = 16'sd0;
reg signed [15:0] sreg1 = 16'sd0;
reg signed [15:0] sreg2 = 16'sd0;
reg signed [15:0] sreg3 = 16'sd0;
reg signed [15:0] sreg4 = 16'sd0;
reg signed [15:0] sreg5 = 16'sd0;
reg signed [15:0] sreg6 = 16'sd0;
reg signed [15:0] sreg7 = 16'sd0;
reg signed [15:0] sreg8 = 16'sd0;
reg signed [15:0] sreg9 = 16'sd0;
reg signed [15:0] sreg10 = 16'sd0;
reg signed [15:0] sreg11 = 16'sd0;
reg signed [15:0] sreg12 = 16'sd0;
reg signed [15:0] sreg13 = 16'sd0;
reg signed [15:0] sreg14 = 16'sd0;
reg signed [15:0] sreg15 = 16'sd0;
reg signed [15:0] sreg16 = 16'sd0;
reg signed [15:0] sreg17 = 16'sd0;
reg signed [15:0] sreg18 = 16'sd0;
reg signed [15:0] sreg19 = 16'sd0;
reg signed [15:0] sreg20 = 16'sd0;
reg signed [35:0] sum_full = 36'sd0;
wire signed [31:0] sum_accu;
wire signed [35:0] sig_i_q0;
wire signed [31:0] sig_o0;
wire signed [31:0] sig_i_q1;
wire signed [15:0] sig_o1;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign sig_i_q0 = (sum_full <<< 1'd0);
assign sig_o0 = sig_i_q0;
assign sum_accu = sig_o0;
assign sig_i_q1 = (sum_accu >>> 4'd15);
assign sig_o1 = sig_i_q1;
assign o = sig_o1;

always @(posedge sys_clk) begin
	sreg0 <= i;
	sreg1 <= sreg0;
	sreg2 <= sreg1;
	sreg3 <= sreg2;
	sreg4 <= sreg3;
	sreg5 <= sreg4;
	sreg6 <= sreg5;
	sreg7 <= sreg6;
	sreg8 <= sreg7;
	sreg9 <= sreg8;
	sreg10 <= sreg9;
	sreg11 <= sreg10;
	sreg12 <= sreg11;
	sreg13 <= sreg12;
	sreg14 <= sreg13;
	sreg15 <= sreg14;
	sreg16 <= sreg15;
	sreg17 <= sreg16;
	sreg18 <= sreg17;
	sreg19 <= sreg18;
	sreg20 <= sreg19;
	sum_full <= ((((((((((((((((((((($signed({1'd0, 11'd1135}) * sreg0) + ($signed({1'd0, 10'd512}) * sreg1)) + ($signed({1'd0, 9'd364}) * sreg2)) + (6'sd46 * sreg3)) + (11'sd1406 * sreg4)) + (12'sd2625 * sreg5)) + (13'sd5777 * sreg6)) + (13'sd4839 * sreg7)) + (14'sd12231 * sreg8)) + (14'sd11695 * sreg9)) + ($signed({1'd0, 15'd27889}) * sreg10)) + (14'sd11695 * sreg11)) + (14'sd12231 * sreg12)) + (13'sd4839 * sreg13)) + (13'sd5777 * sreg14)) + (12'sd2625 * sreg15)) + (11'sd1406 * sreg16)) + (6'sd46 * sreg17)) + ($signed({1'd0, 9'd364}) * sreg18)) + ($signed({1'd0, 10'd512}) * sreg19)) + ($signed({1'd0, 11'd1135}) * sreg20));
	if (sys_rst) begin
		sreg0 <= 16'sd0;
		sreg1 <= 16'sd0;
		sreg2 <= 16'sd0;
		sreg3 <= 16'sd0;
		sreg4 <= 16'sd0;
		sreg5 <= 16'sd0;
		sreg6 <= 16'sd0;
		sreg7 <= 16'sd0;
		sreg8 <= 16'sd0;
		sreg9 <= 16'sd0;
		sreg10 <= 16'sd0;
		sreg11 <= 16'sd0;
		sreg12 <= 16'sd0;
		sreg13 <= 16'sd0;
		sreg14 <= 16'sd0;
		sreg15 <= 16'sd0;
		sreg16 <= 16'sd0;
		sreg17 <= 16'sd0;
		sreg18 <= 16'sd0;
		sreg19 <= 16'sd0;
		sreg20 <= 16'sd0;
		sum_full <= 36'sd0;
	end
end

endmodule

