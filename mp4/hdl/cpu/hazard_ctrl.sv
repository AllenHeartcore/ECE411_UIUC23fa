module hazard_ctrl_unit
import hazard_ctrl_pkg::*;
(
    input logic clk,
    input logic rst,
    input logic dmem_read, dmem_write,
    input logic imem_resp, dmem_resp,
    output logic imem_read,
    output hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl
);


    always_ff @(posedge clk) begin
        if (rst) begin
            imem_read <= '0;
            hazard_ctrl <= hazard_ctrl_pkg::hazard_ctrl_t'(5'b0);
        end else begin

            imem_read <= ~imem_read;
            if (~imem_resp & imem_read) begin
                hazard_ctrl.load_pc <= 1'b1;
                hazard_ctrl.load_if_id <= 1'b1;
            end else begin
                hazard_ctrl.load_pc <= 1'b0;
                hazard_ctrl.load_if_id <= 1'b0;
            end
            hazard_ctrl.load_mem_wb <= hazard_ctrl.load_ex_mem;
            hazard_ctrl.load_id_ex <= hazard_ctrl.load_if_id;
            hazard_ctrl.load_ex_mem <= hazard_ctrl.load_id_ex;
        end
    end





    logic valid_i, valid_o;

    register #(.width(1)) valid_reg(.*, .load(1), .in(valid_i), .out(valid_o));

    assign valid_i = & {hazard_ctrl.load_pc, hazard_ctrl.load_if_id, 
    hazard_ctrl.load_id_ex, hazard_ctrl.load_ex_mem, hazard_ctrl.load_mem_wb};

endmodule
