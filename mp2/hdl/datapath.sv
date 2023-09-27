module datapath
import rv32i_types::*;
(
    input clk,
    input rst,

    // from control
    input pcmux::pcmux_sel_t pcmux_sel,
    input alumux::alumux1_sel_t alumux1_sel,
    input alumux::alumux2_sel_t alumux2_sel,
    input regfilemux::regfilemux_sel_t regfilemux_sel,
    input marmux::marmux_sel_t marmux_sel,
    input cmpmux::cmpmux_sel_t cmpmux_sel,
    input alu_ops aluop,
    input branch_funct3_t cmpop,
    input load_pc,
    input load_ir,
    input load_regfile,
    input load_mar,
    input load_mdr,
    input load_data_out,

    // to control
    output rv32i_opcode opcode,
    output logic [2:0] funct3,
    output logic [6:0] funct7,
    output logic br_en,
    output logic [4:0] rs1,
    output logic [4:0] rs2,
    output logic [1:0] byte_in_word,

    // from memory
    input rv32i_word mem_rdata,

    // to memory
    output rv32i_word mem_address,
    output rv32i_word mem_wdata // signal used by RVFI Monitor
);

/******************* Signals Needed for RVFI Monitor *************************/
rv32i_word pcmux_out;
rv32i_word mdrreg_out;
/*****************************************************************************/

// datapath internal signals (not exported)
logic [4:0] rd;
rv32i_word rs1_out, rs2_out, pc_out, alu_out;
rv32i_word i_imm, s_imm, b_imm, u_imm, j_imm;
rv32i_word alumux1_out, alumux2_out, regfilemux_out, marmux_out, cmpmux_out, store_data;

/***************************** Registers *************************************/

regfile RegFile(
    .*,
    .load(load_regfile),
    .in(regfilemux_out),
    .reg_a(rs1_out),
    .reg_b(rs2_out),
    .src_a(rs1),
    .src_b(rs2),
    .dest(rd)
);

// Keep Instruction register named `IR` for RVFI Monitor
ir IR(
    .*,
    .load(load_ir),
    .in(mdrreg_out),
    // for the sake of clarity
    .i_imm, .s_imm, .b_imm, .u_imm, .j_imm,
    .opcode, .funct3, .funct7, .rs1, .rs2, .rd
);

register PC (.*, .load(load_pc),  .in(pcmux_out),  .out(pc_out),      .rst_value(32'h40000000));
register MAR(.*, .load(load_mar), .in(marmux_out), .out(mem_address), .rst_value(32'h0));
register MDR(.*, .load(load_mdr), .in(mem_rdata),  .out(mdrreg_out),  .rst_value(32'h0));
register mem_data_out(.*, .load(load_data_out), .in(store_data), .out(mem_wdata), .rst_value(32'h0));

assign byte_in_word = mem_address[1:0];

always_comb begin : CALC_STORE_DATA
        unique case (store_funct3_t'(funct3))
            sw:
                store_data = rs2_out;
            sh:
                case (marmux_out[1])
                    1'b0: store_data = rs2_out;
                    1'b1: store_data = rs2_out << 16;
                endcase
            sb:
                case (marmux_out[1:0])
                    2'b00: store_data = rs2_out;
                    2'b01: store_data = rs2_out << 8;
                    2'b10: store_data = rs2_out << 16;
                    2'b11: store_data = rs2_out << 24;
                endcase
            default: store_data = rs2_out;
        endcase
end

/*****************************************************************************/

/******************************* ALU and CMP *********************************/

alu ALU(
    .*,
    .aluop,
    .a(alumux1_out),
    .b(alumux2_out),
    .f(alu_out)
);

cmp CMP(
    .*,
    .cmpop,
    .a(rs1_out),
    .b(cmpmux_out),
    .f(br_en)
);

/*****************************************************************************/

/******************************** Muxes **************************************/
always_comb begin : MUXES
    // We provide one (incomplete) example of a mux instantiated using
    // a case statement.  Using enumerated types rather than bit vectors
    // provides compile time type safety.  Defensive programming is extremely
    // useful in SystemVerilog. 
    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_out + 4;
        pcmux::alu_out : pcmux_out = alu_out;
        pcmux::alu_mod2: pcmux_out = alu_out & 32'hFFFFFFFE;
    endcase

    unique case (marmux_sel)
        marmux::pc_out : marmux_out = pc_out;
        marmux::alu_out: marmux_out = alu_out;
    endcase

    unique case (cmpmux_sel)
        cmpmux::rs2_out: cmpmux_out = rs2_out;
        cmpmux::i_imm  : cmpmux_out = i_imm;
    endcase

    unique case (alumux1_sel)
        alumux::rs1_out: alumux1_out = rs1_out;
        alumux::pc_out : alumux1_out = pc_out;
    endcase

    unique case (alumux2_sel)
        alumux::i_imm  : alumux2_out = i_imm;
        alumux::u_imm  : alumux2_out = u_imm;
        alumux::b_imm  : alumux2_out = b_imm;
        alumux::s_imm  : alumux2_out = s_imm;
        alumux::j_imm  : alumux2_out = j_imm;
        alumux::rs2_out: alumux2_out = rs2_out;
    endcase

    unique case (regfilemux_sel)
        regfilemux::alu_out  : regfilemux_out = alu_out;
        regfilemux::br_en    : regfilemux_out = {31'b0, br_en};
        regfilemux::u_imm    : regfilemux_out = u_imm;
        regfilemux::lw       : regfilemux_out = mdrreg_out;
        regfilemux::pc_plus4 : regfilemux_out = pc_out + 4;
        regfilemux::lb       :
            case (byte_in_word)
                2'b00: regfilemux_out = {{24{mdrreg_out[7]}}, mdrreg_out[7:0]};
                2'b01: regfilemux_out = {{24{mdrreg_out[15]}}, mdrreg_out[15:8]};
                2'b10: regfilemux_out = {{24{mdrreg_out[23]}}, mdrreg_out[23:16]};
                2'b11: regfilemux_out = {{24{mdrreg_out[31]}}, mdrreg_out[31:24]};
            endcase
        regfilemux::lbu      :
            case (byte_in_word)
                2'b00: regfilemux_out = {24'b0, mdrreg_out[7:0]};
                2'b01: regfilemux_out = {24'b0, mdrreg_out[15:8]};
                2'b10: regfilemux_out = {24'b0, mdrreg_out[23:16]};
                2'b11: regfilemux_out = {24'b0, mdrreg_out[31:24]};
            endcase
        regfilemux::lh       :
            case (byte_in_word[1])
                1'b0: regfilemux_out = {{16{mdrreg_out[15]}}, mdrreg_out[15:0]};
                1'b1: regfilemux_out = {{16{mdrreg_out[31]}}, mdrreg_out[31:16]};
            endcase
        regfilemux::lhu      :
            case (byte_in_word[1])
                1'b0: regfilemux_out = {16'b0, mdrreg_out[15:0]};
                1'b1: regfilemux_out = {16'b0, mdrreg_out[31:16]};
            endcase
    endcase
end
/*****************************************************************************/
endmodule : datapath
