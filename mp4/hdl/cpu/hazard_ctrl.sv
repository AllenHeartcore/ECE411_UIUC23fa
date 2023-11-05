module hazard_ctrl_unit
import hazard_ctrl_pkg::*;
(
    input logic clk,
    input logic rst,
    input logic dmem_read_i, dmem_write_i,
    output logic dmem_read, dmem_write, 
    input logic imem_resp, dmem_resp,
    input logic mem_is_branch, ex_is_branch,
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

    // ENABLE CONTROL UNIT
    logic if_enable_i, id_enable_i, ex_enable_i, mem_enable_i;
    // logic wb_enable_i;
    logic if_enable_o, id_enable_o, ex_enable_o, mem_enable_o;
    // logic  wb_enable_o;
    logic load_if_enable, load_id_enable, load_ex_enable, load_mem_enable, load_wb_enable;
    
    // used for branching
    logic set_invalid_if, set_invalid_id, set_invalid_ex;

    // commit signals : if asserted, the next posedge pipeline register will be loaded
    logic if_commit;

    assign path_hazard_detection = (ex_is_branch || mem_is_branch) ? id_enable_o & (~set_invalid_id) : 1'b1;
    // logic id_commit, ex_commit, mem_commit, wb_commit;
    assign if_commit = (if_state == BUSY && if_next_state == RDY);
    assign id_commit = (id_state == BUSY && id_next_state == RDY);
    assign ex_commit = (ex_state == BUSY && ex_next_state == RDY);
    assign mem_commit = (mem_state == BUSY && mem_next_state == RDY);
    assign wb_commit = (wb_state == BUSY && wb_next_state == RDY);

    


    assign set_invalid_if = ex_commit && ex_is_branch;
    assign set_invalid_id = ex_commit && ex_is_branch;
    assign set_invalid_ex = mem_state == RDY && mem_next_state == BUSY && mem_is_branch;


    always_comb begin
        if_enable_i = 'x;
        id_enable_i = 'x;
        ex_enable_i = 'x;
        mem_enable_i = 'x;
        // wb_enable_i = 'x;
        load_if_enable = 1'b0;
        load_id_enable = 1'b0;
        load_ex_enable = 1'b0;
        load_mem_enable = 1'b0;
        load_wb_enable = 1'b0;
        if(set_invalid_if | (id_commit & ~if_commit) ) begin
            if_enable_i = 1'b0;
            load_if_enable = 1'b1;
        end else if(if_commit) begin
            if_enable_i = 1'b1;
            load_if_enable = 1'b1;
        end
        
        if(set_invalid_id | (ex_commit & ~id_commit)) begin
            id_enable_i = 1'b0;
            load_id_enable = 1'b1;
        end else if(id_commit) begin
            id_enable_i = 1'b1;
            load_id_enable = 1'b1;
        end
        
        if(set_invalid_ex | (mem_commit & ~ex_commit)) begin
            ex_enable_i = 1'b0;
            load_ex_enable = 1'b1;
        end else if(ex_commit) begin
            ex_enable_i = 1'b1;
            load_ex_enable = 1'b1;
        end

        if(mem_commit) begin
            mem_enable_i = 1'b1;
            load_mem_enable = 1'b1;
        end
        else if((wb_commit & ~mem_commit)) begin 
            mem_enable_i = 1'b0;
            load_mem_enable = 1'b1;
        end

        // if(wb_commit) begin
        //     wb_enable_i = 1'b1;
        //     load_wb_enable = 1'b1;
        // end
        // else begin 
        //     wb_enable_i = 1'b0;
        //     load_wb_enable = 1'b1;
        // end
    end
    register #(.width(1)) if_enable_reg (.*, .load(load_if_enable), .in(if_enable_i), .out(if_enable_o));
    register #(.width(1)) id_enable_reg (.*, .load(load_id_enable), .in(id_enable_i), .out(id_enable_o));
    register #(.width(1)) ex_enable_reg (.*, .load(load_ex_enable), .in(ex_enable_i), .out(ex_enable_o));
    register #(.width(1)) mem_enable_reg (.*, .load(load_mem_enable), .in(mem_enable_i), .out(mem_enable_o));
    // register #(.width(1)) wb_enable_reg (.*, .load(load_wb_enable), .in(wb_enable_i), .out(wb_enable_o));


    // memory control unit
    logic dmem_op;

    assign dmem_op = dmem_read | dmem_write;
    assign dmem_read = dmem_read_i && mem_state == BUSY;
    assign dmem_write = dmem_write_i && mem_state == BUSY;
    assign imem_read = if_state == BUSY;

    assign if_next_state_1 = BUSY;
    assign if_next_state_2 = (imem_resp && id_next_state == RDY) ? RDY : if_state;
    assign if_next_state = if_state == RDY ? if_next_state_1 : if_next_state_2;

    assign id_next_state_1 = if_enable_o ? BUSY : id_state;
    assign id_next_state_2 = (ex_next_state == RDY) && (~hazard_exist) ? RDY : id_state;
    assign id_next_state = id_state == RDY ? id_next_state_1 : id_next_state_2;

    assign ex_next_state_1 = id_enable_o  ?  BUSY : ex_state;
    assign ex_next_state_2 = (mem_next_state == RDY) ? RDY : ex_state;
    assign ex_next_state = ex_state == RDY ? ex_next_state_1 : ex_next_state_2;

    assign mem_next_state_1 = ex_enable_o ? BUSY : mem_state;
    assign mem_next_state_2 = (dmem_resp || (~dmem_op)) ? RDY : mem_state;
    assign mem_next_state = mem_state == RDY ? mem_next_state_1 : mem_next_state_2;

    assign wb_next_state_1 = mem_enable_o ? BUSY : wb_state;
    assign wb_next_state_2 = RDY;
    assign wb_next_state = wb_state == RDY ? wb_next_state_1 : wb_next_state_2;
    
    // always_comb begin

        // if(if_state == RDY) begin
        //     if_next_state = BUSY;
        // end else if (if_state == BUSY && (imem_resp || imem_has_resp) && (id_next_state == RDY)) begin
        //     if_next_state = RDY;
        // end else begin
        //     if_next_state = if_state;
        // end

        // if(id_state == RDY && if_enable_o && if_state == RDY)
        //     id_next_state = BUSY;
        // else if(id_state == BUSY && (ex_next_state == RDY) && (~hazard_exist))
        //     id_next_state = RDY;
        // else
        //     id_next_state = id_state;

        // if((ex_state == RDY) && id_enable_o && (id_state == RDY))
        //     ex_next_state = BUSY;
        // else if ((ex_state == BUSY) && (mem_next_state == RDY))
        //     ex_next_state = RDY;
        // else
        //     ex_next_state = ex_state;

        // if(mem_state == RDY && ex_enable_o && ex_state == RDY)
        //     mem_next_state = BUSY;
        // else if(mem_state == BUSY && (dmem_resp || dmem_has_resp || (~dmem_op)) )
        //     mem_next_state = RDY;
        // else
        //     mem_next_state = mem_state;

        // if(wb_state == RDY && mem_enable_o && mem_state == RDY)
        //     wb_next_state = BUSY;
        // else if(wb_state == BUSY)
        //     wb_next_state = RDY;
        // else
        //     wb_next_state = wb_state;
    // end

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
    assign hazard_ctrl.load_id_ex = id_commit;
    assign hazard_ctrl.load_ex_mem = ex_commit;
    assign hazard_ctrl.load_mem_wb = mem_commit;

    // INSTR COMMIT UNIT
    logic valid_o;
    assign valid_o = wb_commit;

endmodule
