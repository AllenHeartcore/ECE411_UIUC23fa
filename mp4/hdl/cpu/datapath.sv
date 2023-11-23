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
    input  ctrlwb_reg_t ctrlwb_at_ex,
    input  ctrlwb_reg_t ctrlwb_at_mem,

    // to ctrl_word
    output rv32i_opcode opcode,
    output logic [2:0] funct3,
    output logic [6:0] funct7,
    output logic [4:0] rd_in,
    output logic [4:0] rs1_in,
    output logic [4:0] rs2_in,

    // from hazard_ctrl
    input  hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl,
    input  logic wb_commit,
    input  logic ex_enable,
    output logic ex_is_branch,
    output logic branch_mispredict,

    // from branch predictor
    input  logic [31:0] predicted_pc,

    // from forwarding_unit
    input  fwdmux::fwdmux_sel_t fwdmux1_sel, fwdmux2_sel,

    // from memory
    input  rv32i_word imem_rdata, dmem_rdata,

    // to memory
    output rv32i_word imem_address, dmem_address,
    output logic [3:0] dmem_rmask, dmem_wmask,
    output rv32i_word dmem_wdata
);

    logic [4:0] rs1, rs2, rd;
    pcmux::pcmux_sel_t pcmux_sel_ex;
    pcmux::pcmux_sel_t pcmux_sel;
    rv32i_word i_imm, s_imm, b_imm, u_imm, j_imm;
    rv32i_word alumux1_out, alumux2_out, cmpmux_out;
    rv32i_word pcmux_out, marmux_out, regfilemux_out;
    rv32i_word fwdmux1_out, fwdmux2_out;

    pipeline_reg_t if_id_reg_i,  if_id_reg_o;
    pipeline_reg_t id_ex_reg_i,  id_ex_reg_o;
    pipeline_reg_t ex_mem_reg_i, ex_mem_reg_o;
    pipeline_reg_t mem_wb_reg_i, mem_wb_reg_o;

    /* Branch Feedback (to hazard control) */
    assign ex_is_branch = pcmux_sel_ex != pcmux::pc_plus4; // jump or branch
    assign branch_mispredict = ex_mem_reg_i._pc_wdata != id_ex_reg_o._pc_wdata; // branch mispredict

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
        .rd(ctrlwb.rd),
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

    // PCMUX REG
    logic load_pc_mux;
    pcmux::pcmux_sel_t pc_mux_reg_i, pc_mux_reg_o;
    assign load_pc_mux = (ex_enable && hazard_ctrl.load_ex_mem && branch_mispredict) || (hazard_ctrl.load_if_id);
    assign pc_mux_reg_i = (ex_enable && hazard_ctrl.load_ex_mem && branch_mispredict) ? pcmux_sel_ex : pcmux::pc_plus4; 
    assign pcmux_sel = (pc_mux_reg_o != pcmux::pc_plus4) ? pc_mux_reg_o : pcmux::pc_predict;

    pcmux_reg  PCMUX_REG(.*,
        .load(load_pc_mux),
        .in(pc_mux_reg_i),
        .out(pc_mux_reg_o)
    );


    assign rs1_in = rs1;
    assign rs2_in = rs2;
    assign rd_in  = rd;



    /* Memory Interface */

    assign imem_address = if_id_reg_i.pc;
    assign dmem_address = marmux_out;

    always_comb begin : CALC_STORE_DATA
        case (store_funct3_t'(ctrlmem.funct3))
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
        dmem_rmask = 4'b0000;
        dmem_wmask = 4'b0000;
        case (ctrlmem.opcode)
            op_load: case (load_funct3_t'(ctrlmem.funct3))
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
            op_store: case (store_funct3_t'(ctrlmem.funct3))
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
    // haor2 : these 2 registers are for wb commit
    rv32i_word id_ex_reg_r1_i, id_ex_reg_r2_i;
    rv32i_word id_ex_reg_r1_o, id_ex_reg_r2_o;

    logic load_id_ex_r1, load_id_ex_r2;
    logic wb_update_rs1, wb_update_rs2;
    // writeback update rs1
    // when id_commit and wb_commit, we need to use the rs1,rs2 from ID stage
    // otherwise, since instruction is in id_ex reg, we can use the rs1,rs2 from ctrl word for id_ex (ctrlwb_at_ex)
    assign wb_update_rs1 = hazard_ctrl.load_id_ex ? (wb_commit && ctrlwb.rd == rs1 && rs1) : (wb_commit && ctrlwb.rd == ctrlwb_at_ex.rs1 && ctrlwb_at_ex.rs1);
    assign wb_update_rs2 = hazard_ctrl.load_id_ex ? (wb_commit && ctrlwb.rd == rs2 && rs2) : (wb_commit && ctrlwb.rd == ctrlwb_at_ex.rs2 && ctrlwb_at_ex.rs2);

    assign load_id_ex_r1 = hazard_ctrl.load_id_ex | wb_update_rs1;
    assign load_id_ex_r2 = hazard_ctrl.load_id_ex | wb_update_rs2;

    assign id_ex_reg_r1_i = wb_update_rs1 ? regfilemux_out : id_ex_reg_i.r1;
    assign id_ex_reg_r2_i = wb_update_rs2 ? regfilemux_out : id_ex_reg_i.r2;

    register id_ex_regs_r1(
        .*, .load(load_id_ex_r1),
        .in(id_ex_reg_r1_i), .out(id_ex_reg_r1_o)
    );

    register id_ex_regs_r2(
        .*, .load(load_id_ex_r2),
        .in(id_ex_reg_r2_i), .out(id_ex_reg_r2_o)
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
    assign if_id_reg_i._pc_wdata = pcmux_out; // used to check if branch prediction is correct
    assign id_ex_reg_i.pc = if_id_reg_o.pc;
    assign id_ex_reg_i.ir = if_id_reg_o.ir;
    assign id_ex_reg_i._pc_wdata = if_id_reg_o._pc_wdata;
    assign ex_mem_reg_i.pc = id_ex_reg_o.pc;
    assign ex_mem_reg_i.mdr = fwdmux2_out;
    assign ex_mem_reg_i.uim = u_imm;
    assign mem_wb_reg_i.mdr = dmem_rdata;
    assign mem_wb_reg_i.uim = ex_mem_reg_o.uim;
    assign mem_wb_reg_i.alu = ex_mem_reg_o.alu;
    assign mem_wb_reg_i.cmp = ex_mem_reg_o.cmp;

    // for monitor compatibility
    assign ex_mem_reg_i.ir = id_ex_reg_o.ir;
    assign mem_wb_reg_i.ir = ex_mem_reg_o.ir;
    assign mem_wb_reg_i.pc = ex_mem_reg_o.pc;
    assign ex_mem_reg_i.r1 = fwdmux1_out;
    assign mem_wb_reg_i.r1 = ex_mem_reg_o.r1;
    assign mem_wb_reg_i.r2 = ex_mem_reg_o.mdr;
    // use ex stage pc and pcmux_sel_ex to determine PCMUX's future output
    logic [31:0] pcmux_i;
    assign pcmux_i = pcmux_sel_ex == pcmux::alu_out ? ex_mem_reg_i.alu : ex_mem_reg_i.alu & 32'hFFFFFFFE;
    assign ex_mem_reg_i._pc_wdata = pcmux_sel_ex != pcmux::pc_plus4 ? pcmux_i : (ex_mem_reg_i.pc + 4); // if branch or jump, we need to overwrite wdata, otherwise we need to use pc addr at EX stage (not IF stage, so we can't use pcmux_out directly)
    assign mem_wb_reg_i._pc_wdata = ex_mem_reg_o._pc_wdata;
    assign mem_wb_reg_i._mem_addr = marmux_out;
    assign mem_wb_reg_i._mem_rmask = dmem_rmask;
    assign mem_wb_reg_i._mem_wmask = dmem_wmask;
    assign mem_wb_reg_i._mem_wdata = dmem_wdata;

    // unused defaults, suppress synth warning LINT-58
    assign if_id_reg_i._mem_wmask = 4'b0;
    assign if_id_reg_i._mem_rmask = 4'b0;
    assign if_id_reg_i._mem_wdata = 32'b0;
    assign if_id_reg_i._mem_addr = 32'b0;
    assign if_id_reg_i.cmp = 1'b0;
    assign if_id_reg_i.alu = 32'b0;
    assign if_id_reg_i.uim = 32'b0;
    assign if_id_reg_i.mdr = 32'b0;
    assign if_id_reg_i.r1 = 32'b0;
    assign if_id_reg_i.r2 = 32'b0;
    assign id_ex_reg_i._mem_wmask = 4'b0;
    assign id_ex_reg_i._mem_rmask = 4'b0;
    assign id_ex_reg_i._mem_wdata = 32'b0;
    assign id_ex_reg_i._mem_addr = 32'b0;
    assign id_ex_reg_i._pc_wdata = 32'b0;
    assign id_ex_reg_i.cmp = 1'b0;
    assign id_ex_reg_i.alu = 32'b0;
    assign id_ex_reg_i.uim = 32'b0;
    assign id_ex_reg_i.mdr = 32'b0;
    assign ex_mem_reg_i._mem_wmask = 4'b0;
    assign ex_mem_reg_i._mem_rmask = 4'b0;
    assign ex_mem_reg_i._mem_wdata = 32'b0;
    assign ex_mem_reg_i._mem_addr = 32'b0;
    assign ex_mem_reg_i.r2 = 32'b0;



    /* ALU, CMP, MUXes */

    alu ALU(.*,
        .a(alumux1_out),
        .b(alumux2_out),
        .f(ex_mem_reg_i.alu),
        .aluop(ctrlex.aluop)
    );
    cmp CMP(.*,
        .a(fwdmux1_out),
        .b(cmpmux_out),
        .f(ex_mem_reg_i.cmp),
        .cmpop(ctrlex.cmpop)
    );
    
    always_comb begin : ALUMUX1
        unique case (ctrlex.alumux1_sel)
            alumux::rs1_out: alumux1_out = fwdmux1_out;
            alumux::pc_out : alumux1_out = id_ex_reg_o.pc;
        endcase
    end

    always_comb begin : ALUMUX2 
        unique case (ctrlex.alumux2_sel)
            alumux::i_imm  : alumux2_out = i_imm;
            alumux::s_imm  : alumux2_out = s_imm;
            alumux::b_imm  : alumux2_out = b_imm;
            alumux::u_imm  : alumux2_out = u_imm;
            alumux::j_imm  : alumux2_out = j_imm;
            alumux::rs2_out: alumux2_out = fwdmux2_out;
            default        : alumux2_out = 'X;
        endcase
    end

    always_comb begin : CMPMUX
        
        unique case (ctrlex.cmpmux_sel)
            cmpmux::rs2_out: cmpmux_out = fwdmux2_out;
            cmpmux::i_imm  : cmpmux_out = i_imm;
            default        : cmpmux_out = 'X;
        endcase

    end

    always_comb begin : MARMUX
        unique case (ctrlmem.marmux_sel)
            marmux::pc_out : marmux_out = ex_mem_reg_o.pc;
            marmux::alu_out: marmux_out = ex_mem_reg_o.alu;
            default        : marmux_out = 'X;
        endcase
    end
    

    // SEE BUG 007 in bulog.md
    rv32i_word regfilemux_at_ex_mem; 

    always_comb begin : REGFILEMUX_IN // this is the expected reg file mux result at ex_mem stage (so load is don't care)
        unique case (ctrlwb_at_mem.regfilemux_sel)
            regfilemux::pc_plus4 : regfilemux_at_ex_mem = ex_mem_reg_o.pc + 4;
            regfilemux::u_imm    : regfilemux_at_ex_mem = ex_mem_reg_o.uim;
            regfilemux::alu_out  : regfilemux_at_ex_mem = ex_mem_reg_o.alu;
            regfilemux::br_en    : regfilemux_at_ex_mem = {31'b0, ex_mem_reg_o.cmp};
            default             : regfilemux_at_ex_mem = 'X;
        endcase
    end

    always_comb begin : REGFILEMUX
        
        unique case (ctrlwb.regfilemux_sel)
            regfilemux::pc_plus4 : regfilemux_out = mem_wb_reg_o.pc + 4;
            regfilemux::u_imm    : regfilemux_out = mem_wb_reg_o.uim;
            regfilemux::alu_out  : regfilemux_out = mem_wb_reg_o.alu;
            regfilemux::br_en    : regfilemux_out = {31'b0, mem_wb_reg_o.cmp};
            regfilemux::lw       : regfilemux_out = mem_wb_reg_o.mdr;
            regfilemux::lb       :
                case (mem_wb_reg_o._mem_rmask)
                    4'b0001: regfilemux_out = {{24{mem_wb_reg_o.mdr[7]}}, mem_wb_reg_o.mdr[7:0]};
                    4'b0010: regfilemux_out = {{24{mem_wb_reg_o.mdr[15]}}, mem_wb_reg_o.mdr[15:8]};
                    4'b0100: regfilemux_out = {{24{mem_wb_reg_o.mdr[23]}}, mem_wb_reg_o.mdr[23:16]};
                    4'b1000: regfilemux_out = {{24{mem_wb_reg_o.mdr[31]}}, mem_wb_reg_o.mdr[31:24]};
                    default : regfilemux_out = 'X;
                endcase
            regfilemux::lbu      :
                case (mem_wb_reg_o._mem_rmask)
                    4'b0001: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[7:0]};
                    4'b0010: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[15:8]};
                    4'b0100: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[23:16]};
                    4'b1000: regfilemux_out = {24'b0, mem_wb_reg_o.mdr[31:24]};
                    default : regfilemux_out = 'X;
                endcase
            regfilemux::lh       :
                case (mem_wb_reg_o._mem_rmask)
                    4'b0011: regfilemux_out = {{16{mem_wb_reg_o.mdr[15]}}, mem_wb_reg_o.mdr[15:0]};
                    4'b1100: regfilemux_out = {{16{mem_wb_reg_o.mdr[31]}}, mem_wb_reg_o.mdr[31:16]};
                    default : regfilemux_out = 'X;
                endcase
            regfilemux::lhu      :
                case (mem_wb_reg_o._mem_rmask)
                    4'b0011: regfilemux_out = {16'b0, mem_wb_reg_o.mdr[15:0]};
                    4'b1100: regfilemux_out = {16'b0, mem_wb_reg_o.mdr[31:16]};
                    default : regfilemux_out = 'X;
                endcase
            default              : regfilemux_out = 'X;
        endcase
        
    end

    always_comb begin : FWDMUX1
        unique case (fwdmux1_sel)
            fwdmux::no_fwd : fwdmux1_out = id_ex_reg_r1_o;
            fwdmux::fwd_mem: fwdmux1_out = regfilemux_at_ex_mem;
            fwdmux::fwd_wb : fwdmux1_out = regfilemux_out;
            default        : fwdmux1_out = 'X;
        endcase
    end

    always_comb begin : FWDMUX2
        unique case (fwdmux2_sel)
            fwdmux::no_fwd : fwdmux2_out = id_ex_reg_r2_o;
            fwdmux::fwd_mem: fwdmux2_out = regfilemux_at_ex_mem;
            fwdmux::fwd_wb : fwdmux2_out = regfilemux_out;
            default        : fwdmux2_out = 'X;
        endcase
    end

    assign pcmux_sel_ex = ctrlex.is_branch ? pcmux::pcmux_sel_t'({1'b0, ex_mem_reg_i.cmp}) : ctrlex.pcmux_sel;
    
    always_comb begin : PCMUX

        unique case (pcmux_sel)
            pcmux::pc_plus4: pcmux_out = if_id_reg_i.pc + 4;
            pcmux::alu_out : pcmux_out = ex_mem_reg_o.alu;
            pcmux::alu_mod2: pcmux_out = ex_mem_reg_o.alu & 32'hFFFFFFFE;
            pcmux::pc_predict: pcmux_out = predicted_pc;
            default        : pcmux_out = 'X;
        endcase

    end



endmodule : datapath
