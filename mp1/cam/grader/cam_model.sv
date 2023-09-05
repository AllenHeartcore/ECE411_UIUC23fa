`ifndef cam_model_sv
`define cam_model_sv

class CAMModel;
    key_t keys [camsize_p-1:0];
    val_t vals [camsize_p-1:0];
    idx_t lrus [camsize_p-1:0];
    logic [camsize_p-1:0] valids;

    function new();
        reset();
    endfunction

    function void reset();
        valids = '0;
    endfunction

    function  read_s read(input key_t key);
        read_s rv;
        rv.valid = '0;
        for (int i = 0; i < camsize_p; ++i) begin
            if (valids[i] & (keys[i] == key)) begin
                rv.valid = '1;
                rv.value = vals[i];
                rv.index = i;
                for (int j = 0; j < camsize_p; ++j) begin
                    if (valids[j] && (lrus[j] < lrus[i]))
                        lrus[j] += 3'b1;
                end
                lrus[i] = '0;
            end
        end
        return rv;
    endfunction

    function write_s write(input key_t key, input val_t val);
        write_s rv;
        rv.lru_evict = 1'b0;
        rv.index = -1;
        for (int i = 0; i < camsize_p; ++i) begin
            if (valids[i] && (keys[i] == key)) begin
                vals[i] = val;
                for (int j = 0; j < camsize_p; ++j) begin
                    if (valids[j] && (lrus[j] < lrus[i])) begin
                        lrus[j] += 3'b1;
                    end
                end
                lrus[i] = '0;
                return rv;
            end
        end

        // Could not find Key --- look for invalid entry
        for (int i = 0; i < camsize_p; ++i) begin
            if (~valids[i]) begin
                vals[i] = val;
                keys[i] = key;
                for (int j = 0; j < camsize_p; ++j) begin
                    if (valids[j])
                        lrus[j] += 3'b1;
                end
                lrus[i] = '0;
                valids[i] = '1;
                return rv;
            end
        end

        // Full and no hit
        for (int i = 0; i < camsize_p; ++i) begin
            if (lrus[i] != lru_p) begin
                lrus[i] += 3'b1;
            end
            else begin
                lrus[i] = '0;
                vals[i] = val;
                keys[i] = key;
                rv.lru_evict = 1'b1;
                rv.index = i;
            end
        end
        return rv;
    endfunction

    function void print();
        for (int i = 0; i < camsize_p; ++i) begin
            $display("idx: %0d, valid: %b, key: %0d, val: %0d, lru: %0d",
                        i, valids[i], keys[i], vals[i], lrus[i]);
        end
    endfunction

    read_s rdata;
    //task test();
    //$display("Model Test Starting");
    //this.reset();
    //for (int i = 0; i < camsize_p+1; ++i) begin
    //    this.write(i+camsize_p, i);
    //    #10;
    //    rdata = this.read(i+camsize_p);
    //    #10;
    //    assert(rdata.valid && (rdata.val == i))
    //        else begin
    //            $error("Failed %0d", i);
    //            this.print();
    //        end
    //end
    //rdata = this.read(camsize_p+0);
    //#10;
    //assert(~rdata.valid)
    //    else begin
    //        $error("Failed LRU Eviction");
    //        $display("rdata: valid: %b, val: %0d", rdata.valid, rdata.val);
    //        this.print();
    //    end
    //rdata = this.read(1+camsize_p);
    //assert(rdata.valid && (rdata.val == 1))
    //    else begin
    //        $error("Failed 1 second time");
    //        this.print();
    //    end
    //this.write(500, 500);
    //rdata = this.read(2+camsize_p);
    //assert(~rdata.valid)
    //    else begin
    //        $error("Failed LRU Eviction");
    //        $display("rdata: valid: %b, val: %0d", rdata.valid, rdata.val);
    //        this.print();
    //    end
    //this.reset();
    //$display("Model Test Complete");
    //endtask

endclass

`endif

