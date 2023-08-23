`ifndef cam_datapath_sv
`define cam_datapath_sv

module cam_datapath
import cam_types::*;
(
    input clk_i,
    input reset_n_i,
    input val_t val_i,
    input key_t key_i,
    output val_t val_o,
    CAMCtls.Datapath ctls
);

/**************************** Signal Declarations ****************************/
key_t keys_r [camsize_p-1:0];
val_t vals_r [camsize_p-1:0];
idx_t lrus_r [camsize_p-1:0];
camvec_t valids_r;
genvar i;  // See note on `generate' block
/*****************************************************************************/

/******************************** Assignments ********************************/
assign ctls.valids_d_c = valids_r;
assign ctls.lrus_d_c = lrus_r;
assign val_o = vals_r[ctls.read_idx_c_d];

// Generate Blocks are used to instantiate multiple hardware instances
// easily using metaprogramming
// Limits of the for loop must be known at compile time.
// The `genvar` type does not exist in synthesis or simulation, and
// is simply used to facilitate for loops in generate blocks
// In addition to the loop construct below, generate blocks can
// be used with conditional constructs
// Using them in such a way, a designer can recursively describe hardware
// This is very useful for describing parameterized hardware
generate
    for (i = 0; i < camsize_p; ++i) begin : hit_detector
        assign ctls.hits_d_c[i] = valids_r[i] & (keys_r[i] == key_i);
    end
endgenerate
/*****************************************************************************/

/****************************** Sequential Logic *****************************/
always_ff @(posedge clk_i) begin
    if (~reset_n_i) begin
        valids_r <= '0; // '0 makes all bits 0, '1 makes all bits 1
        for (int i = 0; i < camsize_p; ++i) begin
            lrus_r[i] <= i[2:0];
        end
    end
    else begin
        for (int i = 0; i < camsize_p; ++i) begin
            unique case ({
                // the { } notation concates logic bits into a packed array
                ctls.write_c_d[i],
                ctls.read_c_d[i],
                ctls.increment_lru_c_d[i]
            })
                3'b000: ;
                3'b001: lrus_r[i] <= lrus_r[i] + 1'b1;
                3'b010: lrus_r[i] <= mru_p;
                3'b100: begin
                    lrus_r[i] <= mru_p;
                    keys_r[i] <= key_i;
                    vals_r[i] <= val_i;
                    valids_r[i] <= '1;
                end
            endcase
        end
    end
end
/*****************************************************************************/

endmodule : cam_datapath
`endif

