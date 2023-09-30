
module control
import rv32i_types::*;
(
    input clk,
    input rst,

    // to datapath
    output pcmux::pcmux_sel_t pcmux_sel,
    output alumux::alumux1_sel_t alumux1_sel,
    output alumux::alumux2_sel_t alumux2_sel,
    output regfilemux::regfilemux_sel_t regfilemux_sel,
    output marmux::marmux_sel_t marmux_sel,
    output cmpmux::cmpmux_sel_t cmpmux_sel,
    output alu_ops aluop,
    output branch_funct3_t cmpop,
    output logic load_pc,
    output logic load_ir,
    output logic load_regfile,
    output logic load_mar,
    output logic load_mdr,
    output logic load_data_out,

    // from datapath
    input rv32i_opcode opcode,
    input logic [2:0] funct3,
    input logic [6:0] funct7,
    input logic br_en,
    input logic [4:0] rs1,
    input logic [4:0] rs2,
    input logic [1:0] byte_in_word,

    // from memory
    input logic mem_resp,

    // to memory
    output logic mem_read,
    output logic mem_write,
    output logic [3:0] mem_byte_enable
);



logic trap;
logic [3:0] rmask, wmask;
logic [4:0] rs1_addr, rs2_addr;
alu_ops alu_op;
arith_funct3_t arith_funct3;
branch_funct3_t branch_funct3;
load_funct3_t load_funct3;
store_funct3_t store_funct3;

assign rs1_addr = rs1;
assign rs2_addr = rs2;
assign alu_op = alu_ops'(funct3);
assign arith_funct3 = arith_funct3_t'(funct3);
assign branch_funct3 = branch_funct3_t'(funct3);
assign load_funct3 = load_funct3_t'(funct3);
assign store_funct3 = store_funct3_t'(funct3);

always_comb begin : TRAP_CHECK
    trap = '0;
    rmask = '0;
    wmask = '0;

    case (opcode)
        op_lui, op_auipc, op_jal, op_jalr, op_imm, op_reg: ;

        op_br: begin
            case (branch_funct3)
                beq, bne, blt, bge, bltu, bgeu: ;
                default: trap = '1;
            endcase
        end

        op_load: begin
            case (load_funct3)
                lw:
                    rmask = 4'b1111;
                lh, lhu: begin
                    case (byte_in_word[1])
                        1'b0: rmask = 4'b0011;
                        1'b1: rmask = 4'b1100;
                    endcase
                end
                lb, lbu: begin
                    case (byte_in_word)
                        2'b00: rmask = 4'b0001;
                        2'b01: rmask = 4'b0010;
                        2'b10: rmask = 4'b0100;
                        2'b11: rmask = 4'b1000;
                    endcase
                end
                default: trap = '1;
            endcase
        end

        op_store: begin
            case (store_funct3)
                sw:
                    wmask = 4'b1111;
                sh:
                    case (byte_in_word[1])
                        1'b0: wmask = 4'b0011;
                        1'b1: wmask = 4'b1100;
                    endcase
                sb:
                    case (byte_in_word)
                        2'b00: wmask = 4'b0001;
                        2'b01: wmask = 4'b0010;
                        2'b10: wmask = 4'b0100;
                        2'b11: wmask = 4'b1000;
                    endcase
                default: trap = '1;
            endcase
        end

        default: trap = '1;
    endcase
end



function void set_defaults();
    pcmux_sel = pcmux::pc_plus4;
    alumux1_sel = alumux::rs1_out;
    alumux2_sel = alumux::i_imm;
    regfilemux_sel = regfilemux::alu_out;
    marmux_sel = marmux::pc_out;
    cmpmux_sel = cmpmux::rs2_out;
    aluop = alu_op;
    cmpop = branch_funct3;
    load_pc = 1'b0;
    load_ir = 1'b0;
    load_regfile = 1'b0;
    load_mar = 1'b0;
    load_mdr = 1'b0;
    load_data_out = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    mem_byte_enable = 4'b1111;
endfunction

function void loadPC(pcmux::pcmux_sel_t sel);
    load_pc = 1'b1;
    pcmux_sel = sel;
endfunction

function void loadIR();
    load_ir = 1'b1;
endfunction

function void loadRegfile(regfilemux::regfilemux_sel_t sel);
    load_regfile = 1'b1;
    regfilemux_sel = sel;
endfunction

function void loadMAR(marmux::marmux_sel_t sel);
    load_mar = 1'b1;
    marmux_sel = sel;
endfunction

function void loadMDR();
    load_mdr = 1'b1;
endfunction

function void loadDataOut();
    load_data_out = 1'b1;
endfunction

function void setALU(alumux::alumux1_sel_t sel1, alumux::alumux2_sel_t sel2, alu_ops op);
    alumux1_sel = sel1;
    alumux2_sel = sel2;
    aluop = op;
endfunction

function void setCMP(cmpmux::cmpmux_sel_t sel, branch_funct3_t op);
    cmpmux_sel = sel;
    cmpop = op;
endfunction

function void memoryRead();
    mem_read = 1'b1;
endfunction

function void memoryWrite();
    mem_write = 1'b1;
    mem_byte_enable = wmask;
endfunction



enum int unsigned {
    FETCH1, FETCH2, FETCH3, DECODE,
    LUI, AUIPC, JAL, JALR, BR, IMM, REG,
    LD1, LD2, LD3, ST1, ST2, ST3
} state, next_state;

always_ff @(posedge clk) begin
    if (rst)
        state <= FETCH1;
    else
        state <= next_state;
