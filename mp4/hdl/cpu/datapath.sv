module datapath
import rv32i_types::*;
import pipeline_pkg::*;
(
    input  clk,
    input  rst,

    // from ctrl_word
    input  ctrlex_reg_t ctrlex,
    input  ctrlmem_reg_t ctrlmem,
    input  ctrlwb_reg_t ctrlwb,

    // to ctrl_word
    output rv32i_opcode opcode,
    output logic [2:0] funct3,
    output logic [6:0] funct7,
    output logic br_en,
    output logic [1:0] byte_in_word,

    // from hazard_ctrl
    input  hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl,

    // from memory
    input  rv32i_word imem_rdata, dmem_rdata,

    // to memory
    output rv32i_word imem_address, dmem_address,
    output logic [3:0] dmem_rmask, dmem_wmask,
    output rv32i_word dmem_wdata
);

    logic [4:0] rs1, rs2, rd;
    rv32i_word i_imm, s_imm, b_imm, u_imm, j_imm;
    rv32i_word alumux1_out, alumux2_out, cmpmux_out;
    rv32i_word pcmux_out, marmux_out, regfilemux_out;

    pipeline_reg_t if_id_reg_i,  if_id_reg_o;
    pipeline_reg_t id_ex_reg_i,  id_ex_reg_o;
    pipeline_reg_t ex_mem_reg_i, ex_mem_reg_o;
    pipeline_reg_t mem_wb_reg_i, mem_wb_reg_o;



    /* Datapath Registers */

    register #(
        .rst_value(32'h4000_0000)
    ) PC (.*,
        .load(hazard_ctrl.load_pc),
        .in(pcmux_out),
        .out(if_id_reg_i.pc)
    );

    regfile REGFILE(.*,
        .load(ctrlwb.load_regfile),
        .in(regfilemux_out),
        .rs1_out(id_ex_reg_i.r1),
        .rs2_out(id_ex_reg_i.r2)
    );

    ir_translator TRANSL_IF_ID(
        .data(if_id_reg_o.ir),
        .opcode, .funct3, .funct7, .rs1, .rs2, .rd
    );

    ir_translator TRANSL_ID_EX(
        .data(id_ex_reg_o.ir),
        .i_imm, .s_imm, .b_imm, .u_imm, .j_imm
    );



    /* Memory Interface */

    assign imem_address = if_id_reg_i.pc;
    assign dmem_address = marmux_out;

    always_comb begin : CALC_STORE_DATA
        case (store_funct3_t'(funct3))
            sw:
                dmem_wdata = ex_mem_reg_o.mdr;
            sh:
                case (marmux_out[1])
                    1'b0: dmem_wdata = ex_mem_reg_o.mdr;
                    1'b1: dmem_wdata = ex_mem_reg_o.mdr << 16;
                endcase
            sb:
                case (marmux_out[1:0])
                    2'b00: dmem_wdata = ex_mem_reg_o.mdr;
                    2'b01: dmem_wdata = ex_mem_reg_o.mdr << 8;
                    2'b10: dmem_wdata = ex_mem_reg_o.mdr << 16;
                    2'b11: dmem_wdata = ex_mem_reg_o.mdr << 24;
                endcase
            default: dmem_wdata = ex_mem_reg_o.mdr;
        endcase
    end

    always_comb begin : CALC_MASKS
        case (opcode)
            op_load: case (load_funct3_t'(funct3))
                lw: dmem_rmask = 4'b1111;
                lh, lhu: case (marmux_out[1])
                    1'b0: dmem_rmask = 4'b0011;
                    1'b1: dmem_rmask = 4'b1100;
                endcase
                lb, lbu: case (marmux_out[1:0])
                    2'b00: dmem_rmask = 4'b0001;
                    2'b01: dmem_rmask = 4'b0010;
                    2'b10: dmem_rmask = 4'b0100;
                    2'b11: dmem_rmask = 4'b1000;
                endcase
                default: dmem_rmask = 4'b0000;
            endcase
            op_store: case (store_funct3_t'(funct3))
                sw: dmem_wmask = 4'b1111;
                sh: case (marmux_out[1])
                    1'b0: dmem_wmask = 4'b0011;
                    1'b1: dmem_wmask = 4'b1100;
                endcase
                sb: case (marmux_out[1:0])
                    2'b00: dmem_wmask = 4'b0001;
                    2'b01: dmem_wmask = 4'b0010;
                    2'b10: dmem_wmask = 4'b0100;
                    2'b11: dmem_wmask = 4'b1000;
                endcase
                default: dmem_wmask = 4'b0000;
            endcase
        endcase
    end



    /* Pipeline Registers */

    pipeline_reg if_id_regs(
        .*, .load(hazard_ctrl.load_if_id),
        .in(if_id_reg_i), .out(if_id_reg_o)
    );
    pipeline_reg id_ex_regs(
        .*, .load(hazard_ctrl.load_id_ex),
        .in(id_ex_reg_i), .out(id_ex_reg_o)
    );
    pipeline_reg ex_mem_regs(
        .*, .load(hazard_ctrl.load_ex_mem),
        .in(ex_mem_reg_i), .out(ex_mem_reg_o)
    );
    pipeline_reg mem_wb_regs(
        .*, .load(hazard_ctrl.load_mem_wb),
        .in(mem_wb_reg_i), .out(mem_wb_reg_o)
    );

    assign if_id_reg_i.ir = imem_rdata;
    assign id_ex_reg_i.pc = if_id_reg_o.pc;
    assign id_ex_reg_i.ir = if_id_reg_o.ir;
    assign ex_mem_reg_i.pc = id_ex_reg_o.pc;
    assign ex_mem_reg_i.mdr = id_ex_reg_o.r2;
    assign ex_mem_reg_i.uim = u_imm;
    assign mem_wb_reg_i.mdr = dmem_rdata;
    assign mem_wb_reg_i.uim = ex_mem_reg_o.uim;
    assign mem_wb_reg_i.alu = ex_mem_reg_o.alu;
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

        unique case (ctrlex.pcmux_sel)
            pcmux::pc_plus4: pcmux_out = if_id_reg_i.pc + 4;
            pcmux::alu_out : pcmux_out = ex_mem_reg_i.alu;
            pcmux::alu_mod2: pcmux_out = ex_mem_reg_i.alu & 32'hFFFFFFFE;
            default        : pcmux_out = 'X;
        endcase

        unique case (ctrlex.alumux1_sel)
            alumux::rs1_out: alumux1_out = id_ex_reg_o.r1;
            alumux::pc_out : alumux1_out = id_ex_reg_o.pc;
        endcase

        unique case (ctrlex.alumux2_sel)
            alumux::i_imm  : alumux2_out = i_imm;
            alumux::s_imm  : alumux2_out = s_imm;
            alumux::b_imm  : alumux2_out = b_imm;
            alumux::u_imm  : alumux2_out = u_imm;
            alumux::j_imm  : alumux2_out = j_imm;
            alumux::rs2_out: alumux2_out = id_ex_reg_o.r2;
        endcase

        unique case (ctrlex.cmpmux_sel)
            cmpmux::rs2_out: cmpmux_out = id_ex_reg_o.r2;
            cmpmux::i_imm  : cmpmux_out = i_imm;
        endcase

        unique case (ctrlmem.marmux_sel)
            marmux::pc_out : marmux_out = ex_mem_reg_o.pc;
            marmux::alu_out: marmux_out = ex_mem_reg_o.alu;
        endcase

        unique case (ctrlwb.regfilemux_sel)
            regfilemux::pc_plus4 : regfilemux_out = mem_wb_reg_o.pc + 4;
            regfilemux::u_imm    : regfilemux_out = mem_wb_reg_o.uim;
            regfilemux::alu_out  : regfilemux_out = mem_wb_reg_o.alu;
            regfilemux::br_en    : regfilemux_out = {31'b0, mem_wb_reg_o.cmp};
            regfilemux::lw       : regfilemux_out = mem_wb_reg_o.mdr;
            regfilemux::lb       :
                case (marmux_out[1:0])
                    2'b00: regfilemux_out = {{24{mem_wb_reg_o.mdr[7]}}, mem_wb_reg_o.mdr[7:0]};
                    2'b01: regfilemux_out = {{24{mem_wb_reg_o.mdr[15]}}, mem_wb_reg_o.mdr[15:8]};
                    2'b10: regfilemux_out = {{24{mem_wb_reg_o.mdr[23]}}, mem_wb_reg_o.mdr[23:16]};
                    2'b11: regfilemux_out = {{24{mem_wb_reg_o.mdr[31]}}, mem_wb_reg_o.mdr[31:24]};
                endcase
            regfilemux::lbu      :
                case (marmux_out[1:0])
                    2'b00: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[7:0]};
                    2'b01: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[15:8]};
                    2'b10: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[23:16]};
                    2'b11: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[31:24]};
                endcase
            regfilemux::lh       :
                case (marmux_out[1])
                    1'b0: regfilemux_out = {{16{mem_wb_reg_o.mdr[15]}}, mem_wb_reg_o.mdr[15:0]};
                    1'b1: regfilemux_out = {{16{mem_wb_reg_o.mdr[31]}}, mem_wb_reg_o.mdr[31:16]};
                endcase
            regfilemux::lhu      :
                case (marmux_out[1])
                    1'b0: regfilemux_out = {16'b0, mem_wb_reg_o.mdr[15:0]};
                    1'b1: regfilemux_out = {16'b0, mem_wb_reg_o.mdr[31:16]};
                endcase
        endcase

    end



endmodule : datapath
