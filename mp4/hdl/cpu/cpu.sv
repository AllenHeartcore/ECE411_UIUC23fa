module cpu
import rv32i_types::*;
import pipeline_pkg::*;
import hazard_detection_pkg::*;
(
    input  clk,
    input  rst,
    input  logic imem_resp, dmem_resp,
    input  rv32i_word imem_rdata, dmem_rdata,
    output logic imem_read, dmem_read, dmem_write,
    output logic [3:0] dmem_wmask,
    output rv32i_word imem_address, dmem_address,
    output rv32i_word dmem_wdata
);

    // ctrl_word -> datapath
    ctrlex_reg_t ctrlex_at_id, ctrlex_at_ex;
    ctrlmem_reg_t ctrlmem_at_id, ctrlmem_at_ex, ctrlmem_at_mem;
    ctrlwb_reg_t ctrlwb_at_id, ctrlwb_at_ex, ctrlwb_at_mem, ctrlwb_at_wb;
    // haor2 : we now move dmem read write control logic into  hazard control.
    // original bug : when mem unit is idle (ready), there will be extra dmem operations issued.
    logic dmem_read_i, dmem_write_i;
    assign dmem_read_i = ctrlmem_at_mem.dmem_read && (~rst);
    assign dmem_write_i = ctrlmem_at_mem.dmem_write && (~rst);

    // datapath -> ctrl_word
    rv32i_opcode opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [4:0] rd_in;
    logic [4:0] rs1_in;
    logic [4:0] rs2_in;
    logic mem_is_branch, ex_is_branch;

    // hazard_ctrl -> datapath
    hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl;

    // for monitor
    logic [3:0] dmem_rmask;

    // hzard_ctrl -> hazard detection
    logic ex_enable, mem_enable, wb_enable;

    // hazard detection -> hazard_ctrl
    logic no_hazard;

    // datapath -> hazard detection
    hazard_detection_t ex_dep, mem_dep, wb_dep;
    hazard_detection_t id_dep;

    reg_tuple_2_dep ex_convert(.rs1(ctrlwb_at_ex.rs1), .rs2(ctrlwb_at_ex.rs2), .rd(ctrlwb_at_ex.rd), .dep(ex_dep));
    reg_tuple_2_dep mem_convert(.rs1(ctrlwb_at_mem.rs1), .rs2(ctrlwb_at_mem.rs2), .rd(ctrlwb_at_mem.rd), .dep(mem_dep));
    reg_tuple_2_dep wb_convert(.rs1(ctrlwb_at_wb.rs1), .rs2(ctrlwb_at_wb.rs2), .rd(ctrlwb_at_wb.rd), .dep(wb_dep));
    reg_tuple_2_dep id_convert(.rs1(rs1_in), .rs2(rs2_in), .rd(rd_in), .dep(id_dep));

    datapath  datapath (.*, .ctrlex(ctrlex_at_ex), .ctrlmem(ctrlmem_at_mem), .ctrlwb(ctrlwb_at_wb));
    ctrl_word ctrl_word(.*, .ctrlex(ctrlex_at_id), .ctrlmem(ctrlmem_at_id),  .ctrlwb(ctrlwb_at_id));
    hazard_ctrl_unit hazard_ctrl_unit(.*);
    hazard_detection_unit hazard_detection_unit(.*);

    ctrlex_reg  ctrlex_id_ex   (.*, .load(hazard_ctrl.load_id_ex),  .in(ctrlex_at_id),  .out(ctrlex_at_ex));
    ctrlmem_reg ctrlmem_id_ex  (.*, .load(hazard_ctrl.load_id_ex),  .in(ctrlmem_at_id), .out(ctrlmem_at_ex));
    ctrlmem_reg ctrlmem_ex_mem (.*, .load(hazard_ctrl.load_ex_mem), .in(ctrlmem_at_ex), .out(ctrlmem_at_mem));
    ctrlwb_reg  ctrlwb_id_ex   (.*, .load(hazard_ctrl.load_id_ex),  .in(ctrlwb_at_id),  .out(ctrlwb_at_ex));
    ctrlwb_reg  ctrlwb_ex_mem  (.*, .load(hazard_ctrl.load_ex_mem), .in(ctrlwb_at_ex),  .out(ctrlwb_at_mem));
    ctrlwb_reg  ctrlwb_mem_wb  (.*, .load(hazard_ctrl.load_mem_wb), .in(ctrlwb_at_mem), .out(ctrlwb_at_wb));

endmodule : cpu
