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

    logic valid_o;




    // state IF

    logic id_enable;
    logic ex_enable;
    logic load_mem_i, load_mem_o;

    register #(.width(1)) load_mem_reg (.*, .load('1), .in(load_mem_i), .out(load_mem_o));

    enum int unsigned {
        IF_READY,
        IF_LOAD
    } if_state, if_next_state;

    enum int unsigned {
        ID_READY,
        ID_LOAD
    } id_state, id_next_state;

    enum int unsigned {
        EX_READY,
        EX_LOAD
    } ex_state, ex_next_state;

    enum int unsigned {
        MEM_READY,
        MEM_LOAD
    } mem_state, mem_next_state;

    enum int unsigned {
        WB_READY,
        WB_LOAD
    } wb_state, wb_next_state;

    always_ff @(posedge clk) begin
        if (rst) begin
            if_state <= IF_READY;
            id_state <= ID_READY;
            ex_state <= EX_READY;
            mem_state <= MEM_READY;
            wb_state <= WB_READY;
            id_enable <= 1'b0;
            ex_enable <= 1'b0;
            valid_o <= 1'b0;
        end else begin
            if_state <= if_next_state;
            id_state <= id_next_state;
            ex_state <= ex_next_state;
            mem_state <= mem_next_state;
            wb_state <= wb_next_state;

            if (id_next_state == ID_LOAD)
                id_enable <= 1'b1;
            if (ex_next_state == EX_LOAD)
                ex_enable <= 1'b1;

            if (wb_next_state == WB_READY && wb_state == WB_LOAD)
                valid_o <= 1'b1;
            else
                valid_o <= 1'b0;
        end
    end

    // state transfer
    always_comb begin
        if_next_state = if_state;
        id_next_state = id_state;
        ex_next_state = ex_state;
        mem_next_state = mem_state;
        wb_next_state = wb_state;
        case (if_state)
            IF_READY: if_next_state = IF_LOAD;
            IF_LOAD: begin
                if (imem_resp)
                    if_next_state = IF_READY;
            end
        endcase

        case (id_state)
            ID_READY: begin
                if (imem_resp)
                    id_next_state = ID_LOAD;
            end
            ID_LOAD: begin
                    id_next_state = ID_READY;
            end
        endcase

        case (ex_state) 
            EX_READY: begin
                if ((id_state == ID_READY) && (id_enable == 1'b1)) 
                    ex_next_state = EX_LOAD;
            end
            EX_LOAD: begin
                ex_next_state = EX_READY;
            end
        endcase

        load_mem_i = 1'b0;
        case (mem_state)
            MEM_READY: begin
                if ((ex_state == EX_READY) && (ex_enable == 1'b1))
                    mem_next_state = MEM_LOAD;
            end
            MEM_LOAD: begin
                mem_next_state = MEM_READY;
                load_mem_i = 1'b1;
            end
        endcase

        case (wb_state)
            WB_READY: begin
                if (mem_state == MEM_LOAD)
                    wb_next_state = WB_LOAD;
            end
            WB_LOAD: begin
                wb_next_state = WB_READY;
            end
        endcase
    end

    always_comb begin

        hazard_ctrl.load_pc = 1'b0;
        hazard_ctrl.load_if_id = 1'b0;
        hazard_ctrl.load_id_ex = 1'b0;
        hazard_ctrl.load_ex_mem = 1'b0;
        imem_read = 1'b1;

        case (if_state)
            IF_READY: begin
                hazard_ctrl.load_pc = 1'b0;
                hazard_ctrl.load_if_id = 1'b0;
                imem_read = 1'b1;
            end
            IF_LOAD: begin
                hazard_ctrl.load_pc = 1'b1;
                hazard_ctrl.load_if_id = 1'b1;
                imem_read = 1'b0;
            end
        endcase

        case (id_state)
            ID_READY: begin
                hazard_ctrl.load_id_ex = 1'b0;
            end
            ID_LOAD: begin
                hazard_ctrl.load_id_ex = 1'b1;
            end
        endcase

        case (ex_state)
            EX_READY: 
                hazard_ctrl.load_ex_mem = 1'b0;
            EX_LOAD: 
                hazard_ctrl.load_ex_mem = 1'b1;
        endcase

        // case (mem_state)
        //     MEM_READY: 
        //         hazard_ctrl.load_mem_wb = 1'b0;
        //     MEM_LOAD: 
        //         hazard_ctrl.load_mem_wb = 1'b1;
        // endcase

        /* suppress "unused input" warning */
        if (dmem_read || dmem_write || dmem_resp) begin end

    end

    assign hazard_ctrl.load_mem_wb = load_mem_o;



endmodule
