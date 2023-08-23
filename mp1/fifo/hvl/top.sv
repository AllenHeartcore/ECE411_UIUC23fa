
module top;
import fifo_types::*;

fifo_itf itf();

grader grd (.*);
testbench tb(.*);

endmodule : top

