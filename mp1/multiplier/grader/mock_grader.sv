/*
 * Student grader file.  Simulates time out behavior
 * of actual grader, and `final` block, which
 * the actual grader must execute to log student results
*/

`ifndef grader
`define grader

module grader(multiplier_itf itf);
import mult_types::*;


initial begin
    $display("GDR: Grader Running");
    repeat (operand_limit * operand_limit * 100) @(posedge itf.clk);
    $display("GDR: Grader timed out"); $finish;
end

final begin
    $display("GDR: Cleaning-up Test Run");
end

endmodule : grader

`endif

