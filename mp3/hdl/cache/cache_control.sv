module cache_control
import pkg_cache::*;
(
    input   logic clk,
    input   logic rst,

    input   logic mem_read, mem_write, pmem_resp,
    output  logic mem_resp, pmem_read, pmem_write,

    input   logic SIGHIT, SIGDIRTY,
    output  logic LD_VALID, LD_DIRTY, LD_TAG, LD_DATA,
    output  logic LD_TMPTAG, LD_TMPDATA, LD_PLRU, DIRTYVAL,
    output  pkg_cache::dirtywmux_t DIRTYWMUX,
    output  pkg_cache::datawmux_t DATAWMUX,
    output  pkg_cache::datamux_t DATAMUX,
    output  pkg_cache::merdmux_t MERDMUX,
    output  pkg_cache::pmadmux_t PMADMUX
);


    function void set_cache_defaults();
        pmem_read = 1'b0;
        pmem_write = 1'b0;
        LD_VALID = 1'b0;
        LD_DIRTY = 1'b0;
        LD_TAG = 1'b0;
        LD_DATA = 1'b0;
        LD_TMPTAG = 1'b0;
        LD_TMPDATA = 1'b0;
        LD_PLRU = 1'b0;
        DIRTYVAL = 1'b0;
        DIRTYWMUX = T_HIT;
        DATAMUX = D_CPU;
        MERDMUX = M_CACHE;
        PMADMUX = P_CPU;
    endfunction

    function void loadValid();
        LD_VALID = 1'b1;
    endfunction

    function void loadDirty(pkg_cache::dirtywmux_t dirtywmux, logic dirtyval);
        LD_DIRTY = 1'b1;
        DIRTYVAL = dirtyval;
        DIRTYWMUX = dirtywmux;
    endfunction

    function void loadTag();
        LD_TAG = 1'b1;
    endfunction

    function void loadData(pkg_cache::datawmux_t datawmux, pkg_cache::datamux_t datamux);
        LD_DATA = 1'b1;
        DATAWMUX = datawmux;
        DATAMUX = datamux;
    endfunction

    function void loadPLRU();
        LD_PLRU = 1'b1;
    endfunction

    function void storeTmps();
        LD_TMPTAG  = 1'b1;
        LD_TMPDATA = 1'b1;
    endfunction

    function void setMemRDataMUX(pkg_cache::merdmux_t merdmux);
        MERDMUX = merdmux;
    endfunction

    function void setPMemAddrMUX(pkg_cache::pmadmux_t pmadmux);
        PMADMUX = pmadmux;
    endfunction


    enum logic [1:0] {IDLE, HIT, MISS, EVICT} state, next_state;

    always_ff @ (posedge clk) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end


    always_comb begin : next_state_logic
        next_state = state;
        mem_resp = 1'b0;
        case (state)
            IDLE:
                if (mem_read || mem_write)
                    if (SIGHIT)
                        next_state = HIT;
                    else
                        next_state = MISS;
            HIT: begin
                next_state = IDLE;
                mem_resp = 1'b1;
            end
            MISS:
                if (pmem_resp)
                    next_state = EVICT;
            EVICT:
                if (!SIGDIRTY || pmem_resp) begin
                    next_state = IDLE;
                    mem_resp = 1'b1;
                end
        endcase
    end : next_state_logic


    always_comb begin : state_actions
        set_cache_defaults();
        case (state)

            IDLE: ;

            HIT: begin
                if (mem_read) begin
                    setMemRDataMUX(M_CACHE);
                end else begin
                    loadData(W_HIT, D_CPU);
                    loadDirty(T_HIT, 1'b1);
                end
                LD_PLRU = 1'b1;
            end

            MISS: begin
                if (SIGDIRTY) begin
                    storeTmps();
                end
                setPMemAddrMUX(P_CPU);
                pmem_read = 1'b1;
            end

            EVICT: begin
                loadTag();
                loadValid();
                loadPLRU();
                if (mem_read) begin
                    setMemRDataMUX(M_LLC);
                    loadData(W_LRU, D_LLC);
                    loadDirty(T_LRU, 1'b0);
                end else begin
                    loadData(W_LRU, D_CPU);
                    loadDirty(T_LRU, 1'b1);
                end
                if (SIGDIRTY) begin
                    setPMemAddrMUX(P_CACHE);
                    pmem_write = 1'b1;
                end
            end

        endcase
    end : state_actions


endmodule : cache_control
