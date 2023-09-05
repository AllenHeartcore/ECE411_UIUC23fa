package grader_types;
import fifo_types::*;

typedef enum {
    TR_NONE=0, TR_RESET=1, TR_ENQUEUE=2, TR_DEQUEUE=3, TR_BOTH=4
} trans_e;

typedef struct {
    time ltime; // logical time
    time rtime; // real time
    word_t enq_word;
    word_t deq_word;
    trans_e tr_type;
} trans_t;

typedef enum {
    NONE = 0
} errnos_e;

typedef struct packed {
    logic [CAP_P:0] enqs;
    logic [CAP_P:0] deqs;
    logic [CAP_P:0] boths;
} covers_t;

endpackage : grader_types
