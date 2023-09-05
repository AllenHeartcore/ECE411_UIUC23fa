`ifndef cam_grader_sv
`define cam_grader_sv

module grader(cam_itf itf);

import cam_types::*;
initial begin
    $display("GDR: Grader Running");
    repeat (camsize_p * 10000) @(posedge itf.clk);
    $display("GDR: Timing Out");
    $finish;
end

final begin
    $display("GDR: Cleaning Up Grading Run...");
end

endmodule : grader

`endif
