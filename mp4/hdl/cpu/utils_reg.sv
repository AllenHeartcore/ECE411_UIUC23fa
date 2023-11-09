module register
#(
    parameter width = 32,
    parameter rst_value = {width{1'b0}}
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
    assign opcode = rv32i_opcode'(data[6:0]);

    logic instr_at_wb_uses_rd, instr_at_wb_uses_rs1, instr_at_wb_uses_rs2;

    assign instr_at_wb_uses_rs1 = (
        opcode == op_imm |
        opcode == op_reg |
        opcode == op_load |
        opcode == op_store |
        opcode == op_jalr |
        opcode == op_br
    );
    assign instr_at_wb_uses_rs2 = (
        opcode == op_reg |
        opcode == op_store |
        opcode == op_br
    );

    assign instr_at_wb_uses_rd = (
        opcode == op_lui |
        opcode == op_auipc |
        opcode == op_imm |
        opcode == op_jal |
        opcode == op_jalr |
        opcode == op_reg |
        opcode == op_load
    );


    assign funct3 = data[14:12];
    assign funct7 = data[31:25];
    assign i_imm = {{21{data[31]}}, data[30:20]};
    assign s_imm = {{21{data[31]}}, data[30:25], data[11:7]};
    assign b_imm = {{20{data[31]}}, data[7], data[30:25], data[11:8], 1'b0};
    assign u_imm = {data[31:12], 12'h000};
    assign j_imm = {{12{data[31]}}, data[19:12], data[20], data[30:21], 1'b0};
    assign rs1 = instr_at_wb_uses_rs1 ? data[19:15] : '0;
    assign rs2 = instr_at_wb_uses_rs2 ? data[24:20] : '0;
    assign rd = instr_at_wb_uses_rd ? data[11:7] : '0;

endmodule : ir_translator
