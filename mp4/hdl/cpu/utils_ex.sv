module alu
import rv32i_types::*;
(
    input  alu_ops aluop,
    input  rv32i_word a, b,
    output rv32i_word f
);

    always_comb begin
        unique case (aluop)
            alu_add:  f = a + b;
            alu_sll:  f = a << b[4:0];
            alu_sra:  f = $signed(a) >>> b[4:0];
            alu_sub:  f = a - b;
            alu_xor:  f = a ^ b;
            alu_srl:  f = a >> b[4:0];
            alu_or:   f = a | b;
            alu_and:  f = a & b;
        endcase
    end

endmodule : alu



module cmp
import rv32i_types::*;
(
    input  cmp_ops cmpop,
    input  rv32i_word a, b,
    output logic f
);

    always_comb begin
        unique case (cmpop)
            beq: f = (a == b);
            bne: f = (a != b);
            blt: f = ($signed(a) < $signed(b));
            bge: f = ($signed(a) >= $signed(b));
            bltu: f = (a < b);
            bgeu: f = (a >= b);
            default: f = 0;
        endcase
    end

endmodule : cmp
