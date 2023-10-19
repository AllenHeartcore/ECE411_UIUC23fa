module if_unit
import pipeline_reg_pkg::*;
(
    input   logic           clk, rst,
    input   pcmux::pcmux_sel_t     pcmux_sel,
    input   logic   [31:0]  alu_out,
    output  logic   [31:0]  imem_address,
    input   logic   [31:0]  imem_rdata,
    input   logic           load_pc,
    output  if_id_reg_t        if_reg
);
    logic  [31:0]   pcmux_out;
    logic  [31:0]   pc_reg_out;
    always_comb begin :  PC_MUX
        unique case (pcmux_sel)
            pcmux::pc_plus4 : pcmux_out = pc_reg_out + 4;
            pcmux::alu_out  : pcmux_out = alu_out;
            pcmux::alu_mod2 : pcmux_out = alu_out & 32'hfffffffe;
            default         : pcmux_out = 'x;
        endcase
    end

    /*      PC REG      */
    register pc_reg(.clk(clk), .rst(rst), .load(load_pc), .in(pcmux_out), .out(pc_reg_out));

    assign imem_address = pc_reg_out;
    assign if_reg.pc = pc_reg_out;
    assign if_reg.ir = imem_rdata;
endmodule