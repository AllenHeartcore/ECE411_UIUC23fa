
module cmp
import rv32i_types::*;
(
    input cmp_ops cmpop,
    input [31:0] a, b,
    output logic [31:0] f
);

always_comb
begin
    unique case (cmpop)
    cmp_eq : f = (a == b);
    cmp_ne : f = (a != b);
    cmp_lt : f = (a < b);
    cmp_ge : f = (a >= b);
    endcase
end

endmodule : cmp
