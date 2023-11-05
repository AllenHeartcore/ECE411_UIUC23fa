module hazard_detection_unit
import hazard_detection_pkg::*;
(
    input logic ex_enable, mem_enable, wb_enable,
    input hazard_detection_t ex_dep, mem_dep, wb_dep,
    input hazard_detection_t id_dep,
    output logic no_hazard
);
    logic ex_no_hazard; 
    logic mem_no_hazard; 
    logic wb_no_hazard; 

    assign ex_no_hazard = ((id_dep.rs1 != ex_dep.rd && id_dep.rs2 != ex_dep.rd && id_dep.rd != ex_dep.rd) || (~ex_enable) || ex_dep.rd == 0);
    assign mem_no_hazard = ((id_dep.rs1 != mem_dep.rd && id_dep.rs2 != mem_dep.rd && id_dep.rd != mem_dep.rd) || (~mem_enable) || mem_dep.rd == 0);
    assign wb_no_hazard = ((id_dep.rs1 != wb_dep.rd && id_dep.rs2 != wb_dep.rd && id_dep.rd != wb_dep.rd) || (~wb_enable) || wb_dep.rd == 0);
    
    assign no_hazard = (mem_no_hazard && ex_no_hazard && wb_no_hazard);

endmodule 


module reg_tuple_2_dep
import hazard_detection_pkg::*;
(
    input logic [4:0] rs1, rs2, rd,
    output hazard_detection_t dep
);
    assign dep.rs1 = rs1;
    assign dep.rs2 = rs2;
    assign dep.rd = rd;
    
endmodule