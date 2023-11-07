`timescale 1ns / 1ps

module arbiter_tb();

    logic         clk;
    logic         rst;

    logic [31:0]  ipmem_address;
    logic         ipmem_read;
    logic [255:0] ipmem_rdata;
    logic         ipmem_resp;

    logic [31:0]  dpmem_address;
    logic [255:0] dpmem_wdata;
    logic         dpmem_write;
    logic         dpmem_read;
    logic [255:0] dpmem_rdata;
    logic         dpmem_resp;

    logic [31:0]  pmem_address;
    logic [255:0] pmem_wdata;
    logic         pmem_write;
    logic         pmem_read;
    logic [255:0] pmem_rdata;
    logic         pmem_resp;

    arbiter dut (
        .clk(clk),
        .rst(rst),

        .ipmem_address(ipmem_address),
        .ipmem_read(ipmem_read),
        .ipmem_rdata(ipmem_rdata),
        .ipmem_resp(ipmem_resp),

        .dpmem_address(dpmem_address),
        .dpmem_wdata(dpmem_wdata),
        .dpmem_write(dpmem_write),
        .dpmem_read(dpmem_read),
        .dpmem_rdata(dpmem_rdata),
        .dpmem_resp(dpmem_resp),

        .pmem_address(pmem_address),
        .pmem_wdata(pmem_wdata),
        .pmem_write(pmem_write),
        .pmem_read(pmem_read),
        .pmem_rdata(pmem_rdata),
        .pmem_resp(pmem_resp)
    );

    // Clock generation
    always #5 clk = ~clk; // Generate a clock with 10ns period

    // Reset process
    initial begin
        clk = 0;
        rst = 1;
        #15;
        rst = 0; // Release reset after 15ns
    end

    // Test process
    initial begin
        // Initialize inputs
        ipmem_address = 0;
        ipmem_read = 0;
        dpmem_address = 0;
        dpmem_wdata = 0;
        dpmem_write = 0;
        dpmem_read = 0;
        pmem_rdata = 0;
        pmem_resp = 0;
        #20; // Wait for reset release

        // Test data read prioritization over instruction read
        @(posedge clk);
        ipmem_address = 32'hDDDD_DDDD;
        ipmem_read = 1'b1;
        dpmem_address = 32'hEEEE_EEEE;
        dpmem_read = 1'b1;
        #10; // Wait for a cycle

        // Check priority response
        assert(pmem_address == dpmem_address) else $fatal("Priority test failed: dpmem_read not prioritized.");
        
        // Simulate pmem response for dpmem_read
        pmem_rdata = 256'hCAFE_BABE;
        pmem_resp = 1'b1;
        @(posedge clk);
        pmem_resp = 1'b0;
        dpmem_read = 1'b0; // Clear the read request for data memory

        // Simulate pmem response for ipmem_read
        @(posedge clk);
        pmem_rdata = 256'hFACE_FEED;
        pmem_resp = 1'b1;
        @(posedge clk);
        ipmem_read = 1'b0; // Clear the read request for instruction memory
        pmem_resp = 1'b0;

        // Check if ipmem_read was served after dpmem_read
        assert(ipmem_resp && ipmem_rdata == 256'hFACE_FEED) else $fatal("ipmem_read not served correctly after dpmem_read.");

        $finish; // End the simulation
    end

endmodule
