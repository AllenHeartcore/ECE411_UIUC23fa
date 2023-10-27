package pipeline_reg_pkg;

typedef struct packed {
    logic [31:0] pc;
    logic [31:0] ir;
} if_id_reg_t;

typedef struct packed {
    logic [31:0] pc;
    logic [31:0] r1;
    logic [31:0] r2;
    logic [31:0] ir;
} id_ex_reg_t;

typedef struct packed {
    logic [31:0] pc;
    logic [31:0] mdr;
    logic [31:0] uim;
    logic [31:0] alu;
    logic cmp;
} ex_mem_reg_t;

typedef struct packed {
    logic [31:0] pc;
    logic [31:0] mdr;
    logic [31:0] uim;
    logic [31:0] alu;
    logic cmp;
} mem_wb_reg_t;

endpackage : pipeline_reg_pkg

package hazard_ctrl_pkg;

typedef struct packed {
    logic load_pc;
    logic load_if_id;
    logic load_id_ex;
    logic load_ex_mem;
    logic load_mem_wb;
} hazard_ctrl_t;

endpackage : hazard_ctrl_pkg
