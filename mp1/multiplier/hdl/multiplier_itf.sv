`ifndef multiplier_itf
`define multiplier_itf

interface multiplier_itf;
import mult_types::*;
bit clk, reset_n, start, rdy, done;
operand_t multiplicand, multiplier;
result_t product;
op_e mult_op;
time timestamp;

struct {
    logic bp [time]; // BAD_PRODUCT errors
    logic nr [time]; // NOT_READY errors
} stu_errors;

// Clock generation
initial begin
    clk = 1'b0;
    forever begin
        #5;
        clk = ~clk;
    end
end


initial timestamp = '0;
always @(posedge clk) timestamp += '1;

modport testbench (
        output rdy, product, reset_n, mult_op, done,multiplier, multiplicand, start,
        input clk,
        ref stu_errors, timestamp,
        import task finish(),
        import function automatic void tb_report_dut_error(error_e err) 
    );

task finish();
    #1000;
    $finish;
endtask

function automatic void tb_report_dut_error(error_e err);
    case (err)
        BAD_PRODUCT: stu_errors.bp[timestamp] = 1'b1;
        NOT_READY: stu_errors.nr[timestamp] = 1'b1;
    endcase
endfunction

endinterface : multiplier_itf
`endif
