package pipeline_reg_pkg;
import rv32i_types::*;
import pcmux::*;
import marmux::*;
import cmpmux::*;
import alumux::*;
import regfilemux::*;

typedef struct packed {
    logic [31:0] pc;
    logic [31:0] ir;
} if_id_reg_t;

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