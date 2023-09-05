`ifndef tr_scoreboard
`define tr_scoreboard


module transaction_scoreboard(grader_itf itf, multiplier_itf mitf);
import mult_types::*;
import grader_types::*;

default clocking scb_clk @(negedge itf.scbclk); endclocking

task automatic nr_error;
    error_e error = NOT_READY;
    $info("SCB: Detected %s error at time %0t", error.name, $time);
    itf.grader_errors.nr[itf.timestamp] = 1'b1;
endtask

task automatic prod_error(trans_t tr);
    error_e error = BAD_PRODUCT;
    $info("SCB: Detected %s error at time%0t", error.name, $time);
    $info("SCB: %0d != %0d * %0d", mitf.product, tr.op1, tr.op2);
    $info("SCB: tr timestamp: %0t cur timesamp: %0t", tr.tr_time, itf.timestamp);
    itf.grader_errors.bp[itf.timestamp] = 1'b1;
endtask

function automatic void handle_reset_coverage(op_e op);
    case (op)
        mult_types::ADD: itf.covers.reset_add = 1'b1; 
        mult_types::SHIFT: itf.covers.reset_shift = 1'b1;
        mult_types::DONE, 
        mult_types::NONE: ;
        default: begin
            $error("%s %0d: Handling reset coverage from unkown operation",
                    `__FILE__, `__LINE__);
            itf.grader_errno = ILLEGAL_STATE;
            $finish;
        end
    endcase
    $display("SCB: Multiplier in state %s", op.name);
endfunction

function automatic void handle_start_coverage(op_e op);
    case (op)
        mult_types::ADD: itf.covers.start_add = 1'b1; 
        mult_types::SHIFT: itf.covers.start_shift = 1'b1;
        mult_types::DONE, 
        mult_types::NONE: ;
        default: begin
            $error("%s %0d: Handling reset coverage from unkown operation",
                    `__FILE__, `__LINE__);
            itf.grader_errno = ILLEGAL_STATE;
            $finish;
        end
    endcase
endfunction

semaphore mult_lock = new(1);
initial forever begin
    automatic trans_t tr;
    itf.transbox.get(tr);
    fork // Gonna handle each inbox transmission asynchronously
        case (tr.tr_type)
            RESET: begin // On a reset, we verify coverage as appropriate
                // And verify coverage as appropriate
                // This process should have been forked immiediately, assert as such
                $display("SCB: Received reset at time %0t", $time);
                handle_reset_coverage(mitf.mult_op);
                assert(tr.tr_time == itf.timestamp) else begin
                    $error("%s %0d: RESET at timestamp %0t not handled until timestamp %0t",
                            `__FILE__, `__LINE__, tr.tr_time, itf.timestamp);
                    itf.grader_errno = TIME_DESYNC;
                    $finish;
                end
                // Next rising edge, machine should be in a ready state
                @(scb_clk);
                if (!mitf.rdy) begin
                    $display("%1b", mitf.rdy);
                    nr_error();
                end
            end
            MULT_START: begin
                if (!mult_lock.try_get()) begin
                    // Could not get semaphore because
                    // a multiplication is ALREADY in flight
                    $display("SCB: %0t: Detected inflight start", $time);
                    handle_start_coverage(mitf.mult_op);
                end
                else begin
                    fork : mult_fork
                        $display("SCB: Received MULT_START at time %0t", $time);
                        begin // Wait for 'done' signal
                            @(scb_clk iff mitf.done);
                            //  $display("SCB: MULT Done at time %0t", $time);
                            if (mitf.product != result_t'(tr.op1 * tr.op2)) begin
                                prod_error(tr);
                            end
                            // Set Coverage
                            itf.covers.mults[tr.op1][tr.op2] = 1'b1;
                            //$display("SCB: Setting Cover mults[%0d][%0d] = %1b",
                            //        tr.op1, tr.op2,
                            //        itf.covers.mults[tr.op1][tr.op2]);
                            disable mult_fork;
                        end
                        begin // Wait for 'reset' signal
                            @(scb_clk iff !mitf.reset_n && !mitf.done);
                            $display("SCB: MULT Reset at time %0t", $time);
                            disable mult_fork;
                        end
                        begin // Timeout
                            #2000;
                            $display("SCB: MULT T/O at time %0t", $time);
                            disable mult_fork;
                        end
                    join
                    mult_lock.put();
                end
            end
            default: begin
                $error("%s %d: Illegal transaction recorded",
                        `__FILE__, `__LINE__);
                itf.grader_errno = ILLEGAL_TRANSACTION;
                $finish;
            end
        endcase
    join_none
end

endmodule

`endif
