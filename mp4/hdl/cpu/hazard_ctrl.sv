module hazard_ctrl_unit
import hazard_ctrl_pkg::*;
(
    input logic clk,
    input logic rst,
    input logic dmem_read_i, dmem_write_i,
    output logic dmem_read, dmem_write, 
    input logic imem_resp, dmem_resp,
    input logic mem_is_branch, ex_is_branch,
    input logic hazard_exist,
    output logic imem_read,
    output hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl
);

    // state definition for each STAGE (not pipeline register)

    enum int unsigned {
        READY,
        BUSY
    }   if_state, if_next_state, 
        id_state, id_next_state, 
        ex_state, ex_next_state, 
        mem_state, mem_next_state, 
        wb_state, wb_next_state;

    // commit signals : if asserted, the next posedge pipeline register will be loaded
    logic if_commit, id_commit, ex_commit, mem_commit, wb_commit;
    assign if_commit = (if_state == BUSY && if_next_state == READY);
    assign id_commit = (id_state == BUSY && id_next_state == READY);
    assign ex_commit = (ex_state == BUSY && ex_next_state == READY);
    assign mem_commit = (mem_state == BUSY && mem_next_state == READY);
    assign wb_commit = (wb_state == BUSY && wb_next_state == READY);

    // ENABLE CONTROL UNIT
    logic if_enable_i, id_enable_i, ex_enable_i, mem_enable_i;
    logic if_enable_o, id_enable_o, ex_enable_o, mem_enable_o;
    // used for branching
    logic set_invalid_if, set_invalid_id, set_invalid_ex;

    assign set_invalid_if = ex_commit && ex_is_branch;
    assign set_invalid_id = ex_commit && ex_is_branch;
    assign set_invalid_ex = mem_state == READY && mem_next_state == BUSY && mem_is_branch;

    always_ff @(posedge clk) begin
        if_enable_i <= 1'b0;
        id_enable_i <= 1'b0;
        ex_enable_i <= 1'b0;
        mem_enable_i <= 1'b0;

        if (rst) begin
            if_enable_i <= 1'b0;
            id_enable_i <= 1'b0;
            ex_enable_i <= 1'b0;
            mem_enable_i <= 1'b0;
        end else begin
            if(if_next_state == BUSY)
                if_enable_i <= 1'b1;
            else if(set_invalid_if)
                if_enable_i <= 1'b0;
            
            if(id_next_state == BUSY)
                id_enable_i <= 1'b1;
            else if(set_invalid_id | (id_commit & (~if_commit)))
                id_enable_i <= 1'b0;
            
            if(ex_next_state == BUSY)
                ex_enable_i <= 1'b1;
            else if(set_invalid_ex | (ex_commit & (~id_commit)))
                ex_enable_i <= 1'b0;

            if(mem_next_state == BUSY)
                mem_enable_i <= 1'b1;
            else if(mem_commit & (~ex_commit))
                mem_enable_i <= 1'b0;
        end
    end
    register #(.width(1)) if_enable_reg (.*, .load('1), .in(if_enable_i), .out(if_enable_o));
    register #(.width(1)) id_enable_reg (.*, .load('1), .in(id_enable_i), .out(id_enable_o));
    register #(.width(1)) ex_enable_reg (.*, .load('1), .in(ex_enable_i), .out(ex_enable_o));
    register #(.width(1)) mem_enable_reg (.*, .load('1), .in(mem_enable_i), .out(mem_enable_o));


    // memory control unit
    logic imem_has_resp, dmem_has_resp;
    // Q : why do we need these 2 regs ?
    // A : next stage might block, (i/d)mem_resp can only last for 1 cycle
    logic dmem_op;

    always_ff @(posedge clk) begin
        imem_has_resp <= 1'b0;
        dmem_has_resp <= 1'b0;

        if (rst) begin
            imem_has_resp <= 1'b0;
            dmem_has_resp <= 1'b0;
        end else begin
            // handling response signals
            if(imem_resp) imem_has_resp <= 1'b1;
            else if(if_next_state == READY) imem_has_resp <= 1'b0;

            if(dmem_resp) dmem_has_resp <= 1'b1;
            else if(mem_next_state == READY) dmem_has_resp <= 1'b0;
        end
    end

    assign dmem_op = dmem_read | dmem_write;
    assign dmem_read = dmem_read_i && mem_state == BUSY;
    assign dmem_write = dmem_write_i && mem_state == BUSY;
    assign imem_read = if_state == BUSY;

    // state transfer unit
    always_comb begin
        if_next_state = if_state;
        id_next_state = id_state;
        ex_next_state = ex_state;
        mem_next_state = mem_state;
        wb_next_state = wb_state;
        
        case (if_state)
            READY: 
                if_next_state = BUSY;
            BUSY: begin
                if ((imem_resp | imem_has_resp) && id_next_state == READY)
                    if_next_state = READY;
            end
        endcase

        case (id_state)
            READY: begin
                if (if_enable_o && if_state == READY)
                    id_next_state = BUSY;
            end
            BUSY: begin
                if(ex_next_state == READY && (~hazard_exist))
                    id_next_state = READY;
            end
        endcase

        case (ex_state) 
            READY: begin
                if (id_enable_o && id_state == READY)
                    ex_next_state = BUSY;
            end
            BUSY: begin
                if (mem_next_state == READY)
                    ex_next_state = READY;
            end
        endcase

        case (mem_state)
            READY: begin
                if (ex_enable_o && ex_state == READY)
                    mem_next_state = BUSY;
            end
            BUSY: begin
                if(dmem_resp | dmem_has_resp | (~dmem_op))
                    mem_next_state = READY;
            end
        endcase

        case (wb_state)
            READY: begin
                if (mem_enable_o && mem_state == READY)
                    wb_next_state = BUSY;
            end
            BUSY: begin
                wb_next_state = READY;
            end
        endcase
    end

    // state transition unit
    always_ff @(posedge clk) begin
        if (rst) begin
            if_state <= READY;
            id_state <= READY;
            ex_state <= READY;
            mem_state <= READY;
            wb_state <= READY;
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
    // register #(.width(1)) instr_commit_reg (.*, .load('1), .in(valid_i), .out(valid_o));

endmodule
