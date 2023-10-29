module hazard_ctrl_unit
import hazard_ctrl_pkg::*;
(
    input clk,
    input rst,
    output hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl
);

    always_ff @(posedge clk) begin
        if (rst) begin
            hazard_ctrl <= hazard_ctrl_pkg::hazard_ctrl_t'(5'b0);
        end else begin
            hazard_ctrl.load_pc <= 1'b1;
            hazard_ctrl.load_if_id <= hazard_ctrl.load_pc;
            hazard_ctrl.load_id_ex <= hazard_ctrl.load_if_id;
            hazard_ctrl.load_ex_mem <= hazard_ctrl.load_id_ex;
            hazard_ctrl.load_mem_wb <= hazard_ctrl.load_ex_mem;
        end
    end

    logic valid_i, valid_o;

    register #(.width(1)) valid_reg(.*, .load(1), .in(valid_i), .out(valid_o));

    assign valid_i = & {hazard_ctrl.load_pc, hazard_ctrl.load_if_id, 
    hazard_ctrl.load_id_ex, hazard_ctrl.load_ex_mem, hazard_ctrl.load_mem_wb};

endmodule
