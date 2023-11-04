module cache_control
import cache_types::*;
(
    input   logic clk,
    input   logic rst,

    input   logic mem_read, mem_write, pmem_resp,
    output  logic mem_resp, pmem_read, pmem_write,

    input   logic SIGHIT, SIGDIRTY,
    output  logic LD_VALID, LD_DIRTY, LD_TAG, LD_DATA, LD_PLRU, DIRTYVAL,
    output  cache_types::waymux_t DIRTYWMUX, DATAWMUX,
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
        LD_PLRU = 1'b0;
        DIRTYVAL = 1'b0;
        DIRTYWMUX = W_HIT;
        DATAWMUX = W_HIT;
        DATAMUX = D_CPU;
        PMADMUX = P_CPU;
    endfunction

    function void loadValid();
        LD_VALID = 1'b1;
    endfunction

    function void loadDirty(cache_types::waymux_t dirtywmux, logic dirtyval);
        LD_DIRTY = 1'b1;
        DIRTYVAL = dirtyval;
        DIRTYWMUX = dirtywmux;
    endfunction

    function void loadTag();
        LD_TAG = 1'b1;
    endfunction

    function void loadData(cache_types::waymux_t datawmux, cache_types::datamux_t datamux);
        LD_DATA = 1'b1;
        DATAWMUX = datawmux;
        DATAMUX = datamux;
    endfunction

    function void loadPLRU();
        LD_PLRU = 1'b1;
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
                if (mem_read || mem_write)
                    next_state = CMP;

            CMP: begin
                if (SIGHIT) begin
                    if (mem_write) begin
                        loadData(W_HIT, D_CPU);
                        loadDirty(W_HIT, 1'b1);
                    end
                    loadPLRU();
                    mem_resp = 1'b1;
                    next_state = IDLE;
                end
                else if (SIGDIRTY)
                    next_state = EVICT;
                else
                    next_state = LOAD;
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
                loadData(W_LRU, D_LLC);
                loadDirty(W_LRU, 1'b0);
                setPMemAddrMUX(P_CPU);
                pmem_read = 1'b1;
                if (pmem_resp)
                    next_state = CMP;
            end

        endcase
    end


endmodule : cache_control
