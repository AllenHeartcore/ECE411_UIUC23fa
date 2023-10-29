module register
#(
    parameter rst_value = '0,
    parameter width = 32
)(
    input  clk,
    input  rst,
    input  load,
    input  logic [width-1:0] in,
    output logic [width-1:0] out
);

    logic [width-1:0] data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= rst_value;
        else if (load)
            data <= in;
    end

    assign out = data;

endmodule : register



module regfile
import rv32i_types::*;
(
    input  clk,
    input  rst,
    input  load,
    input  rv32i_word in,
    input  [4:0] rs1, rs2, rd,
    output rv32i_word rs1_out, rs2_out
);

    rv32i_word data [32];

    always_ff @(posedge clk) begin
        if (rst)
            for (int i = 0; i < 32; i++)
                data[i] <= '0;
        else if (load && rd)
            data[rd] <= in;
    end

    always_comb begin
        rs1_out = rs1 ? data[rs1] : 0;
        rs2_out = rs2 ? data[rs2] : 0;
    end

endmodule : regfile



module pipeline_reg
import pipeline_reg_pkg::*;
(
    input  clk,
    input  rst,
    input  load,
    input  ex_mem_reg_t in,
    output ex_mem_reg_t out
);

    register reg_pc (.*, .in(in.pc),  .out(out.pc));
    register reg_ir (.*, .in(in.ir),  .out(out.ir));
    register reg_r1 (.*, .in(in.r1),  .out(out.r1));
    register reg_r2 (.*, .in(in.r2),  .out(out.r2));
    register reg_mdr(.*, .in(in.mdr), .out(out.mdr));
    register reg_uim(.*, .in(in.uim), .out(out.uim));
    register reg_alu(.*, .in(in.alu), .out(out.alu));
    register #(width(1)) reg_cmp(.*, .in(in.cmp), .out(out.cmp));

endmodule



module ir_translator
import rv32i_types::*;
(
    input  rv32i_word data,
    output [2:0] funct3,
    output [6:0] funct7,
    output rv32i_opcode opcode,
    output rv32i_word i_imm,
    output rv32i_word s_imm,
    output rv32i_word b_imm,
    output rv32i_word u_imm,
    output rv32i_word j_imm,
    output [4:0] rs1,
    output [4:0] rs2,
    output [4:0] rd
);

    assign funct3 = data[14:12];
    assign funct7 = data[31:25];
    assign opcode = rv32i_opcode'(data[6:0]);
    assign i_imm = {{21{data[31]}}, data[30:20]};
    assign s_imm = {{21{data[31]}}, data[30:25], data[11:7]};
    assign b_imm = {{20{data[31]}}, data[7], data[30:25], data[11:8], 1'b0};
    assign u_imm = {data[31:12], 12'h000};
    assign j_imm = {{12{data[31]}}, data[19:12], data[20], data[30:21], 1'b0};
    assign rs1 = data[19:15];
    assign rs2 = data[24:20];
    assign rd = data[11:7];

endmodule : ir_translator
