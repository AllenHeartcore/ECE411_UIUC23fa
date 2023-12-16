`timescale 1ns / 1ps

module tb_mp3_data_array;

  // Parameters
  localparam NUM_WMASKS = 32;
  localparam DATA_WIDTH = 256;
  localparam ADDR_WIDTH = 4;
  localparam RAM_DEPTH = 1 << ADDR_WIDTH;
  localparam DELAY = 0;
  localparam VERBOSE = 0;
  localparam T_HOLD = 1;

  // Signals
  reg clk0;
  reg csb0;
  reg web0;
  reg [ADDR_WIDTH-1:0] addr0;
  reg [NUM_WMASKS-1:0] wmask0;
  reg [DATA_WIDTH-1:0] din0;
  wire [DATA_WIDTH-1:0] dout0;

  // Instantiate the Unit Under Test (UUT)
  mp3_data_array #(
      .NUM_WMASKS(NUM_WMASKS),
      .DATA_WIDTH(DATA_WIDTH),
      .ADDR_WIDTH(ADDR_WIDTH),
      .RAM_DEPTH(RAM_DEPTH),
      .DELAY(DELAY),
      .VERBOSE(VERBOSE),
      .T_HOLD(T_HOLD)
  ) uut (
      .clk0(clk0),
      .csb0(csb0),
      .web0(web0),
      .wmask0(wmask0),
      .addr0(addr0),
      .din0(din0),
      .dout0(dout0)
  );

  // Clock generation
  always #5 clk0 = ~clk0;

  // Test sequence
  initial begin
    // Initialize Inputs
    clk0 = 0;
    csb0 = 1; // Chip select is active low
    web0 = 1; // Write enable is active low
    addr0 = 0;
    wmask0 = 0;
    din0 = 0;

    // Wait for the global reset
    #100;
    csb0 = 0; // Enable chip select
    web0 = 1; // Read mode

    // Read from an uninitialized address
    addr0 = 3; // Random address for demonstration
    #10; // Wait for a clock cycle

    // Display the read value
    $display("Time: %t, Read data: %h", $time, dout0);
    #10;

    // Finish the simulation
    $finish;
  end

endmodule