end



always_comb begin : NEXT_STATE_LOGIC
    unique case (state)
        FETCH1:             next_state = FETCH2;
        FETCH2:
            if (mem_resp)   next_state = FETCH3;
            else            next_state = FETCH2;
        FETCH3:             next_state = DECODE;
        DECODE:
            case (opcode)
                op_lui:     next_state = LUI;
                op_auipc:   next_state = AUIPC;
                op_jal:     next_state = JAL;
                op_jalr:    next_state = JALR;
                op_br:      next_state = BR;
                op_imm:     next_state = IMM;
                op_reg:     next_state = REG;
                op_load:    next_state = LD1;
                op_store:   next_state = ST1;
                default:    next_state = FETCH1;
            endcase
        LD1:                next_state = LD2;
        LD2:
            if (mem_resp)   next_state = LD3;
            else            next_state = LD2;
        ST1:                next_state = ST2;
        ST2:
            if (mem_resp)   next_state = ST3;
            else            next_state = ST2;
        default:            next_state = FETCH1;
    endcase
end



always_comb begin : STATE_ACTIONS

    set_defaults();

    unique case (state)

        FETCH1: begin
            loadMAR(marmux::pc_out);
        end

        FETCH2: begin
            memoryRead();
            loadMDR();
        end

        FETCH3: begin
            loadIR();
        end

        LUI: begin
            loadPC(pcmux::pc_plus4);
            loadRegfile(regfilemux::u_imm);
        end

        AUIPC: begin
            setALU(alumux::pc_out, alumux::u_imm, alu_add);
            loadPC(pcmux::pc_plus4);
            loadRegfile(regfilemux::alu_out);
        end

        JAL: begin
            setALU(alumux::pc_out, alumux::j_imm, alu_add);
            loadPC(pcmux::alu_out);
            loadRegfile(regfilemux::pc_plus4);
        end

        JALR: begin
            setALU(alumux::rs1_out, alumux::i_imm, alu_add);
            loadPC(pcmux::alu_mod2);
            loadRegfile(regfilemux::pc_plus4);
        end

        BR: begin
            setALU(alumux::pc_out, alumux::b_imm, alu_add);
            setCMP(cmpmux::rs2_out, branch_funct3);
            loadPC(pcmux::pcmux_sel_t'({1'b0, br_en}));
        end

        IMM: begin
            case (arith_funct3)
                slt: begin
                    setCMP(cmpmux::i_imm, blt);
                    loadRegfile(regfilemux::br_en);
                end
                sltu: begin
                    setCMP(cmpmux::i_imm, bltu);
                    loadRegfile(regfilemux::br_en);
                end
                sr: begin
                    if (funct7[5]) begin
                        setALU(alumux::rs1_out, alumux::i_imm, alu_sra);
                        loadRegfile(regfilemux::alu_out);
                    end
                    else begin
                        setALU(alumux::rs1_out, alumux::i_imm, alu_srl);
                        loadRegfile(regfilemux::alu_out);
                    end
                end
                default: begin
                    setALU(alumux::rs1_out, alumux::i_imm, alu_op);
                    loadRegfile(regfilemux::alu_out);
                end
            endcase
            loadPC(pcmux::pc_plus4);
        end

        REG: begin
            case (arith_funct3)
                slt: begin
                    setCMP(cmpmux::rs2_out, blt);
                    loadRegfile(regfilemux::br_en);
                end
                sltu: begin
                    setCMP(cmpmux::rs2_out, bltu);
                    loadRegfile(regfilemux::br_en);
                end
                sr: begin
                    if (funct7[5]) begin
                        setALU(alumux::rs1_out, alumux::rs2_out, alu_sra);
                        loadRegfile(regfilemux::alu_out);
                    end
                    else begin
                        setALU(alumux::rs1_out, alumux::rs2_out, alu_srl);
                        loadRegfile(regfilemux::alu_out);
                    end
                end
                add: begin
                    if (funct7[5]) begin
                        setALU(alumux::rs1_out, alumux::rs2_out, alu_sub);
                        loadRegfile(regfilemux::alu_out);
                    end
                    else begin
                        setALU(alumux::rs1_out, alumux::rs2_out, alu_add);
                        loadRegfile(regfilemux::alu_out);
                    end
                end
                default: begin
                    setALU(alumux::rs1_out, alumux::rs2_out, alu_op);
                    loadRegfile(regfilemux::alu_out);
                end
            endcase
            loadPC(pcmux::pc_plus4);
        end

        LD1: begin
            setALU(alumux::rs1_out, alumux::i_imm, alu_add);
            loadMAR(marmux::alu_out);
        end

        LD2: begin
            memoryRead();
            loadMDR();
        end

        LD3: begin
            case (load_funct3)
                lb:  loadRegfile(regfilemux::lb);
                lbu: loadRegfile(regfilemux::lbu);
                lh:  loadRegfile(regfilemux::lh);
                lhu: loadRegfile(regfilemux::lhu);
                lw:  loadRegfile(regfilemux::lw);
                default: ;
            endcase
            loadPC(pcmux::pc_plus4);
        end

        ST1: begin
            setALU(alumux::rs1_out, alumux::s_imm, alu_add);
            loadMAR(marmux::alu_out);
            loadDataOut();
        end

        ST2: begin
            memoryWrite();
        end

        ST3: begin
            loadPC(pcmux::pc_plus4);
        end

        default: ;
    endcase

end



endmodule : control
