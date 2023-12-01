module ff_array #(
            parameter               s_index     = 4,
            parameter               width       = 1
)(
    input   logic                   clk0,
    input   logic                   rst0,
    input   logic                   csb0,
    input   logic                   web0,
    input   logic   [s_index-1:0]   addr0,
    input   logic   [width-1:0]     din0,
    output  logic   [width-1:0]     dout0
);

            localparam              num_sets    = 2**s_index;

            logic   [width-1:0]     internal_array [num_sets];

    always_ff @(posedge clk0) begin
        if (rst0) begin
            for (int i = 0; i < num_sets; ++i) begin
                internal_array[i] <= '0;
            end
        end else begin
            if (!csb0) begin
                if (!web0) begin
                    internal_array[addr0] <= din0;
                    dout0 <= din0;
                end else begin
                    dout0 <= internal_array[addr0];
                end
            end
        end
    end

endmodule : ff_array
