module branch_predictor(
    input logic clk,
    input logic rst,
    input logic [31:0] predict_pc,
    input logic [31:0] update_pc,
    input logic valid,
    input logic branch_taken,
    input logic [31:0] target_pc,
    output logic [31:0] predicted_pc
);

    logic [31:0] predicted_target_pc;
    logic prediction;
    logic target_valid;
    btb_4way branch_target_buffer (.clk, .rst,
        .predict_pc         (predict_pc),                     // from pc value of IF stage
        .update_pc          (update_pc),                        // from pc value of EX stage
        .valid              (valid),                          // branch, jar, jalr of EX stage
        .target_pc          (target_pc),                     // target address of EX stage
        .predicted_pc       (predicted_target_pc),                     // predicted target pc in IF stage
        .prediction         (target_valid)                      // signal that judge whether the predicted target pc is valid
    );

    local_branch_predictor_no_bht local_branch_predictor (.clk, .rst,
        .update_branch_pc   (update_pc),                     // from pc value of EX stage
        .predict_branch_pc  (predict_pc),                     // predictd pc value of IF stage
        .valid              (valid),                     // branch, jar, jalr of EX stage
        .actual_branch_taken(branch_taken),                     // branch, jar, jalr of EX stage
        .prediction         (prediction)                      // signal that predict whether we should take branch for the pc value of IF stage
    );

    assign predicted_pc = (target_valid & prediction) ? predicted_target_pc : (predict_pc + 4);

endmodule


module branch_predictor_baseline(
    input logic clk,
    input logic rst,
    input logic [31:0] predict_pc,
    input logic [31:0] update_pc,
    input logic valid,
    input logic branch_taken,
    input logic [31:0] target_pc,
    output logic [31:0] predicted_pc
);

    logic [31:0] predicted_target_pc;
    logic prediction;
    logic target_valid;
    btb_4way branch_target_buffer (.clk, .rst,
        .predict_pc         (predict_pc),                     // from pc value of IF stage
        .update_pc          (update_pc),                        // from pc value of EX stage
        .valid              (valid),                          // branch, jar, jalr of EX stage
        .target_pc          (target_pc),                     // target address of EX stage
        .predicted_pc       (predicted_target_pc),                     // predicted target pc in IF stage
        .prediction         (target_valid)                      // signal that judge whether the predicted target pc is valid
    );

    local_branch_predictor_no_bht local_branch_predictor (.clk, .rst,
        .update_branch_pc   (update_pc),                     // from pc value of EX stage
        .predict_branch_pc  (predict_pc),                     // predictd pc value of IF stage
        .valid              (valid),                     // branch, jar, jalr of EX stage
        .actual_branch_taken(branch_taken),                     // branch, jar, jalr of EX stage
        .prediction         (prediction)                      // signal that predict whether we should take branch for the pc value of IF stage
    );

    assign predicted_pc = (predict_pc + 4);

endmodule