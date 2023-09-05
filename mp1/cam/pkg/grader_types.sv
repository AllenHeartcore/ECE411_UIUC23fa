package grader_types;
import cam_types::*;

typedef enum {
    TR_NONE=0, TR_WRITE=1, TR_READ=2, TR_RESET=3
} trans_e;

typedef struct packed {
    time ltime; // logical time
    time rtime; // real time
    key_t key;
    val_t rdata;
    val_t wdata;
    logic valid_o;
    trans_e tr_type;
} trans_t;

typedef enum {
    NONE = 0
} errnos_e;

typedef struct packed {
    logic [camsize_p-1:0] evicts;
    logic [camsize_p-1:0] hits;
    logic ww_tag; // Write to the same tag in consecutive cycles
    logic wr_tag; // Write then read to the same tag in consecutive cycles
} covers_t;

typedef struct {
    logic evicted;
    int index;
} lru_bounce_s;

typedef struct {
    logic valid;
    val_t value;
    int index;   // index of the read
} read_s;

typedef struct {
    logic lru_evict; // 1 if eviction ocurred
    int index;
} write_s;

endpackage : grader_types


