module branch_predictor
import rv32i_types::*;
(
    input logic clk,
    input logic rst,
    input logic [31:0] predict_pc,
    input logic [31:0] update_pc,
    input logic branch_valid,
    input logic jump_valid,
    input logic branch_taken,
    input logic [31:0] ir,
    input logic [31:0] target_pc,
    output logic [31:0] predicted_pc
);

    logic [31:0] branch_target_pc;
    logic [31:0] jalr_target_pc;
    logic [31:0] jal_target_pc;
    logic prediction;
    logic target_valid;
    rv32i_opcode opcode;
    rv32i_word b_imm;
    rv32i_word j_imm;
    btb branch_target_buffer (.clk, .rst,
        .predict_pc         (predict_pc),                     // from pc value of IF stage
        .update_pc          (update_pc),                        // from pc value of EX stage
        .valid              (jump_valid),                          // branch, jar, jalr of EX stage
        .target_pc          (target_pc),                     // target address of EX stage
        .predicted_pc       (jalr_target_pc),                     // predicted target pc in IF stage
        .prediction         (target_valid)                      // signal that judge whether the predicted target pc is valid
    );

    local_branch_predictor local_branch_predictor (.clk, .rst,
        .update_branch_pc   (update_pc),                     // from pc value of EX stage
        .predict_branch_pc  (predict_pc),                     // predictd pc value of IF stage
        .valid              (branch_valid),                     // branch, jar, jalr of EX stage
        .actual_branch_taken(branch_taken),                     // branch, jar, jalr of EX stage
        .prediction         (prediction)                      // signal that predict whether we should take branch for the pc value of IF stage
    );

    // global_branch_predictor global_branch_predictor (
    //     .clk                (clk),
    //     .rst                (rst),
    //     .valid              (branch_valid),
    //     .actual_branch_taken(branch_taken),
    //     .prediction         (prediction)
    // );


    // gshare_branch_predictor gshare_branch_predictor (
    //     .clk                (clk),
    //     .rst                (rst),
    //     .update_valid              (branch_valid),
    //     .actual_branch_taken(branch_taken),
    //     .update_pc(update_pc),
    //     .predict_pc(predict_pc),
    //     .prediction         (prediction)
    // );


    assign opcode = rv32i_opcode'(predict_pc[6:0]);
    assign b_imm = {{20{ir[31]}}, ir[7], ir[30:25], ir[11:8], 1'b0};
    assign j_imm = {{12{ir[31]}}, ir[19:12], ir[20], ir[30:21], 1'b0};
    assign jal_target_pc = predict_pc + j_imm;
    assign branch_target_pc = predict_pc + b_imm;

    always_comb begin
        if ((opcode == op_br) && (prediction == 1)) begin
            predicted_pc = branch_target_pc;
        end
        else if (opcode == op_jalr) begin
            predicted_pc = jalr_target_pc;
        end
        else if (opcode == op_jal) begin
            predicted_pc = jal_target_pc;
        end
        else begin
            predicted_pc = predict_pc + 4;
        end
    end


endmodule

module branch_predictor_branch_only
import rv32i_types::*;
(
    input logic clk,
    input logic rst,
    input logic [31:0] predict_pc,
    input logic [31:0] update_pc,
    input logic valid,
    input logic branch_taken,
    input logic [31:0] ir,
    output logic [31:0] predicted_pc
);

    logic [31:0] branch_target_pc;
    logic [31:0] jalr_target_pc;
    logic [31:0] jal_target_pc;
    logic prediction;
    rv32i_opcode opcode;
    rv32i_word b_imm;
    rv32i_word j_imm;


    // gshare_branch_predictor gshare_branch_predictor (
    //     .clk                (clk),
    //     .rst                (rst),
    //     .update_valid              (valid),
    //     .actual_branch_taken(branch_taken),
    //     .update_pc(update_pc),
    //     .predict_pc(predict_pc),
    //     .prediction         (prediction)
    // );

    // global_branch_predictor global_branch_predictor (
    //     .clk                (clk),
    //     .rst                (rst),
    //     .valid              (valid),
    //     .actual_branch_taken(branch_taken),
    //     .prediction         (prediction)
    // );

    local_branch_predictor_no_bht local_branch_predictor_no_bht(
        .clk                (clk),
        .rst                (rst),
        .update_branch_pc   (update_pc),
        .predict_branch_pc  (predict_pc),
        .valid              (valid),
        .actual_branch_taken(branch_taken),
        .prediction         (prediction)
    );

    assign opcode = rv32i_opcode'(ir[6:0]);
    assign b_imm = {{20{ir[31]}}, ir[7], ir[30:25], ir[11:8], 1'b0};
    assign j_imm = {{12{ir[31]}}, ir[19:12], ir[20], ir[30:21], 1'b0};
    assign jal_target_pc = predict_pc + j_imm;
    assign branch_target_pc = predict_pc + b_imm;

    always_comb begin
        if ((opcode == op_br) && (prediction == 1)) begin
            predicted_pc = branch_target_pc;
        end
        else if (opcode == op_jal) begin
            predicted_pc = jal_target_pc;
        end
        else begin
            predicted_pc = predict_pc + 4;
        end
    end


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