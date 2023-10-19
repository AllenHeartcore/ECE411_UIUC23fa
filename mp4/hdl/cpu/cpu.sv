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
    pcmux::pcmux_sel_t pcmux_sel;
    alumux::alumux1_sel_t alumux1_sel;
    alumux::alumux2_sel_t alumux2_sel;
    regfilemux::regfilemux_sel_t regfilemux_sel;
    marmux::marmux_sel_t marmux_sel;
    cmpmux::cmpmux_sel_t cmpmux_sel;
    hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl;
    alu_ops aluop;
    cmp_ops cmpop;
    logic load_ir;
    logic load_regfile;
    logic load_mar;
    logic load_mdr;
    logic load_data_out;


    // datapath -> ctrl_word
    rv32i_opcode opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [4:0] rs1, rs2;
    logic br_en;
    logic [1:0] byte_in_word;

    datapath  datapath(.*);
    ctrl_word ctrl_word(.*);

endmodule : cpu
