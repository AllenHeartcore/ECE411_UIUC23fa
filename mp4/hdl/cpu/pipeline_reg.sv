import pipeline_reg_pkg::*;



module if_id
(
    input  clk,
    input  rst,
    input  load,
    input  if_id_reg_t in,
    output if_id_reg_t out
);
    register if_id_reg_pc(.clk(clk), .rst(rst), .load(load), .in(in.pc), .out(out.pc));
    register if_id_reg_ir(.clk(clk), .rst(rst), .load(load), .in(in.ir), .out(out.ir));
endmodule


module CtrlEx
(
    input clk,
    input rst,
    input load,
    input alu_ops aluop_in,
    input cmp_ops cmpop_in,
    input alumux::alumux1_sel_t alumux1_sel_in,
    input alumux::alumux2_sel_t alumux2_sel_in,
    input pcmux::pcmux_sel_t pcmux_sel_in,
    input logic is_branch_in,
    input cmpmux::cmpmux_sel_t cmpmux_sel_in,
    output pcmux::pcmux_sel_t pcmux_sel_out,
    output logic is_branch_out,
    output alu_ops aluop_out,
    output cmp_ops cmpop_out,
    output alumux::alumux1_sel_t alumux1_sel_out,
    output alumux::alumux2_sel_t alumux2_sel_out,
    output cmpmux::cmpmux_sel_t cmpmux_sel_out
);

    alumux1_reg alumux1_reg(
        .clk(clk), 
        .rst(rst),
        .load(load),
        .alumux1_sel_in(alumux1_sel_in),
        .alumux1_sel_out(alumux1_sel_out)
    );

    register #(
        .width(1)
    )
    is_branch(
        .clk(clk), 
        .rst(rst), 
        .load(load), 
        .in(is_branch_in), 
        .out(is_branch_out)
    );

    pcmux_reg pcmux(
        .clk(clk),
        .rst(rst),
        .load(load),
        .pcmux_sel_in(pcmux_sel_in),
        .pcmux_sel_out(pcmux_sel_out)
    );

    alumux2_reg alumux2_reg(
        .clk(clk), 
        .rst(rst),
        .load(load),
        .alumux2_sel_in(alumux2_sel_in),
        .alumux2_sel_out(alumux2_sel_out)
    );

    cmpop_reg cmpop_reg(
        .clk(clk), 
        .rst(rst),
        .load(load),
        .cmpop_in(cmpop_in),
        .cmpop_out(cmpop_out)
    );

    aluop_reg aluop_reg(
        .clk(clk), 
        .rst(rst),
        .load(load),
        .aluop_in(aluop_in),
        .aluop_out(aluop_out)
    );

    cmpmux_sel_reg cmpmux_sel_reg(
        .clk(clk), 
        .rst(rst),
        .load(load),
        .cmpmux_sel_in(cmpmux_sel_in),
        .cmpmux_sel_out(cmpmux_sel_out)
    );

endmodule



module CtrlMem
(
    input clk,
    input rst,
    input load,
    input marmux::marmux_sel_t marmux_sel_in,
    output marmux::marmux_sel_t marmux_sel_out
);

    marmux_sel_reg marmux_sel_reg(
        .clk(clk), 
        .rst(rst),
        .load(load),
        .marmux_sel_in(marmux_sel_in),
        .marmux_sel_out(marmux_sel_out)
    );

endmodule

