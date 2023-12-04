module cache_control
import cache_types::*;
(
    input   logic clk,
    input   logic rst,

    /* For performance counter */
    output  logic _perf_sigMiss,
    output  logic _perf_sigStart,
    output  logic _perf_sigEnd,

    input   logic mem_read, mem_write, pmem_resp,
    output  logic mem_resp, pmem_read, pmem_write,

    input   logic SIGHIT, SIGDIRTY,
    output  logic LD_VALID, LD_DIRTY, LD_TAG, LD_DATA, DIRTYVAL,
    output  cache_types::datamux_t DATAMUX,
    output  cache_types::pmadmux_t PMADMUX
);


    function void set_cache_defaults();
        mem_resp = 1'b0;
        pmem_read = 1'b0;
        pmem_write = 1'b0;
        LD_VALID = 1'b0;
        LD_DIRTY = 1'b0;
        LD_TAG = 1'b0;
        LD_DATA = 1'b0;
        DIRTYVAL = 1'b0;
        DATAMUX = D_CPU;
        PMADMUX = P_CPU;
        _perf_sigMiss = 1'b0;
        _perf_sigStart = 1'b0;
        _perf_sigEnd = 1'b0;
    endfunction

    function void loadValid();
        LD_VALID = 1'b1;
    endfunction

    function void loadDirty(logic dirtyval);
        LD_DIRTY = 1'b1;
        DIRTYVAL = dirtyval;
    endfunction

    function void loadTag();
        LD_TAG = 1'b1;
    endfunction

    function void loadData(cache_types::datamux_t datamux);
        LD_DATA = 1'b1;
        DATAMUX = datamux;
    endfunction

    function void setPMemAddrMUX(cache_types::pmadmux_t pmadmux);
        PMADMUX = pmadmux;
    endfunction


    enum logic [1:0] {IDLE, CMP, EVICT, LOAD} state, next_state;

    always_ff @ (posedge clk) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end


    always_comb begin
        set_cache_defaults();
        next_state = state;
        case (state)

            IDLE:
                if (mem_read || mem_write) begin
                    next_state = CMP;
                    _perf_sigStart = 1'b1;
                end

            CMP: begin
                if (SIGHIT) begin
                    if (mem_write) begin
                        loadData(D_CPU);
                        loadDirty(1'b1);
                    end
                    mem_resp = 1'b1;
                    next_state = IDLE;
                    _perf_sigEnd = 1'b1;
                end
                else begin
                    if (SIGDIRTY)
                        next_state = EVICT;
                    else
                        next_state = LOAD;
                    _perf_sigMiss = 1'b1;
                end
            end

            EVICT: begin
                setPMemAddrMUX(P_CACHE);
                pmem_write = 1'b1;
                if (pmem_resp)
                    next_state = LOAD;
            end

            LOAD: begin
                loadTag();
                loadValid();
                loadData(D_LLC);
                loadDirty(1'b0);
                setPMemAddrMUX(P_CPU);
                pmem_read = 1'b1;
                if (pmem_resp)
                    next_state = CMP;
            end

        endcase
    end


endmodule : cache_control
