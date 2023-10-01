package pkg_cache;

typedef enum bit {
    T_HIT   = 1'b0, /* dirty[WAYHIT] = DIRTYVAL */
    T_LRU   = 1'b1  /* dirty[WAYLRU] = DIRTYVAL */
} dirtywmux_t;

typedef enum bit {
    W_HIT   = 1'b0, /* data[WAYHIT] = ... */
    W_LRU   = 1'b1  /* data[WAYLRU] = ... */
} datawmux_t;

typedef enum bit {
    D_CPU   = 1'b0, /* data[...] = mem_wdata  */
    D_LLC   = 1'b1  /* data[...] = pmem_rdata */
} datamux_t;

typedef enum bit {
    M_CACHE = 1'b0, /* mem_rdata = data[WAYHIT] */
    M_LLC   = 1'b1  /* mem_rdata = pmem_rdata   */
} merdmux_t;

typedef enum bit {
    P_CPU   = 1'b0, /* pmem_address = {addr_tag,    9'b0} */
    P_CACHE = 1'b1  /* pmem_address = {tag[WAYLRU], 9'b0} */
} pmadmux_t;

endpackage : pkg_cache
