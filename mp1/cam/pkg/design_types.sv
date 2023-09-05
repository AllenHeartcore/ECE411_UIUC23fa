`ifndef CAM_TYPES_SV
`define CAM_TYPES_SV
package cam_types;
// Students: Do not change these values
parameter int camsize_p = 8;
parameter int key_width_p = 16;
parameter int val_width_p = 16;

typedef logic [key_width_p-1:0] key_t;
typedef logic [val_width_p-1:0] val_t;
typedef logic [$clog2(camsize_p)-1:0] idx_t;
typedef logic [camsize_p-1:0] camvec_t;
typedef camvec_t one_hot0_t;
parameter idx_t lru_p = '1; // Least Recently Used
parameter idx_t mru_p = '0; // Most Recently Used

typedef enum {
    READ_ERROR
} error_e;

typedef struct {
    time timestamp;
    error_e err;
} error_t;

// You can add more, though :)

endpackage
`endif
