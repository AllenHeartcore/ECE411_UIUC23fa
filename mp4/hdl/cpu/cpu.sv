module cpu
import rv32i_types::*;
(
    input  clk,
    input  rst,
    input  logic imem_resp, dmem_resp,
    input  rv32i_word imem_rdata, dmem_rdata,
    output logic imem_read, dmem_read, dmem_write,
    output logic [3:0] dmem_wmask,
    output rv32i_word imem_address, dmem_address,
    output rv32i_word dmem_wdata
);

    // ctrl_word -> datapath
    pcmux::pcmux_sel_t pcmux_sel_in;
    pcmux::pcmux_sel_t pcmux_sel;
    pcmux::pcmux_sel_t pcmux_sel_ex;
    alumux::alumux1_sel_t alumux1_sel_in;
    alumux::alumux1_sel_t alumux1_sel;
    alumux::alumux1_sel_t alumux1_sel_ex;
    alumux::alumux2_sel_t alumux2_sel_in;
    alumux::alumux2_sel_t alumux2_sel;
    alumux::alumux2_sel_t alumux2_sel_ex;
    regfilemux::regfilemux_sel_t regfilemux_sel_in;
    regfilemux::regfilemux_sel_t regfilemux_sel;
    regfilemux::regfilemux_sel_t regfilemux_sel_ex;
    regfilemux::regfilemux_sel_t regfilemux_sel_mem;
    regfilemux::regfilemux_sel_t regfilemux_sel_wb;
    marmux::marmux_sel_t marmux_sel_in;
    marmux::marmux_sel_t marmux_sel;
    marmux::marmux_sel_t marmux_sel_ex;
    marmux::marmux_sel_t marmux_sel_mem;
    cmpmux::cmpmux_sel_t cmpmux_sel_in;
    cmpmux::cmpmux_sel_t cmpmux_sel;
    cmpmux::cmpmux_sel_t cmpmux_sel_ex;
    hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl;
    alu_ops aluop;
    alu_ops aluop_ex;
    cmp_ops cmpop;
    cmp_ops cmpop_ex;
    logic load_ir;
    logic load_regfile;
    logic load_regfile_ex;
    logic load_regfile_mem;
    logic load_regfile_wb;
    logic load_mar;
    logic load_mdr;
    logic load_data_out;
    logic is_branch;
    logic is_branch_ex;

    logic load_ex;
    logic load_mem;
    logic load_wb;
    logic [4:0] rs1_in;
    logic [4:0] rs1;
    logic [4:0] rs1_ex;
    logic [4:0] rs1_mem;
    logic [4:0] rs1_wb;
    logic [4:0] rs2_in;
    logic [4:0] rs2;
    logic [4:0] rs2_ex;
    logic [4:0] rs2_mem;
    logic [4:0] rs2_wb;
    logic [4:0] rd_in;
    logic [4:0] rd;
    logic [4:0] rd_ex;
    logic [4:0] rd_mem;
    logic [4:0] rd_wb;



    // datapath -> ctrl_word
    rv32i_opcode opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic br_en;
    logic [1:0] byte_in_word;

    // hazard_ctrl -> datapath
    hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl;

    datapath  datapath(.*);
    ctrl_word ctrl_word(.*, .rs1_out(rs1), .rs2_out(rs2), .rd_out(rd));
    hazard_ctrl_unit hazard_ctrl_unit(.*);
    


    CtrlEx ctrl_ex(
        .clk(clk),
        .rst(rst),
        .load(load_ex),
        .aluop_in(aluop),
        .cmpop_in(cmpop),
        .alumux1_sel_in(alumux1_sel),
        .alumux2_sel_in(alumux2_sel),
        .pcmux_sel_in(pcmux_sel),
        .is_branch_in(is_branch),
        .pcmux_sel_out(pcmux_sel_ex),
        .is_branch_out(is_branch_ex),
        .aluop_out(aluop_ex),
        .cmpop_out(cmpop_ex),
        .alumux1_sel_out(alumux1_sel_ex),
        .alumux2_sel_out(alumux2_sel_ex)
    );



    CtrlMem ctrlmem_ex(
        .clk(clk),
        .rst(rst),
        .load(load_ex),
        .marmux_sel_in(marmux_sel),
        .marmux_sel_out(marmux_sel_ex)
    );

    CtrlMem ctrlmem_mem(
        .clk(clk),
        .rst(rst),
        .load(load_mem),
        .marmux_sel_in(marmux_sel_ex),
        .marmux_sel_out(marmux_sel_mem)
    );


    CtrlWB ctrlwb_ex(
        .clk(clk),
        .rst(rst),
        .load(load_mem),
        .rs1_in(rs1),
        .rs2_in(rs2),
        .rd_in(rd),
        .load_regfile_in(load_regfile),
        .regfilemux_sel_in(regfilemux_sel),
        .rs1_out(rs1_ex),
        .rs2_out(rs2_ex),
        .rd_out(rd_ex),
        .load_regfile_out(load_regfile_ex),
        .regfilemux_sel_out(regfilemux_sel_ex)
    );

    CtrlWB ctrlwb_mem(
        .clk(clk),
        .rst(rst),
        .load(load_mem),
        .rs1_in(rs1_ex),
        .rs2_in(rs2_ex),
        .rd_in(rd_ex),
        .load_regfile_in(load_regfile_ex),
        .regfilemux_sel_in(regfilemux_sel_ex),
        .rs1_out(rs1_mem),
        .rs2_out(rs2_mem),
        .rd_out(rd_mem),
        .load_regfile_out(load_regfile_mem),
        .regfilemux_sel_out(regfilemux_sel_mem)
    );


    CtrlWB ctrlwb_wb(
        .clk(clk),
        .rst(rst),
        .load(load_wb),
        .rs1_in(rs1_mem),
        .rs2_in(rs2_mem),
        .rd_in(rd_mem),
        .load_regfile_in(load_regfile_mem),
        .regfilemux_sel_in(regfilemux_sel_mem),
        .rs1_out(rs1_wb),
        .rs2_out(rs2_wb),
        .rd_out(rd_wb),
        .load_regfile_out(load_regfile_wb),
        .regfilemux_sel_out(regfilemux_sel_wb)
    );


    
endmodule : cpu
