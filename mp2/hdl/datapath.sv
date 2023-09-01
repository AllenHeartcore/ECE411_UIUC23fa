module datapath
import rv32i_types::*;
(
    input clk,
    input rst,
    input load_mdr,
    input rv32i_word mem_rdata,
    output rv32i_word mem_wdata // signal used by RVFI Monitor
    /* You will need to connect more signals to your datapath module*/
);

/******************* Signals Needed for RVFI Monitor *************************/
rv32i_word pcmux_out;
rv32i_word mdrreg_out;
/*****************************************************************************/


/***************************** Registers *************************************/
// Keep Instruction register named `IR` for RVFI Monitor
ir IR(
    //Fill in the wires
);

logic [31:0] mdr;
always_ff @( posedge clk ) begin : mdr_ff
    if (rst) begin
        mdr <= '0;
    end else if (load_mdr) begin
        mdr <= mem_rdata;
    end
end : mdr_ff
assign mdrreg_out = mdr;

/*****************************************************************************/

/******************************* ALU and CMP *********************************/


/*****************************************************************************/

/******************************** Muxes **************************************/
always_comb begin : MUXES
    // We provide one (incomplete) example of a mux instantiated using
    // a case statement.  Using enumerated types rather than bit vectors
    // provides compile time type safety.  Defensive programming is extremely
    // useful in SystemVerilog. 
    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_out + 4;
        // etc.
    endcase
end
/*****************************************************************************/
endmodule : datapath
