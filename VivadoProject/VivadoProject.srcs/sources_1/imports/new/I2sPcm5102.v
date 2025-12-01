`timescale 1ns / 1ps

module I2sPcm5102 #(parameter SAMPLE_SIZE = 24, ALIGN_RIGHT =0, OFFSET_BY_ONE_SAMPLE = 1)
(
	input wire clkIn,
	input wire resetIn,
	
	// data
	input wire [(SAMPLE_SIZE*2) - 1:0] audioCombinedIn,
	output reg readyOut,

    // i2s	
	output wire mclkOut,
	output wire bclkOut,
	output wire lrclkOut,
	output wire sdataOut
);
	
	localparam W_OUT_VALUE = 32;
	localparam MCLK_BIT = 0;
	localparam BCLK_BIT = MCLK_BIT + 3;
	localparam LRCLK_BIT = BCLK_BIT + 6; 
	
	reg [LRCLK_BIT - 1:0] clk_div;
	reg [31:0] shift;
	wire [31:0] data_aligned_r;
	wire [31:0] data_aligned_l;
	reg signed [SAMPLE_SIZE - 1:0] dataLeft;
	reg signed [SAMPLE_SIZE - 1:0] dataRight;
	
	// Output clocks
	generate
		if (MCLK_BIT) begin : gen_MCLK_BIT
			assign mclkOut = clk_div[MCLK_BIT - 1];
		end
		else begin : gen_not_MCLK_BIT
			assign mclkOut = clkIn;
		end
	endgenerate
	
	assign bclkOut = clk_div[BCLK_BIT - 1];
	assign lrclkOut = clk_div[LRCLK_BIT - 1];
	
	// output data
	assign sdataOut = shift[31];
	
	always @(posedge clkIn or posedge resetIn)
		if (resetIn)
		begin
			dataLeft <= 1'sb0;
			dataRight <= 1'sb0;
		end
		else
		begin
		    dataLeft <= audioCombinedIn[(SAMPLE_SIZE*2)-1:(SAMPLE_SIZE*2)-24];
		    dataRight <= audioCombinedIn[(SAMPLE_SIZE)-1:0];
	    end

	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	
	
	assign data_aligned_l = (ALIGN_RIGHT ? sv2v_cast_32_signed(dataLeft) : {dataLeft, {W_OUT_VALUE - SAMPLE_SIZE {1'b0}}});
	assign data_aligned_r = (ALIGN_RIGHT ? sv2v_cast_32_signed(dataRight) : {dataRight, {W_OUT_VALUE - SAMPLE_SIZE {1'b0}}});
	
	always @(posedge clkIn or posedge resetIn)
		if (resetIn)
			clk_div <= 1'sb0;
		else
			clk_div <= clk_div + 1'd1;
		
	always @(posedge clkIn or posedge resetIn)
	begin
        readyOut <= 0;
        if (resetIn)
			shift <= 1'sb0;
		else if (clk_div[LRCLK_BIT - 2:0] == {{(LRCLK_BIT - BCLK_BIT) - 1 {!OFFSET_BY_ONE_SAMPLE}}, {BCLK_BIT {1'b1}}})
		begin
		    // 12s - lrclk = low for left
		    if(lrclkOut)
		    begin
			  shift <= data_aligned_r;
			  readyOut <= 1;
			end
			else
			begin
			  shift <= data_aligned_l;
			end
		end
		else if (clk_div[BCLK_BIT - 1:0] == {BCLK_BIT * 1 {1'sb1}})
			shift <= shift << 1;
    end
endmodule
 
//module I2sPcm5102
//(
//	input wire clk,
//	input wire reset,
	
//	// data
//	input wire [in_res - 1:0] data_in_l,
//	input wire [in_res - 1:0] data_in_r,
//	output reg ready_l,
//	output reg ready_r,

//    // i2s	
//	output wire mclk,
//	output wire bclk,
//	output wire lrclk,
//	output wire sdata
//);

//	parameter in_res = 24;
//	parameter align_right = 0;
//	parameter offset_by_one_cycle = 1;
	
	
//	localparam W_OUT_VALUE = 32;
//	localparam MCLK_BIT = 0;
//	localparam BCLK_BIT = MCLK_BIT + 3;
//	localparam LRCLK_BIT = BCLK_BIT + 6; 
	
//	reg [LRCLK_BIT - 1:0] clk_div;
//	reg [31:0] shift;
//	wire [31:0] data_aligned_r;
//	wire [31:0] data_aligned_l;
//	reg signed [in_res - 1:0] dataLeft;
//	reg signed [in_res - 1:0] dataRight;
	
//	// Output clocks
//	generate
//		if (MCLK_BIT) begin : gen_MCLK_BIT
//			assign mclk = clk_div[MCLK_BIT - 1];
//		end
//		else begin : gen_not_MCLK_BIT
//			assign mclk = clk;
//		end
//	endgenerate
	
//	assign bclk = clk_div[BCLK_BIT - 1];
//	assign lrclk = clk_div[LRCLK_BIT - 1];
	
//	// output data
//	assign sdata = shift[31];
	
//	always @(posedge clk or posedge reset)
//		if (reset)
//		begin
//			dataLeft <= 1'sb0;
//			dataRight <= 1'sb0;
//		end
//		else
//		begin
//			dataLeft <= {data_in_l[in_res - 1], data_in_l[in_res - 2:0]};
//			dataRight <= {data_in_r[in_res - 1], data_in_r[in_res - 2:0]};
//	    end

//	function automatic signed [31:0] sv2v_cast_32_signed;
//		input reg signed [31:0] inp;
//		sv2v_cast_32_signed = inp;
//	endfunction
	
//	assign data_aligned_l = (align_right ? sv2v_cast_32_signed(dataLeft) : {dataLeft, {W_OUT_VALUE - in_res {1'b0}}});
//	assign data_aligned_r = (align_right ? sv2v_cast_32_signed(dataRight) : {dataRight, {W_OUT_VALUE - in_res {1'b0}}});
	
//	always @(posedge clk or posedge reset)
//		if (reset)
//			clk_div <= 1'sb0;
//		else
//			clk_div <= clk_div + 1'd1;
		
//	always @(posedge clk or posedge reset)
//	begin
//        ready_r <= 0;
//        ready_l <= 0;
//        if (reset)
//			shift <= 1'sb0;
//		else if (clk_div[LRCLK_BIT - 2:0] == {{(LRCLK_BIT - BCLK_BIT) - 1 {!offset_by_one_cycle}}, {BCLK_BIT {1'b1}}})
//		begin
//		    // 12s - lrclk = low for left
//		    if(lrclk)
//		    begin
//			  shift <= data_aligned_r;
//			  ready_l <= 1;
//			end
//			else
//			begin
//			  shift <= data_aligned_l;
//			  ready_r <= 1;
//			end
//		end
//		else if (clk_div[BCLK_BIT - 1:0] == {BCLK_BIT * 1 {1'sb1}})
//			shift <= shift << 1;
//    end
//endmodule


