`ifndef cam_ctls_itf
`define cam_ctls_itf


interface CAMCtls;

import cam_types::*;
/***************************** Signal Declarations ***************************/
// Signals from the Controller to the Datapath
one_hot0_t write_c_d;
one_hot0_t read_c_d;
camvec_t increment_lru_c_d;
idx_t read_idx_c_d;

// Signals from the Datapath to the Controller
camvec_t valids_d_c;
idx_t lrus_d_c [camsize_p-1:0];
one_hot0_t hits_d_c;
/*****************************************************************************/

/**************************** Modport Declarations ***************************/
modport Controller(
    input valids_d_c
    ,input lrus_d_c
    ,input hits_d_c
    ,output write_c_d
    ,output read_c_d
    ,output increment_lru_c_d
    ,output read_idx_c_d
);

modport Datapath(
    input write_c_d
    ,input read_c_d
    ,input increment_lru_c_d
    ,input read_idx_c_d
    ,output valids_d_c
    ,output lrus_d_c
    ,output hits_d_c
);
/*****************************************************************************/

endinterface : CAMCtls
`endif

