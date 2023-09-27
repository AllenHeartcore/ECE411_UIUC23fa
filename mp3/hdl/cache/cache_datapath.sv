module cache_datapath #(
            parameter       s_offset = 5,
            parameter       s_index  = 4,
            parameter       s_tag    = 32 - s_offset - s_index,
            parameter       s_mask   = 2**s_offset,
            parameter       s_line   = 8*s_mask,
            parameter       num_sets = 2**s_index
)(

);

            logic   [255:0] data_d      [4];

    genvar i;
    generate for (i = 0; i < 4; i++) begin : arrays
        mp3_data_array data_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (),
            .wmask0     (),
            .addr0      (),
            .din0       (data_d[i]),
            .dout0      ()
        );
    end endgenerate

endmodule : cache_datapath
