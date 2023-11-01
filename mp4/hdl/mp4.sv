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

    logic [63:0] accumulator;
    always_ff @(posedge clk) begin
        if (rst) begin
            accumulator <= 64'h0;
        end else begin
            accumulator <= accumulator + monitor_valid;
        end
    end

    // Fill this out
    // Only use hierarchical references here for verification
    // **DO NOT** use hierarchical references in the actual design!
    assign monitor_valid     = cpu.hazard_ctrl_unit.valid_o && (~rst);
    assign monitor_order     = accumulator;
    assign monitor_inst      = cpu.datapath.mem_wb_reg_o.ir;
    assign monitor_rs1_addr  = cpu.ctrlwb_at_wb.rs1;
    assign monitor_rs2_addr  = cpu.ctrlwb_at_wb.rs2;
    assign monitor_rs1_rdata = cpu.datapath.mem_wb_reg_o.r1;
    assign monitor_rs2_rdata = cpu.datapath.mem_wb_reg_o.r2;
    assign monitor_rd_addr   = cpu.ctrlwb_at_wb.rd;
    assign monitor_rd_wdata  = cpu.datapath.regfilemux_out;
    assign monitor_pc_rdata  = cpu.datapath.mem_wb_reg_o.pc;
    assign monitor_pc_wdata  = cpu.datapath.mem_wb_reg_o._pc_wdata;
    assign monitor_mem_addr  = cpu.datapath.mem_wb_reg_o._mem_addr;
    assign monitor_mem_rmask = cpu.datapath.mem_wb_reg_o._mem_rmask;
    assign monitor_mem_wmask = cpu.datapath.mem_wb_reg_o._mem_wmask;
    assign monitor_mem_rdata = cpu.datapath.mem_wb_reg_o.mdr;
    assign monitor_mem_wdata = cpu.datapath.mem_wb_reg_o._mem_wdata;

    cpu cpu(.*);

endmodule : mp4
