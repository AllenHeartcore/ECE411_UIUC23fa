module mp4
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // Use these for CP1 (magic memory)
    output  logic   [31:0]  imem_address,
    output  logic           imem_read,
    input   logic   [31:0]  imem_rdata,
    input   logic           imem_resp,
    output  logic   [31:0]  dmem_address,
    output  logic           dmem_read,
    output  logic           dmem_write,
    output  logic   [3:0]   dmem_wmask,
    input   logic   [31:0]  dmem_rdata,
    output  logic   [31:0]  dmem_wdata,
    input   logic           dmem_resp

    // Use these for CP2+ (with caches and burst memory)
    // output  logic   [31:0]  bmem_address,
    // output  logic           bmem_read,
    // output  logic           bmem_write,
    // input   logic   [63:0]  bmem_rdata,
    // output  logic   [63:0]  bmem_wdata,
    // input   logic           bmem_resp
);

            logic           monitor_valid;
            logic   [63:0]  monitor_order;
            logic   [31:0]  monitor_inst;
            logic   [4:0]   monitor_rs1_addr;
            logic   [4:0]   monitor_rs2_addr;
            logic   [31:0]  monitor_rs1_rdata;
            logic   [31:0]  monitor_rs2_rdata;
            logic   [4:0]   monitor_rd_addr;
            logic   [31:0]  monitor_rd_wdata;
            logic   [31:0]  monitor_pc_rdata;
            logic   [31:0]  monitor_pc_wdata;
            logic   [31:0]  monitor_mem_addr;
            logic   [3:0]   monitor_mem_rmask;
            logic   [3:0]   monitor_mem_wmask;
            logic   [31:0]  monitor_mem_rdata;
            logic   [31:0]  monitor_mem_wdata;


    // Fill this out
    // Only use hierarchical references here for verification
    // **DO NOT** use hierarchical references in the actual design!
    assign monitor_valid     = ;
    assign monitor_order     = ;
    assign monitor_inst      = ;
    assign monitor_rs1_addr  = ;
    assign monitor_rs2_addr  = ;
    assign monitor_rs1_rdata = ;
    assign monitor_rs2_rdata = ;
    assign monitor_rd_addr   = ;
    assign monitor_rd_wdata  = ;
    assign monitor_pc_rdata  = ;
    assign monitor_pc_wdata  = ;
    assign monitor_mem_addr  = ;
    assign monitor_mem_rmask = ;
    assign monitor_mem_wmask = ;
    assign monitor_mem_rdata = ;
    assign monitor_mem_wdata = ;

endmodule : mp4
