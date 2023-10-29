package pipeline_pkg;
import rv32i_types::*;

typedef struct packed {
    rv32i_word pc;
    rv32i_word ir;
    rv32i_word r1;
    rv32i_word r2;
    rv32i_word mdr;
    rv32i_word uim;
    rv32i_word alu;
    logic cmp;
} pipeline_reg_t;

typedef struct packed {
    alu_ops aluop;
    cmp_ops cmpop;
    alumux::alumux1_sel_t alumux1_sel;
    alumux::alumux2_sel_t alumux2_sel;
    cmpmux::cmpmux_sel_t cmpmux_sel;
    pcmux::pcmux_sel_t pcmux_sel;
    logic is_branch;
} ctrlex_reg_t;

typedef struct packed {
    marmux::marmux_sel_t marmux_sel;
} ctrlmem_reg_t;

typedef struct packed {
    regfilemux::regfilemux_sel_t regfilemux_sel;
    logic load_regfile;
    logic [4:0] rs1;
    logic [4:0] rs2;
    logic [4:0] rd;
} ctrlwb_reg_t;

endpackage : pipeline_pkg



package hazard_ctrl_pkg;

typedef struct packed {
    logic load_pc;
    logic load_if_id;
    logic load_id_ex;
    logic load_ex_mem;
    logic load_mem_wb;
} hazard_ctrl_t;

endpackage : hazard_ctrl_pkg
