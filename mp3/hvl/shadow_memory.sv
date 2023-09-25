module shadow_memory#(
    parameter MEMFILE = "memory.lst"
)(
    cache_itf.mon itf
);

    logic [63:0] internal_memory_array [logic [25:0]];

    logic [25:0] arr_addr = itf.addr[28:3];

    always @(posedge itf.clk) begin
        if (itf.rst === 1'b0) begin
            if ((itf.read ^ itf.write) === 1'bx) begin
                $error("Shadow Memory Error: Control containes 1'bx");
                itf.error <= 1'b1;
            end
            if (itf.read === 1'b1 && itf.write === 1'b1) begin
                $error("Shadow Memory Error: Simultaneous memory read and write");
                itf.error <= 1'b1;
            end
            if (itf.write === 1'b1 && ^itf.wmask === 1'bx) begin
                $error("Shadow Memory Error: Control containes 1'bx");
                itf.error <= 1'b1;
            end
            if (itf.read === 1'b1 || itf.write === 1'b1) begin
                if (^itf.addr === 1'bx) begin
                    $error("Shadow Memory Error: Address containe 'x");
                    itf.error <= 1'b1;
                end
            end
        end
    end

    always @(posedge itf.clk) begin
        casez ({itf.rst, itf.read, itf.write})
            3'b1??: reset();
            3'b010: memread();
            3'b001: memwrite();
        endcase
    end

    task automatic reset();
        internal_memory_array.delete();
        $readmemh(MEMFILE, internal_memory_array);
    endtask

    task automatic memread();
        logic [31:0] cached_addr;
        cached_addr = itf.addr;
        fork : f
            begin : error_check
                forever @(posedge itf.clk) begin
                    if (!itf.read) begin
                        $error("Memory Error: Read deasserted early");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.write) begin
                        $error("Memory Error: Write asserted during read");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.addr != cached_addr) begin
                        $error("Memory Error: Address changed");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                end
            end
            begin : memreader
                //TODO add your read data check here
                disable f;
            end
        join
    endtask

    task automatic memwrite();
        logic [31:0] cached_addr;
        logic [31:0] cached_mask;
        cached_addr = itf.addr;
        cached_mask = itf.wmask;
        fork : f
            begin : error_check
                forever @(posedge itf.clk) begin
                    if (!itf.write) begin
                        $error("Memory Error: Write deasserted early");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.read) begin
                        $error("Memory Error: Read asserted during Write");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.addr != cached_addr) begin
                        $error("Memory Error: Address changed");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                    if (itf.wmask != cached_mask) begin
                        $error("Memory Error: Mask changed");
                        itf.error <= 1'b1;
                        disable f;
                        break;
                    end
                end
            end
            begin : memwrite
                //TODO: write the data into shadow memory as well
                disable f;
            end
        join
    endtask

endmodule
