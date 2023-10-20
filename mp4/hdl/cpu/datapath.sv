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



    /* Datapath Registers */

    rv32i_word pc_out, alu_out;
    rv32i_word pcmux_out;

    register #(.rst_value(32'h4000_0000))
             PC  (.*, .load(hazard_ctrl.load_pc), .in(pcmux_out), .out(pc_out));



    /* Pipeline Registers */

    if_id_reg_t if_id_reg_i, if_id_reg_o;

    if_id if_id_regs(
        .clk(clk), .rst(rst), .load(hazard_ctrl.load_if_id),
        .in(if_id_reg_i), .out(if_id_reg_o)
    );

    assign imem_address = pc_out;
    assign if_id_reg_i.pc = pc_out;
    assign if_id_reg_i.ir = imem_rdata;



    /* ALU, CMP, MUXes */

    always_comb begin : MUXES

        unique case (pcmux_sel)
            pcmux::pc_plus4: pcmux_out = pc_out + 4;
            pcmux::alu_out : pcmux_out = alu_out;
            pcmux::alu_mod2: pcmux_out = alu_out & 32'hFFFFFFFE;
            default        : pcmux_out = 'X;
        endcase

    end


endmodule : datapath
