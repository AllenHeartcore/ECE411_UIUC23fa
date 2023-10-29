import "DPI-C" function string getenv(input string env_name);

module ctrl_word_tb;

    timeunit 1ps;
    timeprecision 1ps;

    int clock_period_ps = getenv("CLOCK_PERIOD_PS").atoi();

    bit clk;
    initial clk = 1'b1;
    always #(clock_period_ps) clk = ~clk;

    default clocking cb @(posedge clk); 

    endclocking

    bit rst;

    int timeout = 10000000; // in cycles, change according to your needs  
    pcmux::pcmux_sel_t pcmux_sel;
    alumux::alumux1_sel_t alumux1_sel;
    alumux::alumux2_sel_t alumux2_sel;
    regfilemux::regfilemux_sel_t regfilemux_sel;
    marmux::marmux_sel_t marmux_sel;
    cmpmux::cmpmux_sel_t cmpmux_sel;
    alu_ops aluop;
    cmp_ops cmpop;
    logic load_regfile;
    logic is_branch;

    // from datapath
    rv32i_opcode opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic br_en;
    logic [4:0] rd_in;
    logic [4:0] rs1_in;
    logic [4:0] rs2_in;

    // to memory
    logic imem_read, dmem_read, dmem_write;
    logic [4:0] rd_out;
    logic [4:0] rs1_out;
    logic [4:0] rs2_out;

    ctrl_word dut(.clk(clk), .rst(rst), .*);

    task test_arith();
        opcode <= op_reg;
        funct3 <= slt;
        funct7 <= '0;
        br_en <= '1;
        @(posedge clk);

        @(posedge clk);
        assert(cmpmux_sel == cmpmux::rs2_out) else $error("TB Error: cmpmux_sel != rs2_out");

        opcode <= op_reg;
        funct3 <= aand;
        funct7 <= '0;
        br_en <= 'x;
        @(posedge clk);

        @(posedge clk);
        assert(alumux1_sel == alumux::rs1_out) else $error("TB Error: alumux1_sel != rs1_out");
        assert(alumux2_sel == alumux::rs2_out) else $error("TB Error: alumux2_sel != rs2_out");
        assert(aluop == alu_and) else $error("TB Error: aluop != alu_and");

        opcode <= op_reg;
        funct3 <= add;
        funct7 <= 7'b0100000;
        br_en <= 'x;
        @(posedge clk);

        @(posedge clk);
        assert(alumux1_sel == alumux::rs1_out) else $error("TB Error: alumux1_sel != rs1_out");
        assert(alumux2_sel == alumux::rs2_out) else $error("TB Error: alumux2_sel != rs2_out");
        assert(aluop == alu_sub) else $error("TB Error: aluop != alu_sub");

        
    endtask

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst <= 1'b0;

        $display("TB Info: Starting simulation");
        $display("TB Info: Clock period is %d ps", clock_period_ps);
        $display("TB Info: Simulation started");
        
        test_arith();

        $finish;
    end

    always @(posedge clk) begin
        if (timeout == 0) begin
            $error("TB Error: Timed out");
            $finish;
        end
        timeout <= timeout - 1;
    end

endmodule
