`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 12:54:06 PM
// Design Name: 
// Module Name: AxisToI2s
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AxisToI2sFifo
(
    // AXI-Stream interface
    input  wire audio_axis_clk,
    input  wire audio_axis_resetn,
    input  wire [31:0] audio_axis_tdata,
    output wire audio_axis_tready,
    input  wire audio_axis_tvalid,

    // audio clock and reset
	input wire audioClkIn,

    // i2s	
	output wire mclkOut,
	output wire bclkOut,
	output wire lrclkOut,
	output wire sdataOut,
	
    // more data needed interrupt
    output wire moreDataNeededInterrupt
);

parameter FIFO_SAMPLE_DEPTH=512; // Has to be power of 2
parameter FIFO_SAMPLE_MAINTAIN_DEPTH=256;

// so the  basic idea is that here we just read from the stream when valid and write to the fifo
// The I2sPcm5102 just reads from the fifo
// we have an interrupt to signal when more data is required

// so audio_axis_tready should be true whenever there is space in the fifo


// the fifo
wire fifo_wr_clk;
wire fifo_wr_en;
wire [23:0] fifo_din;

wire fifo_rd_clk;
wire fifo_rd_en;
wire [47:0] fifo_dout;


wire fifo_data_valid;
wire fifo_empty;
wire fifo_full;

wire fifo_prog_empty;

wire fifo_rst;

wire [6:0] fifo_wr_data_count;
wire [6:0] fifo_rd_data_count;

wire fifo_wr_reset_busy;
wire fifo_rd_reset_busy;
wire fifo_is_reset;

wire slowReset;

// xpm_cdc_single: Single-bit Synchronizer
// Xilinx Parameterized Macro, version 2025.1

xpm_cdc_single #(
   .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
   .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
   .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   .SRC_INPUT_REG(1)   // DECIMAL; 0=do not register input, 1=register input
)
xpm_cdc_single_inst (
   .dest_out(slowReset), // 1-bit output: src_in synchronized to the destination clock domain. This output is registered.
   .dest_clk(audioClkIn), // 1-bit input: Clock signal for the destination clock domain.
   .src_clk(audio_axis_clk),   // 1-bit input: optional; required when SRC_INPUT_REG = 1
   .src_in(audio_axis_resetn)      // 1-bit input: Input signal to be synchronized to dest_clk domain.
);

// End of xpm_cdc_single_inst instantiation

xpm_fifo_async #(
  .FIFO_MEMORY_TYPE("block"), // String
  .FIFO_READ_LATENCY(1),      // DECIMAL
  .FIFO_WRITE_DEPTH(FIFO_SAMPLE_DEPTH),     // DECIMAL
  .READ_DATA_WIDTH(48),       // DECIMAL
  .USE_ADV_FEATURES("1604"),  // data_valid, prog_empty, wr_data_count, rd_data_count
  .WRITE_DATA_WIDTH(24),       // DECIMAL
  .RD_DATA_COUNT_WIDTH(7),
  .WR_DATA_COUNT_WIDTH(7)
)
xpm_fifo_async_inst (
  .wr_clk(fifo_wr_clk),               
  .wr_en(fifo_wr_en),                  
  .din(fifo_din),                    

  .rd_clk(fifo_rd_clk),               
  .rd_en(fifo_rd_en),                 
  .dout(fifo_dout),                   

  .data_valid(fifo_data_valid),
  .empty(fifo_empty), 
  .full(fifo_full),                 

  .prog_empty(fifo_prog_empty),
   
  .rst(fifo_rst),   
  .sleep(1'b0),
  
  .wr_data_count(fifo_wr_data_count),
  .rd_data_count(fifo_rd_data_count),
  
  .wr_rst_busy(fifo_wr_reset_busy),
  .rd_rst_busy(fifo_rd_reset_busy)
                  
);

// fifo to i2s

wire readyOut;
I2sPcm5102 i2c(
    .clkIn(audioClkIn),
    .resetIn(!slowReset),
    .audioCombinedIn(fifo_dout),
    .readyOut(readyOut),
    .mclkOut(mclkOut),
    .bclkOut(bclkOut),
    .lrclkOut(lrclkOut),
    .sdataOut(sdataOut)
);    


// Axi stream write into fifo
wire streamDataReady; 


assign fifo_wr_clk = audio_axis_clk;
assign fifo_wr_en = streamDataReady && fifo_is_running;
assign fifo_din = audio_axis_tdata;

assign fifo_rd_clk = audioClkIn;
assign fifo_rd_en  = readyOut && fifo_is_running;

assign fifo_rst = !audio_axis_resetn;

// we can read more data as long as fifo is not full
assign audio_axis_tready = !fifo_full && fifo_is_running;
assign streamDataReady= (audio_axis_tready && audio_axis_tvalid);
assign moreDataNeededInterrupt = fifo_prog_empty;

assign fifo_is_running = !(fifo_wr_reset_busy || fifo_rd_reset_busy);

//always @(posedge audio_axis_clk) begin
//    if (audio_axis_resetn == 0) begin
//        // reset logic
//    end 
//end

//// Audio read from fifo
//always @(posedge audioClkIn) begin
//end


//reg  [47:0] dataFast;
//wire [47:0] dataSlow;

//wire readyFast, readySlow;
//wire audio_axis_resetn_slow;

//wire axisTransferDone;
//wire axisTransferDoneL;
//wire axisTransferDoneR;
//wire axisTready;

//reg  srcSend; 
//wire srcRcv;
//wire destReq;

//// data
//wire load;

//localparam STATE_WAIT_TRANSMITTER_READY=0, STATE_WAIT_VALID=1, STATE_WAIT_TRANSMITTER_BUSY=2;


//xpm_cdc_single #
//(
//    .DEST_SYNC_FF   (4),    // DECIMAL; range: 2-10
//    .INIT_SYNC_FF   (0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
//    .SIM_ASSERT_CHK (0),    // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
//    .SRC_INPUT_REG  (1)     // DECIMAL; 0=do not register input, 1=register input
//)
//xpm_cdc_single_inst
//(
//    .src_clk    ( audioClkIn ),  // 1-bit input: optional; required when SRC_INPUT_REG = 1
//    .dest_clk   ( audio_axis_clk     ),  // 1-bit input: Clock signal for the destination clock domain.
    
//    .src_in     ( readySlow  ),  // 1-bit input: Input signal to be synchronized to dest_clk domain.
//    .dest_out   ( readyFast  )   // 1-bit output: src_in synchronized to the destination clock domain. This output is registered.
//);

//xpm_cdc_single #
//(
//    .DEST_SYNC_FF   (4),    // DECIMAL; range: 2-10
//    .INIT_SYNC_FF   (0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
//    .SIM_ASSERT_CHK (0),    // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
//    .SRC_INPUT_REG  (1)     // DECIMAL; 0=do not register input, 1=register input
//)
//xpm_cdc_single_inst_reset
//(
//    .src_clk    ( audio_axis_clk ),  // 1-bit input: optional; required when SRC_INPUT_REG = 1
//    .dest_clk   ( audioClkIn     ),  // 1-bit input: Clock signal for the destination clock domain.
    
//    .src_in     ( audio_axis_resetn  ),  // 1-bit input: Input signal to be synchronized to dest_clk domain.
//    .dest_out   ( audio_axis_resetn_slow  )   // 1-bit output: src_in synchronized to the destination clock domain. This output is registered.
//);

//xpm_cdc_handshake #
//(
//    .DEST_EXT_HSK   ( 0             ),  // DECIMAL; 0 = internal handshake, 1 = external handshake
//    .DEST_SYNC_FF   ( 4             ),  // DECIMAL; range: 2-10
//    .INIT_SYNC_FF   ( 0             ),  // DECIMAL; 0 = disable simulation init values, 1 = enable simulation init values
//    .SIM_ASSERT_CHK ( 0             ),  // DECIMAL; 0 = disable simulation messages, 1 = enable simulation messages
//    .SRC_SYNC_FF    ( 4             ),  // DECIMAL; range: 2-10
//    .WIDTH          ( 48            )   // DECIMAL; range: 1-1024
//)
//xpm_cdc_handshake_inst
//(
//    .src_clk    ( audio_axis_clk     ),  // 1-bit input: Source clock.
//    .dest_clk   ( audioClkIn ),  // 1-bit input: Destination clock.
    
//    .src_in     ( dataFast  ),  // WIDTH-bit input: Input bus that will be synchronized to the destination clock domain.
//    .dest_out   ( dataSlow  ),  // WIDTH-bit output: Input bus (src_in) synchronized to destination clock domain. This output is registered.
    
//    .src_send   ( srcSend   ),  // 1-bit input: Assertion of this signal allows the src_in bus to be synchronized to
//                                // the destination clock domain. This signal should only be asserted when src_rcv is
//                                // deasserted, indicating that the previous data transfer is complete. This signal
//                                // should only be deasserted once src_rcv is asserted, acknowledging that the src_in
//                                // has been received by the destination logic.
    
//    .dest_req   ( destReq   ),  // 1-bit output: Assertion of this signal indicates that new dest_out data has been
//                                // received and is ready to be used or captured by the destination logic. When
//                                // DEST_EXT_HSK = 1, this signal will deassert once the source handshake
//                                // acknowledges that the destination clock domain has received the transferred data.
//                                // When DEST_EXT_HSK = 0, this signal asserts for one clock period when dest_out bus
//                                // is valid. This output is registered.
    
//    .src_rcv    ( srcRcv    ),  // 1-bit output: Acknowledgement from destination logic that src_in has been
//                                // received. This signal will be deasserted once destination handshake has fully
//                                // completed, thus completing a full data transfer. This output is registered.
    
//   .dest_ack    ( 0         )   // 1-bit input: optional; required when DEST_EXT_HSK = 1
//);

//xpm_fifo_async #(
//  .FIFO_MEMORY_TYPE("block"), // String
//  .FIFO_READ_LATENCY(1),      // DECIMAL
//  .FIFO_WRITE_DEPTH(512),      // DECIMAL
//  .READ_DATA_WIDTH(64),       // DECIMAL
//  .USE_ADV_FEATURES("1000"),
//  .WRITE_DATA_WIDTH(32)       // DECIMAL
//)
//xpm_fifo_async_inst (
//  .data_valid(sync),
//  .dout(dst_data),                   
//  .din(src_data),                    
//  .rd_clk(dst_clk),               
//  .rd_en(dst_valid),                 
//  .rst(rst),   
//  .empty(empty), 
//  .full(full),                 
//  .sleep(1'b0),                 
//  .wr_clk(audio_axis_clk),               
//  .wr_en(src_valid)                  
//);


//// xpm_fifo_async: Asynchronous FIFO
//// Xilinx Parameterized Macro, version 2025.1

//xpm_fifo_async #(
//   .CASCADE_HEIGHT(0),            // DECIMAL
//   .CDC_SYNC_STAGES(2),           // DECIMAL
//   .DOUT_RESET_VALUE("0"),        // String
//   .ECC_MODE("no_ecc"),           // String
//   .EN_SIM_ASSERT_ERR("warning"), // String
//   .FIFO_MEMORY_TYPE("auto"),     // String
//   .FIFO_READ_LATENCY(1),         // DECIMAL
//   .FIFO_WRITE_DEPTH(2048),       // DECIMAL
//   .FULL_RESET_VALUE(0),          // DECIMAL
//   .PROG_EMPTY_THRESH(10),        // DECIMAL
//   .PROG_FULL_THRESH(10),         // DECIMAL
//   .RD_DATA_COUNT_WIDTH(1),       // DECIMAL
//   .READ_DATA_WIDTH(32),          // DECIMAL
//   .READ_MODE("std"),             // String
//   .RELATED_CLOCKS(0),            // DECIMAL
//   .SIM_ASSERT_CHK(0),            // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
//   .USE_ADV_FEATURES("0707"),     // String
//   .WAKEUP_TIME(0),               // DECIMAL
//   .WRITE_DATA_WIDTH(32),         // DECIMAL
//   .WR_DATA_COUNT_WIDTH(1)        // DECIMAL
//)
//xpm_fifo_async_inst (
//   .almost_empty(almost_empty),   // 1-bit output: Almost Empty : When asserted, this signal indicates that only one more read can be performed
//                                  // before the FIFO goes to empty.

//   .almost_full(almost_full),     // 1-bit output: Almost Full: When asserted, this signal indicates that only one more write can be performed
//                                  // before the FIFO is full.

//   .data_valid(data_valid),       // 1-bit output: Read Data Valid: When asserted, this signal indicates that valid data is available on the
//                                  // output bus (dout).

//   .dbiterr(dbiterr),             // 1-bit output: Double Bit Error: Indicates that the ECC decoder detected a double-bit error and data in the
//                                  // FIFO core is corrupted.

//   .dout(dout),                   // READ_DATA_WIDTH-bit output: Read Data: The output data bus is driven when reading the FIFO.
//   .empty(empty),                 // 1-bit output: Empty Flag: When asserted, this signal indicates that the FIFO is empty. Read requests are
//                                  // ignored when the FIFO is empty, initiating a read while empty is not destructive to the FIFO.

//   .full(full),                   // 1-bit output: Full Flag: When asserted, this signal indicates that the FIFO is full. Write requests are
//                                  // ignored when the FIFO is full, initiating a write when the FIFO is full is not destructive to the contents of
//                                  // the FIFO.

//   .overflow(overflow),           // 1-bit output: Overflow: This signal indicates that a write request (wren) during the prior clock cycle was
//                                  // rejected, because the FIFO is full. Overflowing the FIFO is not destructive to the contents of the FIFO.

//   .prog_empty(prog_empty),       // 1-bit output: Programmable Empty: This signal is asserted when the number of words in the FIFO is less than
//                                  // or equal to the programmable empty threshold value. It is de-asserted when the number of words in the FIFO
//                                  // exceeds the programmable empty threshold value.

//   .prog_full(prog_full),         // 1-bit output: Programmable Full: This signal is asserted when the number of words in the FIFO is greater than
//                                  // or equal to the programmable full threshold value. It is de-asserted when the number of words in the FIFO is
//                                  // less than the programmable full threshold value.

//   .rd_data_count(rd_data_count), // RD_DATA_COUNT_WIDTH-bit output: Read Data Count: This bus indicates the number of words read from the FIFO.
//   .rd_rst_busy(rd_rst_busy),     // 1-bit output: Read Reset Busy: Active-High indicator that the FIFO read domain is currently in a reset state.
//   .sbiterr(sbiterr),             // 1-bit output: Single Bit Error: Indicates that the ECC decoder detected and fixed a single-bit error.
//   .underflow(underflow),         // 1-bit output: Underflow: Indicates that the read request (rd_en) during the previous clock cycle was rejected
//                                  // because the FIFO is empty. Under flowing the FIFO is not destructive to the FIFO.

//   .wr_ack(wr_ack),               // 1-bit output: Write Acknowledge: This signal indicates that a write request (wr_en) during the prior clock
//                                  // cycle is succeeded.

//   .wr_data_count(wr_data_count), // WR_DATA_COUNT_WIDTH-bit output: Write Data Count: This bus indicates the number of words written into the
//                                  // FIFO.

//   .wr_rst_busy(wr_rst_busy),     // 1-bit output: Write Reset Busy: Active-High indicator that the FIFO write domain is currently in a reset
//                                  // state.

//   .din(din),                     // WRITE_DATA_WIDTH-bit input: Write Data: The input data bus used when writing the FIFO.
//   .injectdbiterr(injectdbiterr), // 1-bit input: Double Bit Error Injection: Injects a double bit error if the ECC feature is used on block RAMs
//                                  // or UltraRAM macros.

//   .injectsbiterr(injectsbiterr), // 1-bit input: Single Bit Error Injection: Injects a single bit error if the ECC feature is used on block RAMs
//                                  // or UltraRAM macros.

//   .rd_clk(rd_clk),               // 1-bit input: Read clock: Used for read operation. rd_clk must be a free running clock.
//   .rd_en(rd_en),                 // 1-bit input: Read Enable: If the FIFO is not empty, asserting this signal causes data (on dout) to be read
//                                  // from the FIFO. Must be held active-low when rd_rst_busy is active high.

//   .rst(rst),                     // 1-bit input: Reset: Must be synchronous to wr_clk. The clock(s) can be unstable at the time of applying
//                                  // reset, but reset must be released only after the clock(s) is/are stable.

//   .sleep(sleep),                 // 1-bit input: Dynamic power saving: If sleep is High, the memory/fifo block is in power saving mode.
//   .wr_clk(wr_clk),               // 1-bit input: Write clock: Used for write operation. wr_clk must be a free running clock.
//   .wr_en(wr_en)                  // 1-bit input: Write Enable: If the FIFO is not full, asserting this signal causes data (on din) to be written
//                                  // to the FIFO. Must be held active-low when rst or wr_rst_busy is active high.

//);

//// End of xpm_fifo_async_inst instantiation

//I2sPcm5102 i2c(
//    .clkIn(audioClkIn),
//    .resetIn(!audio_axis_resetn_slow),
//    .audioCombinedIn(dataSlow),
//    .readyOut(readySlow),
//    .mclkOut(mclkOut),
//    .bclkOut(bclkOut),
//    .lrclkOut(lrclkOut),
//    .sdataOut(sdataOut)
//);    


//reg [1:0] state,    // Current state
//          nxtState; // Next state

//reg axisTransferCount;

//assign axisTready = (state == STATE_WAIT_VALID);
//assign axisTransferDone = (axisTready &&  audio_axis_tvalid);

//assign audio_axis_tready = axisTready;

//always @(posedge audio_axis_clk) begin
//  if (audio_axis_resetn == 0) begin
//    state <= STATE_WAIT_TRANSMITTER_READY;   // Initial state
//    srcSend <= 0;
//    axisTransferCount <= 0;
//  end else 
//  begin
//    state <= state;
//    axisTransferCount <= axisTransferCount;
//    case (state)
//        // Waiting for i2s transmitter to need more data
//        STATE_WAIT_TRANSMITTER_READY : 
//        begin
//            if (readyFast && !srcRcv) 
//                state <= STATE_WAIT_VALID;
//        end
             
//        // get data from fifo for transmitter
//        STATE_WAIT_VALID : 
//        begin
//            if(axisTransferDone)
//            begin
//                if(axisTransferCount == 0)
//                begin
//                    dataFast[47:24] <= audio_axis_tdata;
//                    srcSend <= 0;
//                    axisTransferCount <= 1;
//                end
//                else 
//                begin
//                    dataFast[23:0] <= audio_axis_tdata;
//                    srcSend <= 1;
//                    state <= STATE_WAIT_TRANSMITTER_BUSY;
//                    axisTransferCount <= 0;
//                end
//            end
//        end

//        // wait for transmitter to finish
//        STATE_WAIT_TRANSMITTER_BUSY : 
//        begin
//            if(!readyFast && srcRcv)
//            begin
//                srcSend <= 0;
//                state <= STATE_WAIT_TRANSMITTER_READY;
//            end
//        end
//    endcase
//  end
//end

endmodule
