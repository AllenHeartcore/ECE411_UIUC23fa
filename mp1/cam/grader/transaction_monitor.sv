`ifndef cam_tr_monitor_sv
`define cam_tr_monitor_sv

module transaction_monitor(cam_itf itf, grader_itf gitf);

import cam_types::*;
import grader_types::*;
default clocking mon_clk @(posedge gitf.monclk); endclocking

task automatic send_tr(trans_e tre);
    trans_t tr;
    tr.ltime = itf.timestamp;
    tr.rtime = $time;
    tr.key = itf.key;
    tr.rdata = itf.val_o;
    tr.wdata = itf.val_i;
    tr.valid_o = itf.valid_o;
    tr.tr_type =tre;
    gitf.transbox.put(tr);
endtask

initial forever begin
    @(mon_clk);
    if (!itf.reset_n) begin
        send_tr(TR_RESET);
    end
    else if (itf.valid_i) begin
        if (itf.rw_n) begin
            send_tr(TR_READ);
        end
        else begin
            send_tr(TR_WRITE);
        end
    end
end

endmodule

`endif
