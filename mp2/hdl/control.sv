
module control
import rv32i_types::*; /* Import types defined in rv32i_types.sv */
(
    input clk,
    input rst,

    // from datapath
    input rv32i_opcode opcode,
    input logic [2:0] funct3,
    input logic [6:0] funct7,
    input logic br_en,
    input logic [4:0] rs1,
    input logic [4:0] rs2,

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

    // from memory
    input logic mem_resp,

    // to memory
    output logic mem_read,
    output logic mem_write,
    output logic [3:0] mem_byte_enable
);

/***************** USED BY RVFIMON --- ONLY MODIFY WHEN TOLD *****************/
logic trap;
logic [4:0] rs1_addr, rs2_addr;
logic [3:0] rmask, wmask;
/*****************************************************************************/

branch_funct3_t branch_funct3;
store_funct3_t store_funct3;
load_funct3_t load_funct3;
arith_funct3_t arith_funct3;
alu_ops alu_op;

assign arith_funct3 = arith_funct3_t'(funct3);
assign branch_funct3 = branch_funct3_t'(funct3);
assign load_funct3 = load_funct3_t'(funct3);
assign store_funct3 = store_funct3_t'(funct3);
assign alu_op = alu_ops'(funct3);
assign rs1_addr = rs1;
assign rs2_addr = rs2;

always_comb
begin : trap_check
    trap = '0;
    rmask = '0;
    wmask = '0;

    case (opcode)
        op_lui, op_auipc, op_imm, op_reg, op_jal, op_jalr:;

        op_br: begin
            case (branch_funct3)
                beq, bne, blt, bge, bltu, bgeu:;
                default: trap = '1;
            endcase
        end

        op_load: begin
            case (load_funct3)
                lw: rmask = 4'b1111;
                lh, lhu: rmask = 4'b0011;
                lb, lbu: rmask = 4'b0001;
                default: trap = '1;
            endcase
        end

        op_store: begin
            case (store_funct3)
                sw: wmask = 4'b1111;
                sh: wmask = 4'b0011;
                sb: wmask = 4'b0001;
                default: trap = '1;
            endcase
        end

        default: trap = '1;
    endcase
end
/*****************************************************************************/

enum int unsigned {
    /* List of states */
    FETCH1, FETCH2, FETCH3, DECODE,
    LUI, AUIPC, JAL, JALR, BR, IMM, REG,
    CALC_ADDR, LD1, LD2, ST1, ST2
} state, next_states;

/************************* Function Definitions *******************************/
/**
 *  You do not need to use these functions, but it can be nice to encapsulate
 *  behavior in such a way.  For example, if you use the `loadRegfile`
 *  function, then you only need to ensure that you set the load_regfile bit
 *  to 1'b1 in one place, rather than in many.
 *
 *  SystemVerilog functions must take zero "simulation time" (as opposed to 
 *  tasks).  Thus, they are generally synthesizable, and appropraite
 *  for design code.  Arguments to functions are, by default, input.  But
 *  may be passed as outputs, inouts, or by reference using the `ref` keyword.
**/

/**
 *  Rather than filling up an always_block with a whole bunch of default values,
 *  set the default values for controller output signals in this function,
 *   and then call it at the beginning of your always_comb block.
**/
function void set_defaults();
    load_pc = 1'b0;
    load_ir = 1'b0;
    load_regfile = 1'b0;
    load_mar = 1'b0;
    load_mdr = 1'b0;
    load_data_out = 1'b0;
    pcmux_sel = pcmux::pc_plus4;
    alumux1_sel = alumux::rs1_out;
    alumux2_sel = alumux::i_imm;
    regfilemux_sel = regfilemux::alu_out;
    marmux_sel = marmux::pc_out;
    cmpmux_sel = cmpmux::rs2_out;
    aluop = alu_op;
    cmpop = branch_funct3;
    mem_read = 1'b0;
    mem_write = 1'b0;
    mem_byte_enable = 4'b1111;
endfunction

/**
 *  Use the next several functions to set the signals needed to
 *  load various registers
**/
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

function void setALU(alumux::alumux1_sel_t sel1, alumux::alumux2_sel_t sel2, logic setop, alu_ops op);
    alumux1_sel = sel1;
    alumux2_sel = sel2;
    if (setop)
        aluop = op; // else default value
