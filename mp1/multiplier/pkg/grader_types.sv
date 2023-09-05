package grader_types;
    import mult_types::*;
    typedef struct packed {
        logic reset_n;
        logic [width_p-1:0] multiplicand;
        logic [width_p-1:0] multiplier;
        logic start;
        logic ready;
        logic [width_p*2-1:0] product;
        logic done;
    } sample_t;

    typedef struct packed {
        logic [operand_limit-1:0][operand_limit-1:0] mults;
        logic reset_add;
        logic reset_shift;
        logic start_add;
        logic start_shift;
    } covers_t;

    // Represetns Transaction Types
    typedef enum {
        MULT_START,
        RESET
    } trans_e;

    // Transaction Data Structure
    typedef struct {
        time tr_time;    // The time the transaction is id'ed
        trans_e tr_type;
        int op1;        // Multiplicand and multiplier
        int op2;
    } trans_t;

    typedef enum  {NONE = 0
                   ,ILLEGAL_TRANSACTION = 1
                   ,TIME_DESYNC=2
                   ,ILLEGAL_STATE=3
                  } errnos_e;

endpackage : grader_types

