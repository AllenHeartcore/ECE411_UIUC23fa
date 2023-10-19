module datapath
import rv32i_types::*;
import pipeline_reg_pkg::*;
(
    input  clk,
    input  rst,

    // from ctrl_word
    input  pcmux::pcmux_sel_t pcmux_sel,
    input  alumux::alumux1_sel_t alumux1_sel,
    input  alumux::alumux2_sel_t alumux2_sel,
    input  regfilemux::regfilemux_sel_t regfilemux_sel,
    input  marmux::marmux_sel_t marmux_sel,
    input  cmpmux::cmpmux_sel_t cmpmux_sel,
    input  hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl,
    input  alu_ops aluop,
    input  cmp_ops cmpop,
    input  logic load_ir,
    input  logic load_regfile,
    input  logic load_mar,
    input  logic load_mdr,
    input  logic load_data_out,

    // to ctrl_word
    output rv32i_opcode opcode,
    output logic [2:0] funct3,
    output logic [6:0] funct7,
    output logic br_en,
    output logic [4:0] rs1,
    output logic [4:0] rs2,
    output logic [1:0] byte_in_word,

    // from memory
    input  rv32i_word imem_rdata, dmem_rdata,

    // to memory
    output rv32i_word imem_address, dmem_address,
    output rv32i_word dmem_wdata
);
    logic [31:0] alu_out;
    
    if_id_reg_t if_id_reg_i, if_id_reg_o;

    if_unit if_unit(
        .clk(clk), .rst(rst), .pcmux_sel(pcmux_sel), .alu_out(alu_out), 
        .imem_rdata(imem_rdata), .imem_address(imem_address), 
        .load_pc(hazard_ctrl.load_pc), .if_reg(if_id_reg_i)
    );

    if_id if_id_regs(
        .clk(clk), .rst(rst), .load_if_id(hazard_ctrl.load_if_id),
        .if_id_reg_i(if_id_reg_i), .if_id_reg_o(if_id_reg_o)
    );
    



endmodule : datapath
