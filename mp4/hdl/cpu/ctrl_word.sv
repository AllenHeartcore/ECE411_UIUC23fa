module ctrl_word
import rv32i_types::*;
import pipeline_pkg::*;
(
    // to datapath
    output ctrlex_reg_t ctrlex,
    output ctrlmem_reg_t ctrlmem,
    output ctrlwb_reg_t ctrlwb,

    // from datapath
    input  rv32i_opcode opcode,
    input  logic [2:0] funct3,
    input  logic [6:0] funct7,
    input  logic [4:0] rd_in,
    input  logic [4:0] rs1_in,
    input  logic [4:0] rs2_in
);



    branch_funct3_t branch_funct3;
    store_funct3_t store_funct3;
    load_funct3_t load_funct3;
    arith_funct3_t arith_funct3;

    assign arith_funct3 = arith_funct3_t'(funct3);
    assign branch_funct3 = branch_funct3_t'(funct3);
    assign load_funct3 = load_funct3_t'(funct3);
    assign store_funct3 = store_funct3_t'(funct3);



    function void loadPC(pcmux::pcmux_sel_t sel);
        ctrlex.pcmux_sel = sel;
    endfunction

    function void loadRegfile(regfilemux::regfilemux_sel_t sel);
        ctrlwb.load_regfile = 1'b1;
        ctrlwb.regfilemux_sel = sel;
    endfunction

    function void loadMAR(marmux::marmux_sel_t sel);
        ctrlmem.marmux_sel = sel;
    endfunction

    function void setALU(alumux::alumux1_sel_t sel1, alumux::alumux2_sel_t sel2, alu_ops op);
        ctrlex.alumux1_sel = sel1;
        ctrlex.alumux2_sel = sel2;
        ctrlex.aluop = op;
    endfunction

    function automatic void setCMP(cmpmux::cmpmux_sel_t sel, branch_funct3_t op);
        ctrlex.cmpmux_sel = sel;
        ctrlex.cmpop = op;
    endfunction

    function void set_defaults();
        ctrlwb.load_regfile = 1'b0;
        ctrlex.pcmux_sel = pcmux::pc_plus4;
        ctrlex.alumux1_sel = alumux::rs1_out;
        ctrlex.alumux2_sel = alumux::i_imm;
        ctrlwb.regfilemux_sel = regfilemux::alu_out;
        ctrlmem.marmux_sel = marmux::pc_out;
        ctrlex.cmpmux_sel = cmpmux::rs2_out;
        ctrlex.is_branch = 1'b0;
        ctrlex.aluop = alu_add;
        ctrlex.cmpop = branch_funct3_t'(funct3);
        ctrlmem.dmem_read = 1'b0;
        ctrlmem.dmem_write = 1'b0;
        ctrlwb.rd = rd_in;
        ctrlwb.rs1 = rs1_in;
        ctrlwb.rs2 = rs2_in;
        ctrlmem.opcode = opcode;
        ctrlmem.funct3 = funct3;
    endfunction

    always_comb begin
        set_defaults();
        case (opcode)

            op_lui: begin
                loadRegfile(regfilemux::u_imm);
            end

            op_auipc: begin
                setALU(alumux::pc_out, alumux::u_imm, alu_add);
                loadRegfile(regfilemux::alu_out);
            end

            op_imm: begin
                case (funct3)
                    slt: begin
                        loadRegfile(regfilemux::br_en);
                        ctrlex.cmpop = blt;
                        ctrlex.cmpmux_sel = cmpmux::i_imm;
                    end
                    sltu: begin
                        loadRegfile(regfilemux::br_en);
                        ctrlex.cmpop = bltu;
                        ctrlex.cmpmux_sel = cmpmux::i_imm;
                    end
                    sr: begin
                        loadRegfile(regfilemux::alu_out);
                        if (funct7[5]) begin
                            setALU(alumux::rs1_out, alumux::i_imm, alu_sra);
                        end
                        else begin
                            setALU(alumux::rs1_out, alumux::i_imm, alu_srl);
                        end
                    end
                    default: begin
                        loadRegfile(regfilemux::alu_out);
                        setALU(alumux::rs1_out, alumux::i_imm, alu_ops'(funct3));
                    end
                endcase
            end

            op_br: begin
                setALU(alumux::pc_out, alumux::b_imm, alu_add);
                ctrlex.cmpmux_sel = cmpmux::rs2_out;
                ctrlex.cmpop = branch_funct3_t'(funct3);
                ctrlex.is_branch = 1'b1;
            end

            op_jal: begin
                loadRegfile(regfilemux::pc_plus4);
                setALU(alumux::pc_out, alumux::j_imm, alu_add);
                ctrlex.pcmux_sel = pcmux::alu_out;
            end

            op_jalr: begin
                loadRegfile(regfilemux::pc_plus4);
                setALU(alumux::rs1_out, alumux::i_imm, alu_add);
                ctrlex.pcmux_sel = pcmux::alu_mod2;
            end

            op_reg: begin
                loadRegfile(regfilemux::alu_out);
                case (arith_funct3_t'(funct3))
                    add: begin
                        // SUB
                        if (funct7[5]) begin
                            setALU(alumux::rs1_out, alumux::rs2_out, alu_sub);
                        end
                        // ADD
                        else begin
                            setALU(alumux::rs1_out, alumux::rs2_out, alu_add);
                        end
                    end
                    slt: begin
                        loadRegfile(regfilemux::br_en);
                        setCMP(cmpmux::rs2_out, blt);
                    end
                    sltu: begin
                        loadRegfile(regfilemux::br_en);
                        setCMP(cmpmux::rs2_out, bltu);
                    end
                    sr: begin
                        if (funct7[5]) begin
                            setALU(alumux::rs1_out, alumux::rs2_out, alu_sra);
                        end
                        else begin
                            setALU(alumux::rs1_out, alumux::rs2_out, alu_srl);
                        end
                    end
                    default: begin
                        setALU(alumux::rs1_out, alumux::rs2_out, alu_ops'(funct3));
                    end
                endcase
            end

            op_load: begin
                setALU(alumux::rs1_out, alumux::i_imm, alu_add);
                loadMAR(marmux::alu_out);
                ctrlmem.dmem_read = 1'b1;
                case (load_funct3_t'(funct3))
                    lw: begin
                        loadRegfile(regfilemux::lw);
                    end
                    lh: begin
                        loadRegfile(regfilemux::lh);
                    end
                    lhu: begin
                        loadRegfile(regfilemux::lhu);
                    end
                    lb: begin
                        loadRegfile(regfilemux::lb);
                    end
                    lbu: begin
                        loadRegfile(regfilemux::lbu);
                    end
                endcase
            end

            op_store: begin
                setALU(alumux::rs1_out, alumux::s_imm, alu_add);
                loadMAR(marmux::alu_out);
                ctrlmem.dmem_write = 1'b1;
            end
        endcase

    end


endmodule : ctrl_word
