
    valid[WAYLRU] = 1
    dirty[WAYHIT] = 1
    dirty[WAYLRU] = 0
    dirty[WAYLRU] = 1
    tag[WAYLRU] = addr_tag
    data[WAYHIT] = mem_wdata
    data[WAYLRU] = mem_wdata
    data[WAYLRU] = pmem_rdata
    TMPDATA = data[WAYLRU]
    TMPTAG = tag[WAYLRU]
    mem_rdata = data[WAYHIT]
    mem_rdata = pmem_rdata
    pmem_address = {addr_tag, 9'b0}
    pmem_address = {tag[WAYLRU], 9'b0}
    pmem_wdata = data[WAYLRU]
    pmem_read = 1
    pmem_write = 1
    Update PLRU

------------------------------------------------------------

    FSM PSEUDOCODE

    IDLE:
        if (mem_read || mem_write)
            if (SIGHIT)
                -> HIT
            else
                -> MISS
        else
            -> IDLE

    HIT:
        if (mem_read)
            mem_rdata = data[WAYHIT]
        else
            data[WAYHIT] = mem_wdata
            dirty[WAYHIT] = 1
        Update PLRU
        -> IDLE

    MISS:
        if (SIGDIRTY)
            TMPTAG = tag[WAYLRU]
            TMPDATA = data[WAYLRU]
        pmem_address = {addr_tag, 9'b0}
        pmem_read = 1
        if (pmem_resp)
            -> EVICT
        else
            -> MISS

    EVICT:
        tag[WAYLRU] = addr_tag
        valid[WAYLRU] = 1
        if (mem_read)
            mem_rdata = pmem_rdata
            data[WAYLRU] = pmem_rdata
            dirty[WAYLRU] = 0
        else
            data[WAYLRU] = mem_wdata
            dirty[WAYLRU] = 1
        Update PLRU
        if (SIGDIRTY)
            pmem_address = {tag[WAYLRU], 9'b0}
            pmem_wdata = data[WAYLRU]
            pmem_write = 1
            if (pmem_resp)
                -> IDLE
            else
                -> EVICT
        else
            -> IDLE

------------------------------------------------------------

    FSM PSEUDOCODE
    (SIGDIRTY = valid_q[WAYLRU] & dirty_q[WAYLRU])

    IDLE:
        SIGUPDATE = 0
        if (mem_read || mem_write)
            if (SIGHIT)
                -> HIT
            elif (SIGDIRTY)
                -> EVICT
            else
                -> MISS
        else
            -> IDLE

    HIT:
        if (mem_read)
            if (SIGUPDATE)
                mem_rdata = pmem_rdata
                data[WAYLRU] = pmem_rdata
            else
                mem_rdata = data[WAYHIT]
        else
            data[WAYHIT] = mem_wdata
            dirty[WAYHIT] = 1
        Update PLRU
        -> IDLE

    EVICT:
        pmem_address = {tag[WAYLRU], 9'b0}
        pmem_wdata = data[WAYLRU]
        pmem_write = 1
        if (pmem_resp)
            -> MISS
        else
            -> EVICT

    MISS:
        pmem_address = {addr_tag, 9'b0}
        tag[WAYLRU] = addr_tag
        valid[WAYLRU] = 1
        dirty[WAYLRU] = 0
        pmem_read = 1
        SIGUPDATE = 1
        if (pmem_resp)
            -> HIT
        else
            -> MISS

------------------------------------------------------------

``` sv
always_comb begin : state_logic
    next_state = state;
    case (state)
        IDLE: begin
            if (mem_read || mem_write) begin
                if (SIGHIT) begin
                    next_state = HIT;
                end else if (SIGDIRTY) begin
                    next_state = EVICT;
                end else begin
                    next_state = MISS;
                end
            end
        end
        HIT: begin
            if (mem_read) begin
                if (SIGUPDATE) begin
                    mem_rdata = pmem_rdata;
                    data[WAYLRU] = pmem_rdata;
                end else begin
                    mem_rdata = data[WAYHIT];
                end
            end else begin
                data[WAYHIT] = mem_wdata;
                dirty[WAYHIT] = 1;
            end
            Update PLRU;
            next_state = IDLE;
        end
        EVICT: begin
            pmem_address = {tag[WAYLRU], 9'b0};
            pmem_wdata = data[WAYLRU];
            pmem_write = 1;
            if (pmem_resp) begin
                next_state = MISS;
            end
        end
        MISS: begin
            pmem_address = {addr_tag, 9'b0};
            tag[WAYLRU] = addr_tag;
            valid[WAYLRU] = 1;
            dirty[WAYLRU] = 0;
            pmem_read = 1;
            SIGUPDATE = 1;
            if (pmem_resp) begin
                next_state = HIT;
            end
        end
    endcase
end : state_logic
```
