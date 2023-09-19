`ifndef cam_ctl_sv
`define cam_ctl_sv

/*
 * one_hot0_encoder takes as input a one_hot or zero vector
 * and outputs the index associated with the 1 bit, as well
 * whether a 1 bit exists (valid_o)
*/
module one_hot0_encoder
(
    input logic [7:0]  vec_i,
    output logic [2:0] idx_o,
    output logic valid_o
);

assign valid_o = |vec_i;

always_comb begin
    idx_o = '0;
    unique case (vec_i)
        8'h00: idx_o = 3'd0;
        8'h01: idx_o = 3'd0;
        8'h02: idx_o = 3'd1;
        8'h04: idx_o = 3'd2;
        8'h08: idx_o = 3'd3;
        8'h10: idx_o = 3'd4;
        8'h20: idx_o = 3'd5;
        8'h40: idx_o = 3'd6;
        8'h80: idx_o = 3'd7;
        default: if ($time != 0)
            $info("CAMCTL: %s %0d: reset to make valid",
                            `__FILE__, `__LINE__);
    endcase
end
endmodule : one_hot0_encoder

/*
 * This priority encoder takes as input a vector of length 8 and outputs
 * the index of the rightmost 0 bit.  If no bits are zero, then valid_o
 * is output as 0, otherwise, valid_o is output as 1.
*/
module priority_encoder
(
    input logic [7:0] vec_i,
    output logic [2:0] idx_o,
    output logic valid_o
);

always_comb begin
    idx_o = '0;
    valid_o = '1;
    unique casex (vec_i)
        8'bxxxxxxx0: idx_o = 3'd0;
        8'bxxxxxx01: idx_o = 3'd1;
        8'bxxxxx011: idx_o = 3'd2;
        8'bxxxx0111: idx_o = 3'd3;
        8'bxxx01111: idx_o = 3'd4;
        8'bxx011111: idx_o = 3'd5;
        8'bx0111111: idx_o = 3'd6;
        8'b01111111: idx_o = 3'd7;
        8'hFF: valid_o = '0;
    endcase
end

endmodule : priority_encoder

module cam_controller
import cam_types::*;
(
    input read_i,
    input write_i,
    output logic valid_o,
    CAMCtls.Controller ctls
);

/****************** Find the index of the first invalid entry ****************/
logic invalid_entry_w;
idx_t invalid_idx_w;

priority_encoder invalid_entry_finder(
    .vec_i   ( ctls.valids_d_c ),
    .idx_o   ( invalid_idx_w   ),
    .valid_o ( invalid_entry_w )
);
/*****************************************************************************/

/********************* Find the Hit Index (if one exists) ********************/
logic hit_valid_w;
idx_t hit_idx_w;

one_hot0_encoder hit_entry_finder(
    .vec_i   ( ctls.hits_d_c ),
    .idx_o   ( hit_idx_w     ),
    .valid_o ( hit_valid_w   )
);
/*****************************************************************************/

/******************************** Assignments ********************************/
assign ctls.read_idx_c_d = hit_idx_w;
assign valid_o = hit_valid_w & read_i;
/*****************************************************************************/

/********************* Find the index of the LRU entry ***********************/
one_hot0_t lru_w;
genvar i;
generate
    for (i = 0; i < camsize_p; ++i) begin : lru_detector
        assign lru_w[i] = ctls.lrus_d_c[i] == lru_p;
    end
endgenerate
/*****************************************************************************/

/***************************** Mux'ed Assignments ****************************/
always_comb begin
    ctls.increment_lru_c_d = '0;
    ctls.write_c_d = '0;
    ctls.read_c_d = '0;
    case ({read_i, write_i, hit_valid_w})
        3'b000: ;
        3'b001: ;
        3'b010: begin
            if (invalid_entry_w) begin
                ctls.write_c_d[invalid_idx_w] = 1'b1;
                ctls.increment_lru_c_d = ctls.valids_d_c;
            end
            else begin
                ctls.write_c_d = lru_w;
                ctls.increment_lru_c_d = ~lru_w;
            end
        end
        3'b011: begin
            ctls.write_c_d = ctls.hits_d_c;
            for (int i = 0; i < camsize_p; ++i) begin
                ctls.increment_lru_c_d[i] =
                                ctls.valids_d_c[i] &
                                (ctls.lrus_d_c[i] < ctls.lrus_d_c[hit_idx_w]);
            end
        end
        3'b100: ;
        3'b101: begin
            ctls.read_c_d = ctls.hits_d_c;
            for (int i = 0; i < camsize_p; ++i) begin
                ctls.increment_lru_c_d[i] =
                                ctls.valids_d_c[i] &
                                (ctls.lrus_d_c[i] < ctls.lrus_d_c[hit_idx_w]);
            end
        end
        3'b110: ;
        3'b111: ;
        default: if ($time != 0) $display("%0t CAMCTL: %s %0d: reset to make valid",
                                $time, `__FILE__, `__LINE__);
    endcase
end
/*****************************************************************************/

endmodule : cam_controller
`endif
