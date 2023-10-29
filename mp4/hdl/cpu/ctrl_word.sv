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
    output logic load_regfile,
    output logic is_branch,

    // from datapath
    input  rv32i_opcode opcode,
    input  logic [2:0] funct3,
    input  logic [6:0] funct7,
    input  logic [4:0] rd_in,
    input  logic [4:0] rs1_in,
    input  logic [4:0] rs2_in,

    // to memory
    output logic imem_read, dmem_read, dmem_write,
    output logic [4:0] rd_out,
    output logic [4:0] rs1_out,
    output logic [4:0] rs2_out
);

    branch_funct3_t branch_funct3;
    store_funct3_t store_funct3;
    load_funct3_t load_funct3;
    arith_funct3_t arith_funct3;

    assign arith_funct3 = arith_funct3_t'(funct3);
    assign branch_funct3 = branch_funct3_t'(funct3);
    assign load_funct3 = load_funct3_t'(funct3);
    assign store_funct3 = store_funct3_t'(funct3);

    

    /**
    *  Use the next several functions to set the signals needed to
    *  load various registers
    **/
    function void loadPC(pcmux::pcmux_sel_t sel);
        pcmux_sel = sel;
    endfunction

    function void loadRegfile(regfilemux::regfilemux_sel_t sel);
        load_regfile = 1'b1;
        regfilemux_sel = sel;
    endfunction

    function void loadMAR(marmux::marmux_sel_t sel);
        marmux_sel = sel;
    endfunction



    function void setALU(alumux::alumux1_sel_t sel1, alumux::alumux2_sel_t sel2, logic setop , alu_ops op);
        /* Student code here */
        alumux1_sel = sel1;
        alumux2_sel = sel2;
        if (setop)
            aluop = op; // else default value
        else aluop = alu_ops'(funct3);
    endfunction

    function automatic void setCMP(cmpmux::cmpmux_sel_t sel, branch_funct3_t op);
        /* Student code here */
        cmpmux_sel = sel;
        cmpop = op;
    endfunction

    function void set_defaults();
        /* Student code here */
        load_regfile = 1'b0;
        pcmux_sel = pcmux::pc_plus4;
        alumux1_sel = alumux::rs1_out;
        alumux2_sel = alumux::i_imm;
        regfilemux_sel = regfilemux::alu_out;
        marmux_sel = marmux::pc_out;
        cmpmux_sel = cmpmux::rs2_out;
        is_branch = 1'b0;
        aluop = alu_add;
        cmpop = branch_funct3_t'(funct3);
        imem_read = 1'b1;
        dmem_read = 1'b0;
        dmem_write = 1'b0;
        rd_out = rd_in;
        rs1_out = rs1_in;
        rs2_out = rs2_in;
    endfunction

    /**
    * @todo
    * This unit maps 
    * [IR, Hazard Control, Memory Signal] -> Control Word 
    */
    always_comb begin
        case (opcode)
            op_lui: begin
                loadRegfile(regfilemux::u_imm);
            end
            op_auipc: begin
                setALU(alumux::pc_out, alumux::u_imm, 1'b1, alu_add);
                loadRegfile(regfilemux::alu_out);
            end 
            op_imm: begin
                case (funct3)
                    slt: begin
                        loadRegfile(regfilemux::br_en);
                        cmpop = blt;
                        cmpmux_sel = cmpmux::i_imm;
                    end
                    sltu: begin
                        loadRegfile(regfilemux::br_en);
                        cmpop = bltu;
                        cmpmux_sel = cmpmux::i_imm;
                    end
                    sr: begin
                        loadRegfile(regfilemux::alu_out);
                        if (funct7[5]) begin
                            setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_sra);
                        end
                        else begin
                            setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_srl);
                        end
                    end
                    default: begin
                        loadRegfile(regfilemux::alu_out);
                        setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_ops'(funct3));
                    end

                endcase
            end
            op_br: begin
                setALU(alumux::pc_out, alumux::b_imm, 1'b1, alu_add);
                cmpmux_sel = cmpmux::rs2_out;
                cmpop = branch_funct3_t'(funct3);
                is_branch = 1'b1;
            end
            
            op_jal: begin
                loadRegfile(regfilemux::pc_plus4);
                setALU(alumux::pc_out, alumux::j_imm, 1'b1, alu_add);
                pcmux_sel = pcmux::alu_out;
            end

            op_jalr: begin
                loadRegfile(regfilemux::pc_plus4);
                setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_add);
                pcmux_sel = pcmux::alu_mod2;
            end

            op_reg: begin
                loadRegfile(regfilemux::alu_out);
                case (arith_funct3_t'(funct3))
                    add: begin
                        // SUB
                        if (funct7[5]) begin
                            setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_sub);
                        end
                        // ADD
                        else begin
                            setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_add);
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
                            setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_sra);
                        end
                        else begin
                            setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_srl);
                        end
                    end
                    default: begin
                        setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_ops'(funct3));
                    end
                endcase
            end            

            op_load: begin
                setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_add);
                loadMAR(marmux::alu_out);
                dmem_read = 1'b1;
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
                setALU(alumux::rs1_out, alumux::s_imm, 1'b1, alu_add);
                loadMAR(marmux::alu_out);
                dmem_write = 1'b1;
            end
        endcase 

    end
    

endmodule : ctrl_word
