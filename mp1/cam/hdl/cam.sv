`ifndef cam_sv
`define cam_sv


module cam
import cam_types::*;
(
    input clk_i,
    input reset_n_i,
    input rw_n_i,
    input valid_i,
    input key_t key_i,
    input val_t val_i,
    output val_t val_o,
    output logic valid_o
);

// This is an interface.  See `cam_interface.sv`
CAMCtls ctls();

cam_datapath dp(.*);
cam_controller ctl(
    .read_i  ( valid_i & rw_n_i    ),
    .write_i ( valid_i & (~rw_n_i) ),
    .*
);

endmodule : cam
`endif

