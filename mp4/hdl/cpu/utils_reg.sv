import rv32i_types::*;



module register
#(
    parameter rst_value = '0
)(
    input  clk,
    input  rst,
    input  load,
    input  rv32i_word in,
    output rv32i_word out
);

    rv32i_word data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= rst_value;
        else if (load)
            data <= in;
    end

    assign out = data;

endmodule : register



module regfile
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



module ir
(
    input  clk,
    input  rst,
    input  load,
    input  rv32i_word in,
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

    rv32i_word data;

    always_ff @(posedge clk) begin
        if (rst)
            data <= '0;
        else if (load)
            data <= in;
    end

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

endmodule : ir
