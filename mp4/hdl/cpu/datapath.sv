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
    output logic [1:0] byte_in_word,

    // from memory
    input  rv32i_word imem_rdata, dmem_rdata,

    // to memory
    output rv32i_word imem_address, dmem_address,
    output rv32i_word dmem_wdata
);

    logic [4:0] rs1, rs2, rd;
    rv32i_word store_data;
    rv32i_word i_imm, s_imm, b_imm, u_imm, j_imm;
    rv32i_word alumux1_out, alumux2_out, cmpmux_out;
    rv32i_word pcmux_out, marmux_out, regfilemux_out;

    if_id_reg_t if_id_reg_i, if_id_reg_o;
    id_ex_reg_t id_ex_reg_i, id_ex_reg_o;
    ex_mem_reg_t ex_mem_reg_i, ex_mem_reg_o;
    mem_wb_reg_t mem_wb_reg_i, mem_wb_reg_o;



    /* Datapath Registers */

    register #(
        .rst_value(32'h4000_0000)
    ) PC (.*,
        .load(hazard_ctrl.load_pc),
        .in(pcmux_out),
        .out(if_id_reg_i.pc)
    );

    regfile REGFILE(.*,
        .load(load_regfile),
        .in(regfilemux_out),
        .rs1_out(id_ex_reg_i.r1),
        .rs2_out(id_ex_reg_i.r2)
    );

    ir_translator TRANSL_IF_ID(
        .data(if_id_reg_o.ir),
        .opcode, .funct3, .funct7, .rs1, .rs2
    );

    ir_translator TRANSL_ID_EX(
        .data(id_ex_reg_o.ir),
        .i_imm, .s_imm, .b_imm, .u_imm, .j_imm
    );

    assign byte_in_word = mem_address[1:0];

    always_comb begin : CALC_STORE_DATA
        case (store_funct3_t'(funct3))
            sw:
                store_data = ex_mem_reg_o.mdr;
            sh:
                case (marmux_out[1])
                    1'b0: store_data = ex_mem_reg_o.mdr;
                    1'b1: store_data = ex_mem_reg_o.mdr << 16;
                endcase
            sb:
                case (marmux_out[1:0])
                    2'b00: store_data = ex_mem_reg_o.mdr;
                    2'b01: store_data = ex_mem_reg_o.mdr << 8;
                    2'b10: store_data = ex_mem_reg_o.mdr << 16;
                    2'b11: store_data = ex_mem_reg_o.mdr << 24;
                endcase
            default: store_data = ex_mem_reg_o.mdr;
        endcase
    end



    /* Pipeline Registers */

    if_id if_id_regs(
        .*, .load(hazard_ctrl.load_if_id),
        .in(if_id_reg_i), .out(if_id_reg_o)
    );
    id_ex id_ex_regs(
        .*, .load(hazard_ctrl.load_id_ex),
        .in(id_ex_reg_i), .out(id_ex_reg_o)
    );
    ex_mem ex_mem_regs(
        .*, .load(hazard_ctrl.load_ex_mem),
        .in(ex_mem_reg_i), .out(ex_mem_reg_o)
    );
    mem_wb mem_wb_regs(
        .*, .load(hazard_ctrl.load_mem_wb),
        .in(mem_wb_reg_i), .out(mem_wb_reg_o)
    );

    assign imem_address = if_id_reg_i.pc;
    assign if_id_reg_i.ir = imem_rdata;
    assign id_ex_reg_i.pc = if_id_reg_o.pc;
    assign id_ex_reg_i.ir = if_id_reg_o.ir;
    assign ex_mem_reg_i.pc = id_ex_reg_o.pc;
    assign ex_mem_reg_i.uim = u_imm;
    assign ex_mem_reg_i.mdr = id_ex_reg_o.r2;
    assign dmem_address = marmux_out;
    assign dmem_wdata = ex_mem_reg_o.mdr;
    assign mem_wb_reg_i.mdr = dmem_rdata;
    assign mem_wb_reg_i.alu = ex_mem_reg_o.alu;
    assign mem_wb_reg_i.uim = ex_mem_reg_o.uim;
    assign mem_wb_reg_i.cmp = ex_mem_reg_o.cmp;



    /* ALU, CMP, MUXes */

    alu ALU(.*,
        .a(alumux1_out),
        .b(alumux2_out),
        .f(ex_mem_reg_i.alu)
    );
    cmp CMP(.*,
        .a(id_ex_reg_o.r1),
        .b(cmpmux_out),
        .f(ex_mem_reg_i.cmp)
    );

    always_comb begin : MUXES

        unique case (pcmux_sel)
            pcmux::pc_plus4: pcmux_out = if_id_reg_i.pc + 4;
            pcmux::alu_out : pcmux_out = ex_mem_reg_i.alu;
            pcmux::alu_mod2: pcmux_out = ex_mem_reg_i.alu & 32'hFFFFFFFE;
            default        : pcmux_out = 'X;
        endcase

        unique case (alumux1_sel)
            alumux::rs1_out: alumux1_out = id_ex_reg_o.r1;
            alumux::pc_out : alumux1_out = id_ex_reg_o.pc;
        endcase

        unique case (alumux2_sel)
            alumux::i_imm  : alumux2_out = i_imm;
            alumux::s_imm  : alumux2_out = s_imm;
            alumux::b_imm  : alumux2_out = b_imm;
            alumux::u_imm  : alumux2_out = u_imm;
            alumux::j_imm  : alumux2_out = j_imm;
            alumux::rs2_out: alumux2_out = id_ex_reg_o.r2;
        endcase

        unique case (cmpmux_sel)
            cmpmux::rs2_out: cmpmux_out = id_ex_reg_o.r2;
            cmpmux::i_imm  : cmpmux_out = i_imm;
        endcase

        unique case (marmux_sel)
            marmux::pc_out : marmux_out = ex_mem_reg_o.pc;
            marmux::alu_out: marmux_out = ex_mem_reg_o.alu;
        endcase

        unique case (regfilemux_sel)
            regfilemux::pc_plus4 : regfilemux_out = mem_wb_reg_o.pc + 4;
            regfilemux::u_imm    : regfilemux_out = mem_wb_reg_o.uim;
            regfilemux::alu_out  : regfilemux_out = mem_wb_reg_o.alu;
            regfilemux::br_en    : regfilemux_out = {31'b0, mem_wb_reg_o.cmp};
            regfilemux::lw       : regfilemux_out = mem_wb_reg_o.mdr;
            regfilemux::lb       :
                case (byte_in_word)
                    2'b00: regfilemux_out = {{24{mem_wb_reg_o.mdr[7]}}, mem_wb_reg_o.mdr[7:0]};
                    2'b01: regfilemux_out = {{24{mem_wb_reg_o.mdr[15]}}, mem_wb_reg_o.mdr[15:8]};
                    2'b10: regfilemux_out = {{24{mem_wb_reg_o.mdr[23]}}, mem_wb_reg_o.mdr[23:16]};
                    2'b11: regfilemux_out = {{24{mem_wb_reg_o.mdr[31]}}, mem_wb_reg_o.mdr[31:24]};
                endcase
            regfilemux::lbu      :
                case (byte_in_word)
                    2'b00: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[7:0]};
                    2'b01: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[15:8]};
                    2'b10: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[23:16]};
                    2'b11: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[31:24]};
                endcase
            regfilemux::lh       :
                case (byte_in_word[1])
                    1'b0: regfilemux_out = {{16{mem_wb_reg_o.mdr[15]}}, mem_wb_reg_o.mdr[15:0]};
                    1'b1: regfilemux_out = {{16{mem_wb_reg_o.mdr[31]}}, mem_wb_reg_o.mdr[31:16]};
                endcase
            regfilemux::lhu      :
                case (byte_in_word[1])
                    1'b0: regfilemux_out = {16'b0, mem_wb_reg_o.mdr[15:0]};
                    1'b1: regfilemux_out = {16'b0, mem_wb_reg_o.mdr[31:16]};
                endcase
        endcase

    end



endmodule : datapath