module CtrlWB (
    input clk,
    input rst,
    input load,
    input logic [4:0] rs1_in,
    input logic [4:0] rs2_in,
    input logic [4:0] rd_in,
    input logic load_regfile_in,
    input regfilemux::regfilemux_sel_t regfilemux_sel_in,
    output logic [4:0] rs1_out,
    output logic [4:0] rs2_out,
    output logic [4:0] rd_out,
    output logic load_regfile_out,
    output regfilemux::regfilemux_sel_t regfilemux_sel_out
);


    register #(
        .width(5)
    )
    rs1_reg(
        .clk(clk), 
        .rst(rst), 
        .load(load), 
        .in(rs1_in), 
        .out(rs1_out)
    );

    register #(
        .width(5)
    )
    rs2_reg(
        .clk(clk), 
        .rst(rst), 
        .load(load), 
        .in(rs2_in), 
        .out(rs2_out)
    );

    register #(
        .width(5)
    )
    rd_reg(
        .clk(clk), 
        .rst(rst), 
        .load(load), 
        .in(rd_in), 
        .out(rd_out)
    );

    register #(
        .width(1)
    )
    loadregfile_reg(
        .clk(clk), 
        .rst(rst), 
        .load(load), 
        .in(load_regfile_in), 
        .out(load_regfile_out)
    );

    regfilemux_reg regfilemux_reg(
        .clk(clk), 
        .rst(rst), 
        .load(load), 
        .regfilemux_sel_in(regfilemux_sel_in), 
        .regfilemux_sel_out(regfilemux_sel_out)
    );

endmodule

module pcmux_reg
(
    input clk,
    input rst,
    input load,
    input pcmux::pcmux_sel_t pcmux_sel_in,
    output pcmux::pcmux_sel_t pcmux_sel_out
);
    pcmux::pcmux_sel_t data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= pcmux::pc_plus4;
        else if (load)
            data <= pcmux_sel_in;
    end

    assign pcmux_sel_out = data;

endmodule


module alumux1_reg
(
    input clk,
    input rst,
    input load,
    input alumux::alumux1_sel_t alumux1_sel_in,
    output alumux::alumux1_sel_t alumux1_sel_out
);
    alumux::alumux1_sel_t data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= alumux::rs1_out;
        else if (load)
            data <= alumux1_sel_in;
    end

    assign alumux1_sel_out = data;

endmodule



module alumux2_reg
(
    input clk,
    input rst,
    input load,
    input alumux::alumux2_sel_t alumux2_sel_in,
    output alumux::alumux2_sel_t alumux2_sel_out
);
    alumux::alumux2_sel_t data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= alumux::i_imm;
        else if (load)
            data <= alumux2_sel_in;
    end

    assign alumux2_sel_out = data;
endmodule


module regfilemux_reg
(
    input clk,
    input rst,
    input load,
    input regfilemux::regfilemux_sel_t regfilemux_sel_in,
    output regfilemux::regfilemux_sel_t regfilemux_sel_out
);

    regfilemux::regfilemux_sel_t data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= regfilemux::alu_out;
        else if (load)
            data <= regfilemux_sel_in;
    end

    assign regfilemux_sel_out = data;
endmodule


module marmux_sel_reg
(
    input clk,
    input rst,
    input load,
    input marmux::marmux_sel_t marmux_sel_in,
    output marmux::marmux_sel_t marmux_sel_out
);

    marmux::marmux_sel_t data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= marmux::pc_out;
        else if (load)
            data <= marmux_sel_in;
    end

    assign marmux_sel_out = data;
endmodule


module cmpmux_sel_reg
(
    input clk,
    input rst,
    input load,
    input cmpmux::cmpmux_sel_t cmpmux_sel_in,
    output cmpmux::cmpmux_sel_t cmpmux_sel_out
);

    cmpmux::cmpmux_sel_t data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= cmpmux::rs2_out;
        else if (load)
            data <= cmpmux_sel_in;
    end

    assign cmpmux_sel_out = data;
endmodule





module aluop_reg
(
    input clk,
    input rst,
    input load,
    input alu_ops aluop_in,
    output alu_ops aluop_out
);

    alu_ops data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= alu_add;
        else if (load)
            data <= aluop_in;
    end

    assign aluop_out = data;
endmodule



module cmpop_reg
(
    input clk,
    input rst,
    input load,
    input cmp_ops cmpop_in,
    output cmp_ops cmpop_out
);

    cmp_ops data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= beq;
        else if (load)
            data <= cmpop_in;
    end

    assign cmpop_out = data;
endmodule