endfunction

function automatic void setCMP(cmpmux::cmpmux_sel_t sel, branch_funct3_t op);
    cmpmux_sel = sel;
    cmpop = op;
endfunction

function void memoryRead();
    mem_read = 1'b1;
endfunction

function void memoryWrite(logic [3:0] wmask);
    mem_write = 1'b1;
    mem_byte_enable = wmask;
endfunction

/*****************************************************************************/

    /* Remember to deal with rst signal */

always_comb
begin : state_actions
    /* Default output assignments */
    set_defaults();
    /* Actions for each state */

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
            setALU(alumux::pc_out, alumux::u_imm, 1'b1, alu_add);
            loadPC(pcmux::pc_plus4);
            loadRegfile(regfilemux::alu_out);
        end

        JAL: begin
            setALU(alumux::pc_out, alumux::j_imm, 1'b1, alu_add);
            loadPC(pcmux::alu_out);
            loadRegfile(regfilemux::pc_plus4);
        end

        JALR: begin
            setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_add);
            loadPC(pcmux::alu_mod2);
            loadRegfile(regfilemux::pc_plus4);
        end

        BR: begin
            setALU(alumux::pc_out, alumux::b_imm, 1'b1, alu_add);
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
                        setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_sra);
                        loadRegfile(regfilemux::alu_out);
                    end
                    else begin
                        setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_srl);
                        loadRegfile(regfilemux::alu_out);
                    end
                end
                default: begin
                    setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_op);
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
                        setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_sra);
                        loadRegfile(regfilemux::alu_out);
                    end
                    else begin
                        setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_srl);
                        loadRegfile(regfilemux::alu_out);
                    end
                end
                add: begin
                    if (funct7[5]) begin
                        setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_sub);
                        loadRegfile(regfilemux::alu_out);
                    end
                    else begin
                        setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_add);
                        loadRegfile(regfilemux::alu_out);
                    end
                end
                default: begin
                    setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_op);
                    loadRegfile(regfilemux::alu_out);
                end
            endcase
            loadPC(pcmux::pc_plus4);
        end

        CALC_ADDR: begin
            loadMAR(marmux::alu_out);
            if (opcode == op_store) begin
                loadDataOut();
                setALU(alumux::rs1_out, alumux::s_imm, 1'b1, alu_add);
            end else begin
                setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_add);
            end
        end

        LD1: begin
            memoryRead();
            loadMDR();
        end

        LD2: begin
            case (load_funct3)
                lb:  loadRegfile(regfilemux::lb);
                lbu: loadRegfile(regfilemux::lbu);
                lh:  loadRegfile(regfilemux::lh);
                lhu: loadRegfile(regfilemux::lhu);
                lw:  loadRegfile(regfilemux::lw);
                default:;
            endcase
            loadPC(pcmux::pc_plus4);
        end

        ST1: begin
            memoryWrite(wmask);
        end

        ST2: begin
            loadPC(pcmux::pc_plus4);
        end

        default: ;
    endcase

end

always_comb
begin : next_state_logic
    /* Next state information and conditions (if any)
     * for transitioning between states */

    unique case (state)

        FETCH1:             next_states = FETCH2;
        FETCH2:
            if (mem_resp)   next_states = FETCH3;
            else            next_states = FETCH2;
        FETCH3:             next_states = DECODE;

        DECODE:
            case (opcode)
                op_lui:     next_states = LUI;
                op_auipc:   next_states = AUIPC;
                op_jal:     next_states = JAL;
                op_jalr:    next_states = JALR;
                op_br:      next_states = BR;
                op_imm:     next_states = IMM;
                op_reg:     next_states = REG;
                op_load:    next_states = CALC_ADDR;
                op_store:   next_states = CALC_ADDR;
                default:    next_states = FETCH1;
            endcase

        CALC_ADDR:
            case (opcode)
                op_load:    next_states = LD1;
                op_store:   next_states = ST1;
                default:    next_states = FETCH1;
            endcase
        LD1:
            if (mem_resp)   next_states = LD2;
            else            next_states = LD1;
        ST1:
            if (mem_resp)   next_states = ST2;
            else            next_states = ST1;

        default:            next_states = FETCH1;

    endcase

end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
    if (rst)
        state <= FETCH1;
    else
        state <= next_states;
end

endmodule : control
