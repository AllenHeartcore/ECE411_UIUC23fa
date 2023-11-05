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
    output hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl
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
        ex_next_stage_1, ex_next_stage_2,
        mem_next_stage_1, mem_next_stage_2,
        wb_next_stage_1, wb_next_stage_2;

    // commit signals : if asserted, the next posedge pipeline register will be loaded
    logic if_commit;
    // logic id_commit, ex_commit, mem_commit, wb_commit;
    assign if_commit = (if_state == BUSY && if_next_state == RDY);
    assign id_commit = (id_state == BUSY && id_next_state == RDY);
    assign ex_commit = (ex_state == BUSY && ex_next_state == RDY);
    assign mem_commit = (mem_state == BUSY && mem_next_state == RDY);
    assign wb_commit = (wb_state == BUSY && wb_next_state == RDY);

    // ENABLE CONTROL UNIT
    logic if_enable_i, id_enable_i, ex_enable_i, mem_enable_i, wb_enable_i;
    logic if_enable_o, id_enable_o, ex_enable_o, mem_enable_o, wb_enable_o;
    

    // used for branching
    logic set_invalid_if, set_invalid_id, set_invalid_ex;

    assign set_invalid_if = ex_commit && ex_is_branch;
    assign set_invalid_id = ex_commit && ex_is_branch;
    assign set_invalid_ex = mem_state == RDY && mem_next_state == BUSY && mem_is_branch;


    always_ff @(posedge clk) begin

        if (rst) begin
            if_enable_i <= 1'b0;
            id_enable_i <= 1'b0;
            ex_enable_i <= 1'b0;
            mem_enable_i <= 1'b0;
            wb_enable_i <= 1'b0;
        end else begin
            if(if_state == RDY && if_next_state == BUSY)
                if_enable_i <= 1'b1;
            else if(set_invalid_if)
                if_enable_i <= 1'b0;
            
            if(id_state == RDY && id_next_state == BUSY)
                id_enable_i <= 1'b1;
            else if(set_invalid_id | (id_commit & ~if_commit) )
                id_enable_i <= 1'b0;
            
            if(ex_state == RDY && ex_next_state == BUSY)
                ex_enable_i <= 1'b1;
            else if(set_invalid_ex | (ex_commit & ~id_commit) )
                ex_enable_i <= 1'b0;

            if(mem_state == RDY && mem_next_state == BUSY)
                mem_enable_i <= 1'b1;
            else if(mem_commit & ~ex_commit)
                mem_enable_i <= 1'b0;

            if(wb_state == RDY && wb_next_state == BUSY)
                wb_enable_i <= 1'b1;
            else if(wb_commit & ~mem_commit)
                wb_enable_i <= 1'b0;
        end
    end
    register #(.width(1)) if_enable_reg (.*, .load('1), .in(if_enable_i), .out(if_enable_o));
    register #(.width(1)) id_enable_reg (.*, .load('1), .in(id_enable_i), .out(id_enable_o));
    register #(.width(1)) ex_enable_reg (.*, .load('1), .in(ex_enable_i), .out(ex_enable_o));
    register #(.width(1)) mem_enable_reg (.*, .load('1), .in(mem_enable_i), .out(mem_enable_o));
    register #(.width(1)) wb_enable_reg (.*, .load('1), .in(wb_enable_i), .out(wb_enable_o));


    // memory control unit
    logic imem_has_resp, dmem_has_resp;
    // Q : why do we need these 2 regs ?
    // A : next stage might block, (i/d)mem_resp can only last for 1 cycle
    logic dmem_op;

    always_ff @(posedge clk) begin
        if (rst) begin
            imem_has_resp <= 1'b0;
            dmem_has_resp <= 1'b0;
        end else begin
            // handling response signals
            if(if_state == RDY) imem_has_resp <= 1'b0;
            else if(imem_resp) imem_has_resp <= 1'b1;
            
            if(mem_state == RDY) dmem_has_resp <= 1'b0;
            else if(dmem_resp) dmem_has_resp <= 1'b1;
            
        end
    end

    assign dmem_op = dmem_read | dmem_write;
    assign dmem_read = dmem_read_i && mem_state == BUSY && (~dmem_has_resp);
    assign dmem_write = dmem_write_i && mem_state == BUSY && (~dmem_has_resp);
    assign imem_read = (if_state == BUSY) && (~imem_has_resp);

    assign if_next_state_1 = BUSY;
    assign if_next_state_2 = (imem_resp || imem_has_resp) && (id_next_state == RDY) ? RDY : if_state;
    assign if_next_state = if_state == RDY ? if_next_state_1 : if_next_state_2;

    assign id_next_state_1 = if_enable_o && if_state == RDY ? BUSY : id_state;
    assign id_next_state_2 = (ex_next_state == RDY) && (~hazard_exist) ? RDY : id_state;
    assign id_next_state = id_state == RDY ? id_next_state_1 : id_next_state_2;

    assign ex_next_stage_1 = id_enable_o && (id_state == RDY) ?  BUSY : ex_state;
    assign ex_next_stage_2 = (mem_next_state == RDY) ? RDY : ex_state;
    assign ex_next_state = ex_state == RDY ? ex_next_stage_1 : ex_next_stage_2;

    assign mem_next_stage_1 = ex_enable_o && (ex_state == RDY) ? BUSY : mem_state;
    assign mem_next_stage_2 = (dmem_resp || dmem_has_resp || (~dmem_op)) ? RDY : mem_state;
    assign mem_next_state = mem_state == RDY ? mem_next_stage_1 : mem_next_stage_2;

    assign wb_next_stage_1 = mem_enable_o && (mem_state == RDY) ? BUSY : wb_state;
    assign wb_next_stage_2 = RDY;
    assign wb_next_state = wb_state == RDY ? wb_next_stage_1 : wb_next_stage_2;


    logic dbg_1;
    assign dbg_1 = if_state == BUSY && ((imem_resp || imem_has_resp) && (id_next_state == RDY));
    
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
