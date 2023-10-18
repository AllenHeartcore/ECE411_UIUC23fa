module ctrl_word
import rv32i_types::*;
(
    input  clk,
    input  rst,

    // to datapath
    output pcmux::pcmux_sel_t pcmux_sel,
    output alumux::alumux1_sel_t alumux1_sel,
    output alumux::alumux2_sel_t alumux2_sel,
    output regfilemux::regfilemux_sel_t regfilemux_sel,
    output marmux::marmux_sel_t marmux_sel,
    output cmpmux::cmpmux_sel_t cmpmux_sel,
    output alu_ops aluop,
    output cmp_ops cmpop,
    output logic load_pc,
    output logic load_ir,
    output logic load_regfile,
    output logic load_mar,
    output logic load_mdr,
    output logic load_data_out,

    // from datapath
    input  rv32i_opcode opcode,
    input  logic [2:0] funct3,
    input  logic [6:0] funct7,
    input  logic br_en,
    input  logic [4:0] rs1,
    input  logic [4:0] rs2,
    input  logic [1:0] byte_in_word,

    // from memory
    input  logic imem_resp, dmem_resp,

    // to memory
    output logic imem_read, dmem_read, dmem_write,
    output logic [3:0] dmem_wmask
);



endmodule : ctrl_word
