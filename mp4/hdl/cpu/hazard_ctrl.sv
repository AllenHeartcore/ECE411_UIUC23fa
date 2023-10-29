module hazard_ctrl_unit
import hazard_ctrl_pkg::*;
(
    output hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl
);

    assign hazard_ctrl.load_pc = 1'b1;
    assign hazard_ctrl.load_if_id = 1'b1;
    assign hazard_ctrl.load_id_ex = 1'b1;
    assign hazard_ctrl.load_ex_mem = 1'b1;
    assign hazard_ctrl.load_mem_wb = 1'b1;

endmodule
