`ifndef cam_tr_scoreboard_sv
`define cam_tr_scoreboard_sv


module transaction_scoreboard(cam_itf itf, grader_itf gitf);

import cam_types::*;
import grader_types::*;
`include "grader/cam_model.sv"

CAMModel model = new();

task log_tr(trans_t tr);
    static trans_t last_tr = '0;
    static int valid = 0;
    if (valid == 0) begin
        valid = 1;
    end
    else if ((last_tr.ltime + 1 == tr.ltime) &&
                                        last_tr.tr_type == TR_WRITE) begin
        if ((tr.tr_type == TR_WRITE) && (tr.key == last_tr.key)
            && (tr.wdata != last_tr.wdata)) begin
            gitf.covers.ww_tag = 1'b1;
            $display("%0t: SCB: HIT WW Coverage", $time);
        end
        if ((tr.tr_type == TR_READ) && (tr.key == last_tr.key)) begin
            gitf.covers.wr_tag = 1'b1;
            $display("%0t: SCB: HIT WR Coverage", $time);
        end
    end
    last_tr = tr;
endtask

task log_read(read_s rs);
    if (rs.valid) begin
        gitf.covers.hits[rs.index] = 1'b1;
    end
endtask

task log_write(write_s ws);
    if (ws.lru_evict) begin
        gitf.covers.evicts[ws.index] = 1'b1;
    end
endtask

initial forever begin
    trans_t tr;
    read_s rs;
    write_s ws;
    gitf.transbox.get(tr);
    $display("%0t: SCB: Received %s", $time, tr.tr_type.name);
    log_tr(tr);
    case (tr.tr_type)
        TR_WRITE: begin
            ws = model.write(tr.key, tr.wdata);
            // Handle Coverages
            log_write(ws);
        end
        TR_READ: begin
            rs = model.read(tr.key);
            // Handle Coverages
            log_read(rs);
            // Detect ErrorsError
            if (rs.valid) begin
                if ((!tr.valid_o)  || (tr.rdata != rs.value)) begin
                    gitf.grd_report_dut_error(READ_ERROR, itf.timestamp);
                end
            end
            if (!rs.valid) begin
                if (tr.valid_o)
                    gitf.grd_report_dut_error(READ_ERROR, itf.timestamp);
            end
        end
        TR_RESET: model.reset();
        default: begin
            $fatal("%0t SCB: Received Illegal Transaction Type", itf.timestamp);
        end
    endcase
end

endmodule

`endif

