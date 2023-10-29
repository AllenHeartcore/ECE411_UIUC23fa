import pipeline_pkg::*;



module pipeline_reg
(
    input  clk, rst, load,
    input  pipeline_reg_t in,
    output pipeline_reg_t out
);

    register reg_pc (.*, .in(in.pc),  .out(out.pc));
    register reg_ir (.*, .in(in.ir),  .out(out.ir));
    register reg_r1 (.*, .in(in.r1),  .out(out.r1));
    register reg_r2 (.*, .in(in.r2),  .out(out.r2));
    register reg_mdr(.*, .in(in.mdr), .out(out.mdr));
    register reg_uim(.*, .in(in.uim), .out(out.uim));
    register reg_alu(.*, .in(in.alu), .out(out.alu));
    register #(.width(1)) reg_cmp(.*, .in(in.cmp), .out(out.cmp));

    register reg_pc_wdata (.*, .in(in._pc_wdata), .out(out._pc_wdata));
    register reg_mem_addr (.*, .in(in._mem_addr), .out(out._mem_addr));
    register reg_mem_wdata (.*, .in(in._mem_wdata), .out(out._mem_wdata));
    register #(.width(4)) reg_mem_rmask (.*, .in(in._mem_rmask), .out(out._mem_rmask));
    register #(.width(1)) reg_mem_wmask (.*, .in(in._mem_wmask), .out(out._mem_wmask));

endmodule



module ctrlex_reg
(
    input clk, rst, load,
    input ctrlex_reg_t in,
    output ctrlex_reg_t out
);

    aluop_reg   aluop_reg   (.*, .in(in.aluop),       .out(out.aluop));
    cmpop_reg   cmpop_reg   (.*, .in(in.cmpop),       .out(out.cmpop));
    alumux1_reg alumux1_reg (.*, .in(in.alumux1_sel), .out(out.alumux1_sel));
    alumux2_reg alumux2_reg (.*, .in(in.alumux2_sel), .out(out.alumux2_sel));
    cmpmux_reg  cmpmux_reg  (.*, .in(in.cmpmux_sel),  .out(out.cmpmux_sel));
    pcmux_reg   pcmux_reg   (.*, .in(in.pcmux_sel),   .out(out.pcmux_sel));
    register #(.width(1)) is_branch (.*, .in(in.is_branch), .out(out.is_branch));

endmodule



module ctrlmem_reg
(
    input clk, rst, load,
    input ctrlmem_reg_t in,
    output ctrlmem_reg_t out
);

    marmux_reg  marmux_reg  (.*, .in(in.marmux_sel),  .out(out.marmux_sel));
    opcode_reg  opcode_reg  (.*, .in(in.opcode),      .out(out.opcode));
    register #(.width(3)) funct3_reg (.*, .in(in.funct3), .out(out.funct3));
    register #(.width(1)) dmem_read_reg (.*, .in(in.dmem_read), .out(out.dmem_read));
    register #(.width(1)) dmem_write_reg (.*, .in(in.dmem_write), .out(out.dmem_write));

endmodule



module ctrlwb_reg (
    input clk, rst, load,
    input ctrlwb_reg_t in,
    output ctrlwb_reg_t out
);

    regfilemux_reg regfilemux_reg (.*, .in(in.regfilemux_sel), .out(out.regfilemux_sel));
    register #(.width(1)) load_regfile_reg (.*, .in(in.load_regfile), .out(out.load_regfile));
    register #(.width(5)) rs1_reg (.*, .in(in.rs1), .out(out.rs1));
    register #(.width(5)) rs2_reg (.*, .in(in.rs2), .out(out.rs2));
    register #(.width(5)) rd_reg  (.*, .in(in.rd),  .out(out.rd));

endmodule



module opcode_reg
import rv32i_types::*;
(
    input clk, rst, load,
    input rv32i_opcode in,
    output rv32i_opcode out
);
    rv32i_opcode data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= rv32i_opcode'(7'b0);
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module pcmux_reg
(
    input clk, rst, load,
    input pcmux::pcmux_sel_t in,
    output pcmux::pcmux_sel_t out
);
    pcmux::pcmux_sel_t data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= pcmux::pc_plus4;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module alumux1_reg
(
    input clk, rst, load,
    input alumux::alumux1_sel_t in,
    output alumux::alumux1_sel_t out
);
    alumux::alumux1_sel_t data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= alumux::rs1_out;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module alumux2_reg
(
    input clk, rst, load,
    input alumux::alumux2_sel_t in,
    output alumux::alumux2_sel_t out
);
    alumux::alumux2_sel_t data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= alumux::i_imm;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module regfilemux_reg
(
    input clk, rst, load,
    input regfilemux::regfilemux_sel_t in,
    output regfilemux::regfilemux_sel_t out
);
    regfilemux::regfilemux_sel_t data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= regfilemux::alu_out;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module marmux_reg
(
    input clk, rst, load,
    input marmux::marmux_sel_t in,
    output marmux::marmux_sel_t out
);
    marmux::marmux_sel_t data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= marmux::pc_out;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module cmpmux_reg
(
    input clk, rst, load,
    input cmpmux::cmpmux_sel_t in,
    output cmpmux::cmpmux_sel_t out
);
    cmpmux::cmpmux_sel_t data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= cmpmux::rs2_out;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module aluop_reg
import rv32i_types::*;
(
    input clk, rst, load,
    input alu_ops in,
    output alu_ops out
);
    alu_ops data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= alu_add;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule



module cmpop_reg
import rv32i_types::*;
(
    input clk, rst, load,
    input cmp_ops in,
    output cmp_ops out
);
    cmp_ops data;
    always_ff @(posedge clk) begin
        if (rst)
            data <= beq;
        else if (load)
            data <= in;
    end
    assign out = data;
endmodule
