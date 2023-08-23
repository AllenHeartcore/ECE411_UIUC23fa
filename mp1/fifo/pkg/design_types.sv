package fifo_types;
/***************************** Param Declarations ****************************/
// Width of words (in bits) stored in queue
parameter int WIDTH_P = 8;
typedef logic [WIDTH_P-1:0] word_t;
// FIFO's don't use shift registers, rather, they use pointers
// which address to the "read" (dequeue) and "write" (enqueue)
// ports of the FIFO's memory
parameter int PTR_WIDTH_P = 8;

// How do we decide the width of ptr_t?
typedef logic [PTR_WIDTH_P-1:0] ptr_t;

// Why does this work? Could using SystemVerilog's ** operator also work here?
// The number of words stored in the FIFO
parameter int CAP_P = 1 << PTR_WIDTH_P;

typedef enum {
    // Asserting reset_n @(negedge) should result in ready_o @(posedge)
    RESET_DOES_NOT_CAUSE_READY_O,
    // When asserting yumi @(negedge), data_o should be the CORRECT value
    INCORRECT_DATA_O_ON_YUMI_I
} error_e;

typedef struct {
    error_e err;
    time ltime;
} error_report_t;

endpackage : fifo_types
