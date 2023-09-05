`ifndef grader
`define grader

module grader(fifo_itf itf);
import fifo_types::*;

initial begin
    $display("GDR: Grader Running");
    repeat (CAP_P * 1000) @(posedge itf.clk);
    $display("GDR: Timing Out");
    $finish;
end

final begin
    $display("GDR: Cleaning Up Grading Run...");
end

endmodule : grader
`endif

