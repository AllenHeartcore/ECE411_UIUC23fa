module mp4
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    // Use these for CP1 (magic memory)
    // output  logic   [31:0]  imem_address,
    // output  logic           imem_read,
    // input   logic   [31:0]  imem_rdata,
    // input   logic           imem_resp,
    // output  logic   [31:0]  dmem_address,
    // output  logic           dmem_read,
    // output  logic           dmem_write,
    // output  logic   [3:0]   dmem_wmask,
    // input   logic   [31:0]  dmem_rdata,
    // output  logic   [31:0]  dmem_wdata,
    // input   logic           dmem_resp

    // Use these for CP2+ (with caches and burst memory)
    output  logic   [31:0]  bmem_address,
    output  logic           bmem_read,
    output  logic           bmem_write,
    input   logic   [63:0]  bmem_rdata,
    output  logic   [63:0]  bmem_wdata,
    input   logic           bmem_resp
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

    logic instr_at_wb_uses_rs1, instr_at_wb_uses_rs2;

    assign instr_at_wb_uses_rs1 = (
        cpu.ctrlmem_at_wb.opcode == op_imm |
        cpu.ctrlmem_at_wb.opcode == op_reg |
        cpu.ctrlmem_at_wb.opcode == op_load |
        cpu.ctrlmem_at_wb.opcode == op_store |
        cpu.ctrlmem_at_wb.opcode == op_jalr |
        cpu.ctrlmem_at_wb.opcode == op_br
    );
    assign instr_at_wb_uses_rs2 = (
        cpu.ctrlmem_at_wb.opcode == op_reg |
        cpu.ctrlmem_at_wb.opcode == op_store |
        cpu.ctrlmem_at_wb.opcode == op_br
    );

    // Fill this out
    // Only use hierarchical references here for verification
    // **DO NOT** use hierarchical references in the actual design!
    assign monitor_valid     = cpu.hazard_ctrl_unit.valid_o && (~rst);
    assign monitor_order     = accumulator;
    assign monitor_inst      = cpu.datapath.mem_wb_reg_o.ir;
    assign monitor_rs1_addr  = instr_at_wb_uses_rs1 ? cpu.ctrlwb_at_wb.rs1 : '0;
    assign monitor_rs2_addr  = instr_at_wb_uses_rs2 ? cpu.ctrlwb_at_wb.rs2 : '0;
    assign monitor_rs1_rdata = instr_at_wb_uses_rs1 ? cpu.datapath.mem_wb_reg_o.r1 : '0;
    assign monitor_rs2_rdata = instr_at_wb_uses_rs2 ? cpu.datapath.mem_wb_reg_o.r2 : '0;
    assign monitor_rd_addr   = cpu.ctrlwb_at_wb.load_regfile ? cpu.ctrlwb_at_wb.rd : '0;
    assign monitor_rd_wdata  = cpu.ctrlwb_at_wb.load_regfile ? cpu.datapath.regfilemux_out : '0;
    assign monitor_pc_rdata  = cpu.datapath.mem_wb_reg_o.pc;
    assign monitor_pc_wdata  = cpu.datapath.mem_wb_reg_o._pc_wdata;
    assign monitor_mem_addr  = cpu.datapath.mem_wb_reg_o._mem_addr;
    assign monitor_mem_rmask = cpu.datapath.mem_wb_reg_o._mem_rmask;
    assign monitor_mem_wmask = cpu.datapath.mem_wb_reg_o._mem_wmask;
    assign monitor_mem_rdata = cpu.datapath.mem_wb_reg_o.mdr;
    assign monitor_mem_wdata = cpu.datapath.mem_wb_reg_o._mem_wdata;

    cpu cpu(.*);

    /* Cache Interface */

    logic [ 31:0] imem_address;     // cpu -> imem_bus_adapter, imem_cache
    logic [ 31:0] imem_rdata;       // cpu <- imem_bus_adapter
    logic [ 31:0] dmem_address;     // cpu -> dmem_bus_adapter, dmem_cache
    logic [  3:0] dmem_wmask;       // cpu -> dmem_bus_adapter
    logic [ 31:0] dmem_wdata;       // cpu -> dmem_bus_adapter
    logic [ 31:0] dmem_rdata;       // cpu <- dmem_bus_adapter

    logic         imem_read;        // cpu -> imem_cache
    logic         imem_resp;        // cpu <- imem_cache
    logic         dmem_write;       // cpu -> dmem_cache
    logic         dmem_read;        // cpu -> dmem_cache
    logic         dmem_resp;        // cpu <- dmem_cache

    logic [255:0] imem_rdata256;    // imem_bus_adapter <- imem_cache
    logic [ 31:0] dmem_wmask256;    // dmem_bus_adapter -> dmem_cache
    logic [255:0] dmem_wdata256;    // dmem_bus_adapter -> dmem_cache
    logic [255:0] dmem_rdata256;    // dmem_bus_adapter <- dmem_cache

    logic [ 31:0] ipmem_address;    // imem_cache -> arbiter
    logic         ipmem_read;       // imem_cache -> arbiter
    logic [255:0] ipmem_rdata;      // imem_cache <- arbiter
    logic         ipmem_resp;       // imem_cache <- arbiter
    logic [ 31:0] dpmem_address;    // dmem_cache -> arbiter
    logic [255:0] dpmem_wdata;      // dmem_cache -> arbiter
    logic         dpmem_write;      // dmem_cache -> arbiter
    logic         dpmem_read;       // dmem_cache -> arbiter
    logic [255:0] dpmem_rdata;      // dmem_cache <- arbiter
    logic         dpmem_resp;       // dmem_cache <- arbiter

    logic [ 31:0] pmem_address;     // arbiter -> cacheline_adaptor
    logic [255:0] pmem_wdata;       // arbiter -> cacheline_adaptor
    logic         pmem_write;       // arbiter -> cacheline_adaptor
    logic         pmem_read;        // arbiter -> cacheline_adaptor
    logic [255:0] pmem_rdata;       // arbiter <- cacheline_adaptor
    logic         pmem_resp;        // arbiter <- cacheline_adaptor

    bus_adapter imem_bus_adapter(
        .mem_wdata          (32'b0),            // (suppress synth warning LINT-58)
        .mem_byte_enable    (4'b1111),          // (suppress synth warning LINT-58)
        .address            (imem_address),     // from cpu
        .mem_rdata          (imem_rdata),       // to cpu
        .mem_rdata256       (imem_rdata256)     // from imem_cache
    );

    bus_adapter dmem_bus_adapter(
        .address            (dmem_address),     // from cpu
        .mem_byte_enable    (dmem_wmask),       // from cpu
        .mem_wdata          (dmem_wdata),       // from cpu
        .mem_rdata          (dmem_rdata),       // to cpu
        .mem_byte_enable256 (dmem_wmask256),    // to dmem_cache
        .mem_wdata256       (dmem_wdata256),    // to dmem_cache
        .mem_rdata256       (dmem_rdata256)     // from dmem_cache
    );

    cache imem_cache(.clk, .rst,
        .mem_write          (1'b0),             // (suppress synth warning LINT-58)
        .mem_byte_enable    (32'hFFFF_FFFF),    // (suppress synth warning LINT-58)
        .mem_wdata          (256'b0),           // (suppress synth warning LINT-58)
        .mem_address        (imem_address),     // from cpu
        .mem_read           (imem_read),        // from cpu
        .mem_rdata          (imem_rdata256),    // to imem_bus_adapter
        .mem_resp           (imem_resp),        // to cpu
        .pmem_address       (ipmem_address),    // to arbiter
        .pmem_read          (ipmem_read),       // to arbiter
        .pmem_rdata         (ipmem_rdata),      // from arbiter
        .pmem_resp          (ipmem_resp)        // from arbiter
    );

    cache dmem_cache(.clk, .rst,
        .mem_address        (dmem_address),     // from cpu
        .mem_write          (dmem_write),       // from cpu
        .mem_read           (dmem_read),        // from cpu
        .mem_byte_enable    (dmem_wmask256),    // from dmem_bus_adapter
        .mem_wdata          (dmem_wdata256),    // from dmem_bus_adapter
        .mem_rdata          (dmem_rdata256),    // to dmem_bus_adapter
        .mem_resp           (dmem_resp),        // to cpu
        .pmem_address       (dpmem_address),    // to arbiter
        .pmem_wdata         (dpmem_wdata),      // to arbiter
        .pmem_write         (dpmem_write),      // to arbiter
        .pmem_read          (dpmem_read),       // to arbiter
        .pmem_rdata         (dpmem_rdata),      // from arbiter
        .pmem_resp          (dpmem_resp)        // from arbiter
    );

    arbiter arbiter(.clk, .rst,
        .ipmem_address      (ipmem_address),    // from imem_cache
        .ipmem_read         (ipmem_read),       // from imem_cache
        .ipmem_rdata        (ipmem_rdata),      // to imem_cache
        .ipmem_resp         (ipmem_resp),       // to imem_cache
        .dpmem_address      (dpmem_address),    // from dmem_cache
        .dpmem_wdata        (dpmem_wdata),      // from dmem_cache
        .dpmem_write        (dpmem_write),      // from dmem_cache
        .dpmem_read         (dpmem_read),       // from dmem_cache
        .dpmem_rdata        (dpmem_rdata),      // to dmem_cache
        .dpmem_resp         (dpmem_resp),       // to dmem_cache
        .pmem_address       (pmem_address),     // to cacheline_adaptor
        .pmem_wdata         (pmem_wdata),       // to cacheline_adaptor
        .pmem_write         (pmem_write),       // to cacheline_adaptor
        .pmem_read          (pmem_read),        // to cacheline_adaptor
        .pmem_rdata         (pmem_rdata),       // from cacheline_adaptor
        .pmem_resp          (pmem_resp)         // from cacheline_adaptor
    );

    cacheline_adaptor cacheline_adaptor(.clk, .reset_n(!rst),
        .address_i          (pmem_address),     // from arbiter
        .line_i             (pmem_wdata),       // from arbiter
        .write_i            (pmem_write),       // from arbiter
        .read_i             (pmem_read),        // from arbiter
        .line_o             (pmem_rdata),       // to arbiter
        .resp_o             (pmem_resp),        // to arbiter
        .address_o          (bmem_address),     // to physical memory
        .burst_o            (bmem_wdata),       // to physical memory
        .write_o            (bmem_write),       // to physical memory
        .read_o             (bmem_read),        // to physical memory
        .burst_i            (bmem_rdata),       // from physical memory
        .resp_i             (bmem_resp)         // from physical memory
    );

endmodule : mp4
