package mult_types;
    parameter int width_p = 8;
    typedef bit [width_p-1:0] operand_t;
    typedef bit [width_p*2-1:0] result_t;
    parameter result_t min_operand = 0;
    parameter int operand_limit = 1 << width_p;
    typedef enum {
        BAD_PRODUCT = 0,
        NOT_READY   = 1,
        NUM_ERRORS  = 2
    } error_e;

    typedef struct packed {
        logic reset_n;
        logic start;
        operand_t multiplicand;
        operand_t multiplier;
    } multi_inputs_t;

    typedef enum bit[2:0] {
        NONE=3'b0, ADD=3'b101, SHIFT=3'b110, DONE=3'b011
    } op_e;

    parameter op_e ready_states [2] = {NONE, DONE};
    parameter op_e run_states [2] = {ADD, SHIFT};

    typedef struct packed {
        logic ready;
        logic done;
        int iteration;
        op_e op;
    
        logic[width_p-1:0] M;
        logic C;
        logic[width_p-1:0] A;
        logic[width_p-1:0] Q;
    } mstate_s;
endpackage : mult_types
