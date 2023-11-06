module hazard_ctrl_unit
import hazard_ctrl_pkg::*;
(
    input logic clk,
    input logic rst,
    input logic dmem_read_i, dmem_write_i,
    output logic dmem_read, dmem_write, 
    input logic imem_resp, dmem_resp,
    input logic ex_is_branch,
    input logic no_hazard,
    output logic id_commit, ex_commit, mem_commit, wb_commit,
    output logic imem_read,
    output hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl,
    output logic path_hazard_detection // CZY should delete this, this is just a patch for current hazard detection
);

    // hazard detection unit
    logic hazard_exist;
    assign hazard_exist = (~no_hazard); // current stage @todo

    // state definition for each STAGE (not pipeline register)

    enum bit {
        RDY,
        BUSY
    }   if_state, if_next_state, 
        id_state, id_next_state, 
        ex_state, ex_next_state, 
        mem_state, mem_next_state, 
        wb_state, wb_next_state,
        if_next_state_1, if_next_state_2,
        id_next_state_1, id_next_state_2,
        ex_next_state_1, ex_next_state_2,
        mem_next_state_1, mem_next_state_2,
        wb_next_state_1, wb_next_state_2;

    

    // commit signals : if asserted, the next posedge pipeline register will be loaded
    logic if_commit;
    
    // logic id_commit, ex_commit, mem_commit, wb_commit;
    assign if_commit = (if_state == BUSY && if_next_state == RDY);
    assign id_commit = (id_state == BUSY && id_next_state == RDY);
    assign ex_commit = (ex_state == BUSY && ex_next_state == RDY);
    assign mem_commit = (mem_state == BUSY && mem_next_state == RDY);
    assign wb_commit = (wb_state == BUSY && wb_next_state == RDY);

    // ENABLE REGISTERS (IF, ID, EX) for branch
    logic if_enable, id_enable, ex_enable;

    always_ff @(posedge clk) begin
        if (rst) begin
            if_enable <= 1'b0;
            id_enable <= 1'b0;
            ex_enable <= 1'b0;
        end else begin
            if(ex_is_branch && ex_commit) begin  // when branch is in ex stage (ID_EX pipeline reg), we disassert all enable signals
                if_enable <= 1'b0;
            end else if(if_state == RDY && if_next_state == BUSY) begin
                if_enable <= 1'b1;
            end
            if(ex_is_branch && ex_commit) begin 
                id_enable <= 1'b0;
            end else if(id_state == RDY && id_next_state == BUSY) begin
                id_enable <= 1'b1;
            end
            if(ex_is_branch && ex_commit) begin
                ex_enable <= 1'b0;
            end else if(ex_state == RDY && ex_next_state == BUSY) begin
                ex_enable <= 1'b1;
            end
        end
    end

    assign path_hazard_detection = ~(ex_is_branch && ex_commit);

    // PIPELINE REG VALID CONTROL UNIT
    logic if_id_valid_i, id_ex_valid_i, ex_mem_valid_i, mem_wb_valid_i;
    logic if_id_valid_o, id_ex_valid_o, ex_mem_valid_o, mem_wb_valid_o;
    logic load_if_id_valid, load_id_ex_valid, load_ex_mem_valid, load_mem_wb_valid;

    always_comb begin
        if_id_valid_i = 'x;
        id_ex_valid_i = 'x;
        ex_mem_valid_i = 'x;
        mem_wb_valid_i = 'x;
        load_if_id_valid = 1'b0;
        load_id_ex_valid = 1'b0;
        load_ex_mem_valid = 1'b0;
        load_mem_wb_valid = 1'b0;
        if((id_commit & ~if_commit) ) begin
            if_id_valid_i = 1'b0;
            load_if_id_valid = 1'b1;
        end else if(if_commit) begin
            if_id_valid_i = 1'b1;
            load_if_id_valid = 1'b1;
        end
        
        if((ex_commit & ~id_commit)) begin
            id_ex_valid_i = 1'b0;
            load_id_ex_valid = 1'b1;
        end else if(id_commit) begin
            id_ex_valid_i = 1'b1;
            load_id_ex_valid = 1'b1;
        end
        
        if((mem_commit & ~ex_commit)) begin
            ex_mem_valid_i = 1'b0;
            load_ex_mem_valid = 1'b1;
        end else if(ex_commit) begin
            ex_mem_valid_i = 1'b1;
            load_ex_mem_valid = 1'b1;
        end

        if(mem_commit) begin
            mem_wb_valid_i = 1'b1;
            load_mem_wb_valid = 1'b1;
        end
        else if((wb_commit & ~mem_commit)) begin 
            mem_wb_valid_i = 1'b0;
            load_mem_wb_valid = 1'b1;
        end
    end
    register #(.width(1)) if_id_valid_reg (.*, .load(load_if_id_valid), .in(if_id_valid_i), .out(if_id_valid_o));
    register #(.width(1)) id_ex_valid_reg (.*, .load(load_id_ex_valid), .in(id_ex_valid_i), .out(id_ex_valid_o));
    register #(.width(1)) ex_mem_valid_reg (.*, .load(load_ex_mem_valid), .in(ex_mem_valid_i), .out(ex_mem_valid_o));
    register #(.width(1)) mem_wb_valid_reg (.*, .load(load_mem_wb_valid), .in(mem_wb_valid_i), .out(mem_wb_valid_o));


    // memory control unit
    logic dmem_op;

    assign dmem_op = dmem_read | dmem_write;
    assign dmem_read = dmem_read_i && mem_state == BUSY;
    assign dmem_write = dmem_write_i && mem_state == BUSY;
    assign imem_read = if_state == BUSY;

    assign if_next_state_1 = BUSY;
    assign if_next_state_2 = (imem_resp && id_next_state == RDY) ? RDY : if_state;
    assign if_next_state = if_state == RDY ? if_next_state_1 : if_next_state_2;

    assign id_next_state_1 = if_enable && if_id_valid_o ? BUSY : id_state;
    assign id_next_state_2 = (ex_next_state == RDY) && (~hazard_exist) ? RDY : id_state;
    assign id_next_state = id_state == RDY ? id_next_state_1 : id_next_state_2;

    assign ex_next_state_1 = id_enable && id_ex_valid_o  ?  BUSY : ex_state;
    assign ex_next_state_2 = (mem_next_state == RDY) ? RDY : ex_state;
    assign ex_next_state = ex_state == RDY ? ex_next_state_1 : ex_next_state_2;

    assign mem_next_state_1 = ex_mem_valid_o ? BUSY : mem_state; // haor2 : anding ex_enable will cause a bug because there is a one cycle lag for mem to transit after ex commit, then branch will be overwritten
    assign mem_next_state_2 = (dmem_resp || (~dmem_op)) ? RDY : mem_state;
    assign mem_next_state = mem_state == RDY ? mem_next_state_1 : mem_next_state_2;

    assign wb_next_state_1 = mem_wb_valid_o ? BUSY : wb_state;
    assign wb_next_state_2 = RDY;
    assign wb_next_state = wb_state == RDY ? wb_next_state_1 : wb_next_state_2;

    // state transition unit
    always_ff @(posedge clk) begin
        if (rst) begin
            if_state <= RDY;
            id_state <= RDY;
            ex_state <= RDY;
            mem_state <= RDY;
            wb_state <= RDY;
        end else begin
            if_state <= if_next_state;
            id_state <= id_next_state;
            ex_state <= ex_next_state;
            mem_state <= mem_next_state;
            wb_state <= wb_next_state;
        end
    end

    assign hazard_ctrl.load_pc = if_commit;
    assign hazard_ctrl.load_if_id = if_commit;
    assign hazard_ctrl.load_id_ex = id_commit && id_enable;
    assign hazard_ctrl.load_ex_mem = ex_commit && ex_enable;
    assign hazard_ctrl.load_mem_wb = mem_commit;

    // INSTR COMMIT UNIT
    logic valid_o;
    assign valid_o = wb_commit;

endmodule
