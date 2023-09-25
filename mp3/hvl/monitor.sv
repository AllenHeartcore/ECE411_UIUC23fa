module monitor
import rv32i_types::*;
(
    mon_itf itf
);

    always @(negedge itf.clk) begin
        if (itf.rst === 1'b0) begin
            if (itf.valid === 1'bx || itf.valid === 1'bz) begin
                $error("RVFI Interface Error: Valid is 1'bx");
                itf.error <= 1'b1;
            end
        end
        if (itf.rst === 1'b0 && itf.valid === 1'b1) begin
            automatic logic x = 1'b0;
            automatic logic [6:0] opcode = itf.inst[6:0];
            x ^= ^itf.order;
            x ^= ^itf.inst;
            x ^= ^itf.pc_rdata;
            x ^= ^itf.pc_wdata;
            x ^= itf.load_regfile;
            if (opcode != op_lui && opcode != op_auipc && opcode != op_jal) begin
                x ^= ^itf.rs1_addr;
                x ^= ^itf.rs1_rdata;
            end
            if (opcode == op_reg || opcode == op_store || opcode == op_br) begin
                x ^= ^itf.rs2_addr;
                x ^= ^itf.rs2_rdata;
            end
            if (opcode != op_store && opcode != op_br) begin
                x ^= ^itf.rd_addr;
                x ^= ^itf.rd_wdata;
            end
            if (opcode == op_load) begin
                x ^= ^itf.mem_addr;
                x ^= ^itf.mem_rmask;
                x ^= ^itf.mem_wmask;
                for (int i = 0; i < 4; i++) begin
                    if (itf.mem_rmask[i]) begin
                        x ^= ^itf.mem_rdata[i*8 +: 8];
                    end
                end
            end
            if (opcode == op_store) begin
                x ^= ^itf.mem_addr;
                x ^= ^itf.mem_rmask;
                x ^= ^itf.mem_wmask;
                for (int i = 0; i < 4; i++) begin
                    if (itf.mem_wmask[i]) begin
                        x ^= ^itf.mem_wdata[i*8 +: 8];
                    end
                end
            end
            if (x === 1'bx) begin
                $error("RVFI Interface Error: Signals contain 'x");
                itf.error <= 1'b1;
            end
        end
    end

    initial itf.halt = 1'b0;
    always @(posedge itf.clk) begin
        if (!itf.rst && itf.valid && itf.pc_rdata == itf.pc_wdata) begin
            itf.halt <= 1'b1;
        end
    end

    bit [63:0] order;
    initial order = 64'd0;
    always @(posedge itf.clk) begin
        if (itf.valid) begin
            order <= order + 1;
        end
    end
    assign itf.order = order;

    bit [15:0] errcode;
    always @(negedge itf.clk) begin
        if (errcode != 0) begin
            $error("RVFI Error");
            itf.error <= 1'b1;
        end
    end

    riscv_formal_monitor_rv32imc monitor(
        .clock              (itf.clk),
        .reset              (itf.rst),
        .rvfi_valid         (itf.valid),
        .rvfi_order         (itf.order),
        .rvfi_insn          (itf.inst),
        .rvfi_trap          (1'b0),
        .rvfi_halt          (itf.halt),
        .rvfi_intr          (1'b0),
        .rvfi_mode          (2'b00),
        .rvfi_rs1_addr      (itf.rs1_addr),
        .rvfi_rs2_addr      (itf.rs2_addr),
        .rvfi_rs1_rdata     (itf.rs1_addr ? itf.rs1_rdata : 32'd0),
        .rvfi_rs2_rdata     (itf.rs2_addr ? itf.rs2_rdata : 32'd0),
        .rvfi_rd_addr       (itf.load_regfile ? itf.rd_addr : 5'd0),
        .rvfi_rd_wdata      (itf.load_regfile && itf.rd_addr ? itf.rd_wdata : 5'd0),
        .rvfi_pc_rdata      (itf.pc_rdata),
        .rvfi_pc_wdata      (itf.pc_wdata),
        .rvfi_mem_addr      ({itf.mem_addr[31:2], 2'b0}),
        .rvfi_mem_rmask     (itf.mem_rmask),
        .rvfi_mem_wmask     (itf.mem_wmask),
        .rvfi_mem_rdata     (itf.mem_rdata),
        .rvfi_mem_wdata     (itf.mem_wdata),
        .rvfi_mem_extamo    (1'b0),
        .errcode            (errcode)
    );

    int fd;
    initial fd = $fopen("./spike.log", "w");
    final $fclose(fd);

    logic           spike_print_clk      ;
    logic			spike_print_valid    ;
    logic	[31:0]	spike_print_pc       ;
    logic	[31:0]	spike_print_ir       ;
    logic			spike_print_regf_we  ;
    logic	[4:0]	spike_print_rd_s     ;
    logic	[31:0]	spike_print_rd_v     ;
    logic	[3:0]	spike_print_rmask    ;
    logic	[3:0]	spike_print_wmask    ;
    logic	[31:0]	spike_print_dm_addr  ;
    logic	[31:0]	spike_print_dm_wdata ;

    assign          spike_print_clk      = itf.clk;
    assign          spike_print_valid    = itf.valid;
    assign          spike_print_pc       = itf.pc_rdata;
    assign          spike_print_ir       = itf.inst;
    assign          spike_print_regf_we  = itf.load_regfile;
    assign          spike_print_rd_s     = itf.rd_addr;
    assign          spike_print_rd_v     = itf.rd_wdata;
    assign          spike_print_rmask    = itf.mem_rmask;
    assign          spike_print_wmask    = itf.mem_wmask;
    assign          spike_print_dm_addr  = {itf.mem_addr[31:2], 2'b0};
    assign          spike_print_dm_wdata = itf.mem_wdata;

    always @ (negedge spike_print_clk) begin
        if(spike_print_valid) begin
            if (itf.order % 1000 == 0) begin
                $display("dut commit No.%d, rd_s: x%02d, rd: 0x%h", itf.order, spike_print_rd_s, spike_print_rd_v);
            end
            $fwrite(fd, "core   0: 3 0x%h (0x%h)", spike_print_pc, spike_print_ir);
            if (spike_print_regf_we == 1'b1 && spike_print_rd_s != 0) begin
                if (spike_print_rd_s < 10)
                    $fwrite(fd, " x%0d  ", spike_print_rd_s);
                else
                    $fwrite(fd, " x%0d ", spike_print_rd_s);
                $fwrite(fd, "0x%h", spike_print_rd_v);
            end
            if (spike_print_rmask != 0) begin
                automatic int first_1 = 0;
                for(int i = 0; i < 4; i++) begin
                    if(spike_print_rmask[i]) begin
                        first_1 = i;
                        break;
                    end
                end
                $fwrite(fd, " mem 0x%h", spike_print_dm_addr + first_1);
            end
            if (spike_print_wmask != 0) begin
                automatic int amount_o_1 = 0;
                automatic int first_1 = 0;
                for(int i = 0; i < 4; i++) begin
                    if(spike_print_wmask[i]) begin
                        amount_o_1 += 1;
                    end
                end
                for(int i = 0; i < 4; i++) begin
                    if(spike_print_wmask[i]) begin
                        first_1 = i;
                        break;
                    end
                end
                $fwrite(fd, " mem 0x%h", spike_print_dm_addr + first_1);
                case (amount_o_1)
                    1: begin
                        automatic logic[7:0] wdata_byte = spike_print_dm_wdata[8*first_1 +: 8];
                        $fwrite(fd, " 0x%h", wdata_byte);
                    end
                    2: begin
                        automatic logic[15:0] wdata_half = spike_print_dm_wdata[8*first_1 +: 16];
                        $fwrite(fd, " 0x%h", wdata_half);
                    end
                    4:
                        $fwrite(fd, " 0x%h", spike_print_dm_wdata);
                endcase
            end
            $fwrite(fd, "\n");
        end
    end

endmodule
