// SDRAM timing model
// Based on MT48LC64M4A2-75
// Limitations:
//   No refresh support
//   No auto precharge / Open page only
//   Burst does not support page wrap around (please align your access on n-burst boundary)
//   Simplified memory controller with no queue and bank activation/precharge interleaving

module burst_memory
#(
    parameter     MEMFILE               = "memory.lst",
    parameter int DRAM_TIMMING_CL       = 20,   // In ns, aka tCAS, column access time
    parameter int DRAM_TIMMING_tRCD     = 20,   // in ns, active to r/w delay
    parameter int DRAM_TIMMING_tRP      = 20,   // in ns, precharge time
    parameter int DRAM_TIMMING_tRAS     = 44,   // in ns, active to precharge delay
    parameter int DRAM_TIMMING_tRC      = 66,   // in ns, active to active delay
    parameter int DRAM_TIMMING_tRRD     = 15,   // in ns, different bank active delay
    parameter int DRAM_TIMMING_tWR      = 15,   // in ns, write recovery time
    parameter int DRAM_PARAM_BA_WIDTH   = 2,    // in bits
    parameter int DRAM_PARAM_RA_WIDTH   = 13,   // in bits
    parameter int DRAM_PARAM_CA_WIDTH   = 11,   // in bits
    parameter int DRAM_PARAM_BUS_WIDTH  = 64,   // in bits
    parameter int DRAM_PARAM_BURST_LEN  = 4     // in bursts
)(
    bmem_itf.mem itf
);

    timeunit 1ns;
    timeprecision 1ns;

    localparam int DRAM_PARAM_TOTAL_ADDR = DRAM_PARAM_BA_WIDTH + DRAM_PARAM_RA_WIDTH + DRAM_PARAM_CA_WIDTH;
    localparam int DRAM_PARAM_OFFSET_WIDTH = $clog2(DRAM_PARAM_BUS_WIDTH / 8);

    logic [DRAM_PARAM_BUS_WIDTH-1:0] internal_memory_array [logic [DRAM_PARAM_TOTAL_ADDR-1:0]];

    int signed active_row   [DRAM_PARAM_BA_WIDTH-1:0];
    int signed tRAS_counter [DRAM_PARAM_BA_WIDTH-1:0];
    int signed tRC_counter  [DRAM_PARAM_BA_WIDTH-1:0];
    int signed tRRD_counter;

    logic [DRAM_PARAM_CA_WIDTH-1:0]   col_addr   ;
    logic [DRAM_PARAM_BA_WIDTH-1:0]   bank_addr  ;
    logic [DRAM_PARAM_RA_WIDTH-1:0]   row_addr   ;
    logic [DRAM_PARAM_TOTAL_ADDR-1:0] total_addr ;

    assign                            col_addr   = itf.addr[ DRAM_PARAM_OFFSET_WIDTH +:  DRAM_PARAM_CA_WIDTH];
    assign                            bank_addr  = itf.addr[(DRAM_PARAM_OFFSET_WIDTH +   DRAM_PARAM_CA_WIDTH) +: DRAM_PARAM_BA_WIDTH];
    assign                            row_addr   = itf.addr[(DRAM_PARAM_OFFSET_WIDTH +   DRAM_PARAM_CA_WIDTH  +  DRAM_PARAM_BA_WIDTH) +: DRAM_PARAM_RA_WIDTH];
    assign                            total_addr = itf.addr[ DRAM_PARAM_OFFSET_WIDTH +: (DRAM_PARAM_CA_WIDTH  +  DRAM_PARAM_BA_WIDTH  +  DRAM_PARAM_RA_WIDTH)];

    always begin
        #1;
        if (tRRD_counter > 0) begin
            tRRD_counter -= 1;
        end
        for (int i = 0; i < 2**DRAM_PARAM_BA_WIDTH; i++) begin
            if (tRAS_counter[i] > 0) begin
                tRAS_counter[i] -= 1;
            end
            if (tRC_counter[i]  > 0) begin
                tRC_counter[i]  -= 1;
            end
        end
    end

    always @(posedge itf.clk iff !itf.rst) begin
        if (itf.read && itf.write) begin
            $error("Memory Error: Simultaneous read and write");
            itf.error <= 1'b1;
        end
        if ($isunknown(itf.read)) begin
            $error("Memory Error: read is 1'bx");
            itf.error <= 1'b1;
        end
        if ($isunknown(itf.write)) begin
            $error("Memory Error: write is 1'bx");
            itf.error <= 1'b1;
        end
        if (itf.read && itf.write) begin
            if ($isunknown(itf.addr)) begin
                $error("Memory Error: address contains 'x");
                itf.error <= 1'b1;
            end
        end
    end

    always @(posedge itf.clk) begin
        casez ({itf.rst, itf.read, itf.write})
            3'b1??: reset();
            3'b010: memread();
            3'b001: memwrite();
        endcase
    end

    initial itf.resp = 1'b0;

    task automatic reset();
        internal_memory_array.delete();
        $readmemh(MEMFILE, internal_memory_array);
        tRRD_counter = 0;
        for (int i = 0; i < 2**DRAM_PARAM_BA_WIDTH; i++) begin
            active_row[i] = -1;
            tRAS_counter[i] = 0;
            tRC_counter[i] = 0;
        end
        itf.resp <= 1'b0;
    endtask

    task automatic memread();
        logic [31:0] cached_addr;
        cached_addr = itf.addr;
        fork : f
            begin : error_check
                forever @(posedge itf.clk) begin
                    if (!itf.read) begin
                        $error("Memory Error: Read deasserted early");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.write) begin
                        $error("Memory Error: Write asserted during read");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.addr != cached_addr) begin
                        $error("Memory Error: Address changed");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                end
            end
            begin : memreader
                // prechage
                if (active_row[bank_addr] != int'(row_addr) && active_row[bank_addr] >= 0) begin
                    // waiting for active to precharge delay
                    while (tRAS_counter[bank_addr] != 0) begin
                        #1;
                    end
                    #(DRAM_TIMMING_tRP);
                end
                // active
                if (active_row[bank_addr] != int'(row_addr)) begin
                    // waiting for active delay, both in bank and cross bank;
                    while (tRRD_counter != 0 || tRC_counter[bank_addr] != 0) begin
                        #1;
                    end
                    tRAS_counter[bank_addr] = DRAM_TIMMING_tRAS;
                    tRRD_counter = DRAM_TIMMING_tRRD;
                    tRC_counter[bank_addr] = DRAM_TIMMING_tRC;
                    #(DRAM_TIMMING_tRCD);
                    active_row[bank_addr] = int'(row_addr);
                end
                // access column
                #(DRAM_TIMMING_CL)
                @(posedge itf.clk);
                for (int i = 0; i < DRAM_PARAM_BURST_LEN; i++) begin
                    itf.rdata <= internal_memory_array[total_addr + i];
                    itf.resp <= 1'b1;
                    @(posedge itf.clk);
                end
                itf.resp <= 1'b0;
                disable f;
            end
        join
    endtask

    task automatic memwrite();
        logic [31:0] cached_addr;
        cached_addr = itf.addr;
        fork : f
            begin : error_check
                forever @(posedge itf.clk) begin
                    if (!itf.write) begin
                        $error("Memory Error: Write deasserted early");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.read) begin
                        $error("Memory Error: Read asserted during Write");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.addr != cached_addr) begin
                        $error("Memory Error: Address changed");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                end
            end
            begin : memwrite
                // prechage
                if (active_row[bank_addr] != int'(row_addr) && active_row[bank_addr] >= 0) begin
                    // waiting for active to precharge delay
                    while (tRAS_counter[bank_addr] != 0) begin
                        #1;
                    end
                    #(DRAM_TIMMING_tRP);
                end
                // active
                if (active_row[bank_addr] != int'(row_addr)) begin
                    // waiting for active delay, both in bank and cross bank;
                    while (tRRD_counter != 0 || tRC_counter[bank_addr] != 0) begin
                        #1;
                    end
                    tRAS_counter[bank_addr] = DRAM_TIMMING_tRAS;
                    tRRD_counter = DRAM_TIMMING_tRRD;
                    tRC_counter[bank_addr] = DRAM_TIMMING_tRC;
                    #(DRAM_TIMMING_tRCD);
                    active_row[bank_addr] = int'(row_addr);
                end
                @(posedge itf.clk);
                itf.resp <= 1'b1;
                for (int i = 0; i < DRAM_PARAM_BURST_LEN; i++) begin
                    @(posedge itf.clk);
                    internal_memory_array[total_addr + i] = itf.wdata;
                end
                itf.resp <= 1'b0;
                disable f;
            end
        join
        #(DRAM_TIMMING_tWR);
    endtask

endmodule
