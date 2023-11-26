module mp4
import rv32i_types::*;
import pipeline_pkg::*;
#(
    // these parameters will be overridden by hvl/top_tb.sv
    parameter   CACHE_LOG2_NUMSETS_L1   = 3,
    parameter   CACHE_LOG2_NUMWAYS_L1   = 1,
    parameter   CACHE_LOG2_NUMSETS_L2   = 5,
    parameter   CACHE_LOG2_NUMWAYS_L2   = 4,
    parameter   CACHE_LOG2_WORDSIZE     = 8
) (
    input   logic           clk,
    input   logic           rst,
    // Memory Interface
    output  logic   [31:0]  bmem_address,
    output  logic           bmem_read,
    output  logic           bmem_write,
    input   logic   [63:0]  bmem_rdata,
    output  logic   [63:0]  bmem_wdata,
    input   logic           bmem_resp
);

    localparam  CACHE_WORDSIZE          = 2**CACHE_LOG2_WORDSIZE;
    localparam  CACHE_MASKSIZE          = CACHE_WORDSIZE / 8;



    /* CPU signals */

    // ctrl_word -> datapath
    ctrlex_reg_t ctrlex_at_id, ctrlex_at_ex;
    ctrlmem_reg_t ctrlmem_at_id, ctrlmem_at_ex, ctrlmem_at_mem, ctrlmem_at_wb;
    ctrlwb_reg_t ctrlwb_at_id, ctrlwb_at_ex, ctrlwb_at_mem, ctrlwb_at_wb;
    logic dmem_read_i, dmem_write_i;
    assign dmem_read_i = ctrlmem_at_mem.dmem_read && (~rst);
    assign dmem_write_i = ctrlmem_at_mem.dmem_write && (~rst);

    // datapath -> ctrl_word
    rv32i_opcode opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [4:0] rd_in;
    logic [4:0] rs1_in;
    logic [4:0] rs2_in;
    logic branch_mispredict;
    logic ex_is_branch;
    logic ex_branch_taken;
    logic [31:0] if_pc_rdata;
    logic [31:0] ex_pc_rdata;
    logic [31:0] ex_pc_wdata;
    logic [31:0] predicted_pc;

    // forwarding_unit -> datapath
    fwdmux::fwdmux_sel_t fwdmux1_sel, fwdmux2_sel;

    // hazard_ctrl -> datapath
    hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl;
    logic wb_commit;
    logic ex_enable;

    // forwarding_unit -> hazard_ctrl
    logic no_hazard;

    // hazard_ctrl -> forwarding_unit
    logic id_ex_valid_o, ex_mem_valid_o, mem_wb_valid_o;

    // for monitor
    logic [3:0] dmem_rmask;



    /* RVFI Monitor */

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
    assign monitor_valid     = hazard_ctrl_unit.valid_o && (~rst);
    assign monitor_order     = accumulator;
    assign monitor_inst      = datapath.mem_wb_reg_o.ir;
    assign monitor_rs1_addr  = ctrlwb_at_wb.rs1;
    assign monitor_rs2_addr  = ctrlwb_at_wb.rs2;
    assign monitor_rs1_rdata = datapath.mem_wb_reg_o.r1;
    assign monitor_rs2_rdata = datapath.mem_wb_reg_o.r2;
    assign monitor_rd_addr   = ctrlwb_at_wb.rd;
    assign monitor_rd_wdata  = datapath.regfilemux_out;
    assign monitor_pc_rdata  = datapath.mem_wb_reg_o.pc;
    assign monitor_pc_wdata  = datapath.mem_wb_reg_o._pc_wdata;
    assign monitor_mem_addr  = datapath.mem_wb_reg_o._mem_addr;
    assign monitor_mem_rmask = datapath.mem_wb_reg_o._mem_rmask;
    assign monitor_mem_wmask = datapath.mem_wb_reg_o._mem_wmask;
    assign monitor_mem_rdata = datapath.mem_wb_reg_o.mdr;
    assign monitor_mem_wdata = datapath.mem_wb_reg_o._mem_wdata;



    /* CPU */

    datapath  datapath (.*, .ctrlex(ctrlex_at_ex), .ctrlmem(ctrlmem_at_mem), .ctrlwb(ctrlwb_at_wb));
    ctrl_word ctrl_word(.*, .ctrlex(ctrlex_at_id), .ctrlmem(ctrlmem_at_id),  .ctrlwb(ctrlwb_at_id));
    forwarding_unit forwarding_unit(.*);
    hazard_ctrl_unit hazard_ctrl_unit(.*, .ex_enable_o(ex_enable));

    ctrlex_reg  ctrlex_id_ex   (.*, .load(hazard_ctrl.load_id_ex),  .in(ctrlex_at_id),  .out(ctrlex_at_ex));
    ctrlmem_reg ctrlmem_id_ex  (.*, .load(hazard_ctrl.load_id_ex),  .in(ctrlmem_at_id), .out(ctrlmem_at_ex));
    ctrlmem_reg ctrlmem_ex_mem (.*, .load(hazard_ctrl.load_ex_mem), .in(ctrlmem_at_ex), .out(ctrlmem_at_mem));
    ctrlmem_reg ctrlmem_mem_wb (.*, .load(hazard_ctrl.load_mem_wb), .in(ctrlmem_at_mem), .out(ctrlmem_at_wb));
    ctrlwb_reg  ctrlwb_id_ex   (.*, .load(hazard_ctrl.load_id_ex),  .in(ctrlwb_at_id),  .out(ctrlwb_at_ex));
    ctrlwb_reg  ctrlwb_ex_mem  (.*, .load(hazard_ctrl.load_ex_mem), .in(ctrlwb_at_ex),  .out(ctrlwb_at_mem));
    ctrlwb_reg  ctrlwb_mem_wb  (.*, .load(hazard_ctrl.load_mem_wb), .in(ctrlwb_at_mem), .out(ctrlwb_at_wb));



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

    logic [CACHE_WORDSIZE-1:0] imem_rdata_l;    // imem_bus_adapter <- imem_cache
    logic [CACHE_MASKSIZE-1:0] dmem_wmask_l;    // dmem_bus_adapter -> dmem_cache
    logic [CACHE_WORDSIZE-1:0] dmem_wdata_l;    // dmem_bus_adapter -> dmem_cache
    logic [CACHE_WORDSIZE-1:0] dmem_rdata_l;    // dmem_bus_adapter <- dmem_cache
    logic [CACHE_WORDSIZE-1:0] icmem_rdata_l;   // prefetcher <- imem_cache
    logic [CACHE_WORDSIZE-1:0] i2mem_rdata;     // imem_cache <- i2mem_cache
    logic [CACHE_WORDSIZE-1:0] d2mem_wdata;     // dmem_cache -> d2mem_cache
    logic [CACHE_WORDSIZE-1:0] d2mem_rdata;     // dmem_cache <- d2mem_cache
    logic [CACHE_WORDSIZE-1:0] ipmem_rdata;     // i2mem_cache <- arbiter
    logic [CACHE_WORDSIZE-1:0] dpmem_wdata;     // d2mem_cache -> arbiter
    logic [CACHE_WORDSIZE-1:0] dpmem_rdata;     // d2mem_cache <- arbiter
    logic [CACHE_WORDSIZE-1:0] pmem_wdata;      // arbiter -> cacheline_adaptor
    logic [CACHE_WORDSIZE-1:0] pmem_rdata;      // arbiter <- cacheline_adaptor

    logic [ 31:0] icmem_address;    // prefetcher -> imem_cache
    logic [ 31:0] i2mem_address;    // imem_cache -> i2mem_cache
    logic [ 31:0] d2mem_address;    // dmem_cache -> d2mem_cache
    logic [ 31:0] ipmem_address;    // i2mem_cache -> arbiter
    logic [ 31:0] dpmem_address;    // d2mem_cache -> arbiter
    logic [ 31:0] pmem_address;     // arbiter -> cacheline_adaptor

    logic         icmem_read;       // prefetcher -> imem_cache
    logic         icmem_resp;       // prefetcher <- imem_cache
    logic         i2mem_read;       // imem_cache -> i2mem_cache
    logic         i2mem_resp;       // imem_cache <- i2mem_cache
    logic         d2mem_write;      // dmem_cache -> d2mem_cache
    logic         d2mem_read;       // dmem_cache -> d2mem_cache
    logic         d2mem_resp;       // dmem_cache <- d2mem_cache
    logic         ipmem_read;       // i2mem_cache -> arbiter
    logic         ipmem_resp;       // i2mem_cache <- arbiter
    logic         dpmem_write;      // d2mem_cache -> arbiter
    logic         dpmem_read;       // d2mem_cache -> arbiter
    logic         dpmem_resp;       // d2mem_cache <- arbiter
    logic         pmem_write;       // arbiter -> cacheline_adaptor
    logic         pmem_read;        // arbiter -> cacheline_adaptor
    logic         pmem_resp;        // arbiter <- cacheline_adaptor

    logic arbiter_idle;             // arbiter -> prefetcher

    bus_adapter #(
        .s_word   (CACHE_WORDSIZE),
        .s_mask   (CACHE_MASKSIZE)
    ) imem_bus_adapter (
        .mem_wdata          (32'b0),            // (suppress synth warning LINT-58)
        .mem_byte_enable    (4'b1111),          // (suppress synth warning LINT-58)
        .address            (imem_address),     // from cpu
        .mem_rdata          (imem_rdata),       // to cpu
        .mem_rdata_l        (imem_rdata_l)      // from imem_cache
    );

    bus_adapter #(
        .s_word   (CACHE_WORDSIZE),
        .s_mask   (CACHE_MASKSIZE)
    ) dmem_bus_adapter (
        .address            (dmem_address),     // from cpu
        .mem_byte_enable    (dmem_wmask),       // from cpu
        .mem_wdata          (dmem_wdata),       // from cpu
        .mem_rdata          (dmem_rdata),       // to cpu
        .mem_byte_enable_l  (dmem_wmask_l),     // to dmem_cache
        .mem_wdata_l        (dmem_wdata_l),     // to dmem_cache
        .mem_rdata_l        (dmem_rdata_l)      // from dmem_cache
    );

    convservative_next_line_prefetcher #(
        .s_word   (CACHE_WORDSIZE)
    ) prefetcher (.clk, .rst,
        .imem_address       (imem_address),     // from cpu
        .imem_read          (imem_read),        // from cpu
        .imem_rdata_l       (imem_rdata_l),     // to imem_cache
        .imem_resp          (imem_resp),        // to cpu
        .icmem_rdata_l      (icmem_rdata_l),    // from imem_cache
        .icmem_resp         (icmem_resp),       // from imem_cache
        .icmem_address      (icmem_address),    // to imem_cache
        .icmem_read         (icmem_read),       // to imem_cache
        .branch_taken       (ex_branch_taken), // from datapath
        .arbiter_idle       (arbiter_idle),    // from arbiter
        .no_hazard          (no_hazard)         // from hazard_ctrl
    );

    cache #(
        .s_word   (CACHE_WORDSIZE),
        .s_mask   (CACHE_MASKSIZE),
        .s_index  (CACHE_LOG2_NUMSETS_L1),
        .s_wayidx (CACHE_LOG2_NUMWAYS_L1),
        .use_register(1)
    ) imem_cache (.clk, .rst,
        .mem_write          (1'b0),             // (suppress synth warning LINT-58)
        .mem_byte_enable    ('1),               // (suppress synth warning LINT-58)
        .mem_wdata          ('0),               // (suppress synth warning LINT-58)
        .mem_address        (icmem_address),    // from prefetcher
        .mem_read           (icmem_read),       // from prefetcher
        .mem_rdata          (icmem_rdata_l),    // to prefetcher
        .mem_resp           (icmem_resp),       // to prefetcher
        .pmem_address       (i2mem_address),    // to i2mem_cache
        .pmem_read          (i2mem_read),       // to i2mem_cache
        .pmem_rdata         (i2mem_rdata),      // from i2mem_cache
        .pmem_resp          (i2mem_resp)        // from i2mem_cache
    );

    cache #(
        .s_word   (CACHE_WORDSIZE),
        .s_mask   (CACHE_MASKSIZE),
        .s_index  (CACHE_LOG2_NUMSETS_L2),
        .s_wayidx (CACHE_LOG2_NUMWAYS_L2)
    ) i2mem_cache (.clk, .rst,
        .mem_write          (1'b0),
        .mem_byte_enable    ('1),
        .mem_wdata          ('0),
        .mem_address        (i2mem_address),    // from imem_cache
        .mem_read           (i2mem_read),       // from imem_cache
        .mem_rdata          (i2mem_rdata),      // to imem_cache
        .mem_resp           (i2mem_resp),       // to imem_cache
        .pmem_address       (ipmem_address),    // to arbiter
        .pmem_read          (ipmem_read),       // to arbiter
        .pmem_rdata         (ipmem_rdata),      // from arbiter
        .pmem_resp          (ipmem_resp)        // from arbiter
    );

    cache #(
        .s_word   (CACHE_WORDSIZE),
        .s_mask   (CACHE_MASKSIZE),
        .s_index  (CACHE_LOG2_NUMSETS_L1),
        .s_wayidx (CACHE_LOG2_NUMWAYS_L1),
        .use_register(1)
    ) dmem_cache (.clk, .rst,
        .mem_address        (dmem_address),     // from cpu
        .mem_write          (dmem_write),       // from cpu
        .mem_read           (dmem_read),        // from cpu
        .mem_byte_enable    (dmem_wmask_l),     // from dmem_bus_adapter
        .mem_wdata          (dmem_wdata_l),     // from dmem_bus_adapter
        .mem_rdata          (dmem_rdata_l),     // to dmem_bus_adapter
        .mem_resp           (dmem_resp),        // to cpu
        .pmem_address       (d2mem_address),    // to d2mem_cache
        .pmem_wdata         (d2mem_wdata),      // to d2mem_cache
        .pmem_write         (d2mem_write),      // to d2mem_cache
        .pmem_read          (d2mem_read),       // to d2mem_cache
        .pmem_rdata         (d2mem_rdata),      // from d2mem_cache
        .pmem_resp          (d2mem_resp)        // from d2mem_cache
    );

    cache #(
        .s_word   (CACHE_WORDSIZE),
        .s_mask   (CACHE_MASKSIZE),
        .s_index  (CACHE_LOG2_NUMSETS_L2),
        .s_wayidx (CACHE_LOG2_NUMWAYS_L2)
    ) d2mem_cache (.clk, .rst,
        .mem_byte_enable    ('1),
        .mem_address        (d2mem_address),    // from dmem_cache
        .mem_write          (d2mem_write),      // from dmem_cache
        .mem_read           (d2mem_read),       // from dmem_cache
        .mem_wdata          (d2mem_wdata),      // from dmem_cache
        .mem_rdata          (d2mem_rdata),      // to dmem_cache
        .mem_resp           (d2mem_resp),       // to dmem_cache
        .pmem_address       (dpmem_address),    // to arbiter
        .pmem_wdata         (dpmem_wdata),      // to arbiter
        .pmem_write         (dpmem_write),      // to arbiter
        .pmem_read          (dpmem_read),       // to arbiter
        .pmem_rdata         (dpmem_rdata),      // from arbiter
        .pmem_resp          (dpmem_resp)        // from arbiter
    );

    arbiter #(
        .s_word   (CACHE_WORDSIZE)
    ) arbiter (.clk, .rst,
        .ipmem_address      (ipmem_address),    // from i2mem_cache
        .ipmem_read         (ipmem_read),       // from i2mem_cache
        .ipmem_rdata        (ipmem_rdata),      // to i2mem_cache
        .ipmem_resp         (ipmem_resp),       // to i2mem_cache
        .dpmem_address      (dpmem_address),    // from d2mem_cache
        .dpmem_wdata        (dpmem_wdata),      // from d2mem_cache
        .dpmem_write        (dpmem_write),      // from d2mem_cache
        .dpmem_read         (dpmem_read),       // from d2mem_cache
        .dpmem_rdata        (dpmem_rdata),      // to d2mem_cache
        .dpmem_resp         (dpmem_resp),       // to d2mem_cache
        .pmem_address       (pmem_address),     // to cacheline_adaptor
        .pmem_wdata         (pmem_wdata),       // to cacheline_adaptor
        .pmem_write         (pmem_write),       // to cacheline_adaptor
        .pmem_read          (pmem_read),        // to cacheline_adaptor
        .pmem_rdata         (pmem_rdata),       // from cacheline_adaptor
        .pmem_resp          (pmem_resp),         // from cacheline_adaptor  
        .arbiter_idle       (arbiter_idle)      // to prefetcher
    );

    cacheline_adaptor #(
        .s_word   (CACHE_WORDSIZE)
    ) cacheline_adaptor (.clk, .reset_n(!rst),
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

    branch_predictor branch_predictor(.clk, .rst,
        .predict_pc         (if_pc_rdata),                 // from pc value of IF stage
        .update_pc          (ex_pc_rdata),                 // from pc value of EX stage
        .valid              (ex_is_branch),                // branch, jar, jalr of EX stage
        .branch_taken       (ex_branch_taken),             // whether branch, jar, jalr take in EX stage
        .target_pc          (ex_pc_wdata),                 // target pc address of EX stage -> BTB's value
        .predicted_pc       (predicted_pc)                 // predicted target pc in IF stage
    );





endmodule : mp4
