// OpenRAM SRAM model
// Words: 16
// Word size: 256
// Write size: 8

module mp3_data_array(
`ifdef USE_POWER_PINS
    vdd,
    gnd,
`endif
// Port 0: RW
    clk0,csb0,web0,wmask0,addr0,din0,dout0
  );

  parameter NUM_WMASKS = 32 ;
  parameter DATA_WIDTH = 256 ;
  parameter ADDR_WIDTH = 4 ;
  parameter RAM_DEPTH = 1 << ADDR_WIDTH;
  // FIXME: This delay is arbitrary.
  parameter DELAY = 0 ;
  parameter VERBOSE = 0 ; //Set to 0 to only display warnings
  parameter T_HOLD = 1 ; //Delay to hold dout value after posedge. Value is arbitrary

`ifdef USE_POWER_PINS
    inout vdd;
    inout gnd;
`endif
  input  clk0; // clock
  input   csb0; // active low chip select
  input  web0; // active low write control
  input [ADDR_WIDTH-1:0]  addr0;
  input [NUM_WMASKS-1:0]   wmask0; // write mask
  input [DATA_WIDTH-1:0]  din0;
  output [DATA_WIDTH-1:0] dout0;

  reg [DATA_WIDTH-1:0]    mem [0:RAM_DEPTH-1];

  reg  csb0_reg;
  reg  web0_reg;
  reg [NUM_WMASKS-1:0]   wmask0_reg;
  reg [ADDR_WIDTH-1:0]  addr0_reg;
  reg [DATA_WIDTH-1:0]  din0_reg;
  reg [DATA_WIDTH-1:0]  dout0;

  // All inputs are registers
  always @(posedge clk0)
  begin
    csb0_reg = csb0;
    web0_reg = web0;
    wmask0_reg = wmask0;
    addr0_reg = addr0;
    din0_reg = din0;
    
    if ( !csb0_reg && VERBOSE )
      $display($time," Reading %m addr0=%b dout0=%b",addr0_reg,mem[addr0_reg]);
    if ( !csb0_reg && !web0_reg && VERBOSE )
      $display($time," Writing %m addr0=%b din0=%b wmask0=%b",addr0_reg,din0_reg,wmask0_reg);
  end


  // Memory Write Block Port 0
  // Write Operation : When web0 = 0, csb0 = 0
  always @ (negedge clk0)
  begin : MEM_WRITE0
    if ( !csb0_reg && !web0_reg ) begin
        if (wmask0_reg[0])
                mem[addr0_reg][7:0] = din0_reg[7:0];
        if (wmask0_reg[1])
                mem[addr0_reg][15:8] = din0_reg[15:8];
        if (wmask0_reg[2])
                mem[addr0_reg][23:16] = din0_reg[23:16];
        if (wmask0_reg[3])
                mem[addr0_reg][31:24] = din0_reg[31:24];
        if (wmask0_reg[4])
                mem[addr0_reg][39:32] = din0_reg[39:32];
        if (wmask0_reg[5])
                mem[addr0_reg][47:40] = din0_reg[47:40];
        if (wmask0_reg[6])
                mem[addr0_reg][55:48] = din0_reg[55:48];
        if (wmask0_reg[7])
                mem[addr0_reg][63:56] = din0_reg[63:56];
        if (wmask0_reg[8])
                mem[addr0_reg][71:64] = din0_reg[71:64];
        if (wmask0_reg[9])
                mem[addr0_reg][79:72] = din0_reg[79:72];
        if (wmask0_reg[10])
                mem[addr0_reg][87:80] = din0_reg[87:80];
        if (wmask0_reg[11])
                mem[addr0_reg][95:88] = din0_reg[95:88];
        if (wmask0_reg[12])
                mem[addr0_reg][103:96] = din0_reg[103:96];
        if (wmask0_reg[13])
                mem[addr0_reg][111:104] = din0_reg[111:104];
        if (wmask0_reg[14])
                mem[addr0_reg][119:112] = din0_reg[119:112];
        if (wmask0_reg[15])
                mem[addr0_reg][127:120] = din0_reg[127:120];
        if (wmask0_reg[16])
                mem[addr0_reg][135:128] = din0_reg[135:128];
        if (wmask0_reg[17])
                mem[addr0_reg][143:136] = din0_reg[143:136];
        if (wmask0_reg[18])
                mem[addr0_reg][151:144] = din0_reg[151:144];
        if (wmask0_reg[19])
                mem[addr0_reg][159:152] = din0_reg[159:152];
        if (wmask0_reg[20])
                mem[addr0_reg][167:160] = din0_reg[167:160];
        if (wmask0_reg[21])
                mem[addr0_reg][175:168] = din0_reg[175:168];
        if (wmask0_reg[22])
                mem[addr0_reg][183:176] = din0_reg[183:176];
        if (wmask0_reg[23])
                mem[addr0_reg][191:184] = din0_reg[191:184];
        if (wmask0_reg[24])
                mem[addr0_reg][199:192] = din0_reg[199:192];
        if (wmask0_reg[25])
                mem[addr0_reg][207:200] = din0_reg[207:200];
        if (wmask0_reg[26])
                mem[addr0_reg][215:208] = din0_reg[215:208];
        if (wmask0_reg[27])
                mem[addr0_reg][223:216] = din0_reg[223:216];
        if (wmask0_reg[28])
                mem[addr0_reg][231:224] = din0_reg[231:224];
        if (wmask0_reg[29])
                mem[addr0_reg][239:232] = din0_reg[239:232];
        if (wmask0_reg[30])
                mem[addr0_reg][247:240] = din0_reg[247:240];
        if (wmask0_reg[31])
                mem[addr0_reg][255:248] = din0_reg[255:248];
    end
  end

  // Memory Read Block Port 0
  // Read Operation : When web0 = 1, csb0 = 0
  always @ (negedge clk0)
  begin : MEM_READ0
    if (!csb0_reg)
       dout0 <=  mem[addr0_reg];
  end

endmodule
