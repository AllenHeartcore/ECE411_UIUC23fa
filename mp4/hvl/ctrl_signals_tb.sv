import "DPI-C" function string getenv(input string env_name);

module ctrl_signals_tb;

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

    logic imem_read, dmem_read, dmem_write;

    // ctrl_word -> datapath
    pcmux::pcmux_sel_t pcmux_sel_in;
    pcmux::pcmux_sel_t pcmux_sel;
    pcmux::pcmux_sel_t pcmux_sel_ex;
    alumux::alumux1_sel_t alumux1_sel_in;
    alumux::alumux1_sel_t alumux1_sel;
    alumux::alumux1_sel_t alumux1_sel_ex;
    alumux::alumux2_sel_t alumux2_sel_in;
    alumux::alumux2_sel_t alumux2_sel;
    alumux::alumux2_sel_t alumux2_sel_ex;
    regfilemux::regfilemux_sel_t regfilemux_sel_in;
    regfilemux::regfilemux_sel_t regfilemux_sel;
    regfilemux::regfilemux_sel_t regfilemux_sel_ex;
    regfilemux::regfilemux_sel_t regfilemux_sel_mem;
    regfilemux::regfilemux_sel_t regfilemux_sel_wb;
    marmux::marmux_sel_t marmux_sel_in;
    marmux::marmux_sel_t marmux_sel;
    marmux::marmux_sel_t marmux_sel_ex;
    marmux::marmux_sel_t marmux_sel_mem;
    cmpmux::cmpmux_sel_t cmpmux_sel_in;
    cmpmux::cmpmux_sel_t cmpmux_sel;
    cmpmux::cmpmux_sel_t cmpmux_sel_ex;
    hazard_ctrl_pkg::hazard_ctrl_t hazard_ctrl;
    alu_ops aluop;
    alu_ops aluop_ex;
    cmp_ops cmpop;
    cmp_ops cmpop_ex;
    logic load_ir;
    logic load_regfile;
    logic load_regfile_ex;
    logic load_regfile_mem;
    logic load_regfile_wb;
    logic load_mar;
    logic load_mdr;
    logic load_data_out;
    logic is_branch;
    logic is_branch_ex;

    logic load_ex;
    logic load_mem;
    logic load_wb;
    logic [4:0] rs1_in;
    logic [4:0] rs1;
    logic [4:0] rs1_ex;
    logic [4:0] rs1_mem;
    logic [4:0] rs1_wb;
    logic [4:0] rs2_in;
    logic [4:0] rs2;
    logic [4:0] rs2_ex;
    logic [4:0] rs2_mem;
    logic [4:0] rs2_wb;
    logic [4:0] rd_in;
    logic [4:0] rd;
    logic [4:0] rd_ex;
    logic [4:0] rd_mem;
    logic [4:0] rd_wb;

    assign load_ex = '1;
    assign load_mem = '1;
    assign load_wb = '1;



    // datapath -> ctrl_word
    rv32i_opcode opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic br_en;
    logic [1:0] byte_in_word;

    ctrl_word ctrl_word(.*, .rs1_out(rs1), .rs2_out(rs2), .rd_out(rd));
    
    CtrlEx ctrl_ex(
        .clk(clk),
        .rst(rst),
        .load(load_ex),
        .aluop_in(aluop),
        .cmpop_in(cmpop),
        .alumux1_sel_in(alumux1_sel),
        .alumux2_sel_in(alumux2_sel),
        .pcmux_sel_in(pcmux_sel),
        .is_branch_in(is_branch),
        .pcmux_sel_out(pcmux_sel_ex),
        .is_branch_out(is_branch_ex),
        .aluop_out(aluop_ex),
        .cmpop_out(cmpop_ex),
        .alumux1_sel_out(alumux1_sel_ex),
        .alumux2_sel_out(alumux2_sel_ex)
    );



    CtrlMem ctrlmem_ex(
        .clk(clk),
        .rst(rst),
        .load(load_ex),
        .marmux_sel_in(marmux_sel),
        .marmux_sel_out(marmux_sel_ex)
    );

    CtrlMem ctrlmem_mem(
        .clk(clk),
        .rst(rst),
        .load(load_mem),
        .marmux_sel_in(marmux_sel_ex),
        .marmux_sel_out(marmux_sel_mem)
    );


    CtrlWB ctrlwb_ex(
        .clk(clk),
        .rst(rst),
        .load(load_ex),
        .rs1_in(rs1),
        .rs2_in(rs2),
        .rd_in(rd),
        .load_regfile_in(load_regfile),
        .regfilemux_sel_in(regfilemux_sel),
        .rs1_out(rs1_ex),
        .rs2_out(rs2_ex),
        .rd_out(rd_ex),
        .load_regfile_out(load_regfile_ex),
        .regfilemux_sel_out(regfilemux_sel_ex)
    );

    CtrlWB ctrlwb_mem(
        .clk(clk),
        .rst(rst),
        .load(load_mem),
        .rs1_in(rs1_ex),
        .rs2_in(rs2_ex),
        .rd_in(rd_ex),
        .load_regfile_in(load_regfile_ex),
        .regfilemux_sel_in(regfilemux_sel_ex),
        .rs1_out(rs1_mem),
        .rs2_out(rs2_mem),
        .rd_out(rd_mem),
        .load_regfile_out(load_regfile_mem),
        .regfilemux_sel_out(regfilemux_sel_mem)
    );


    CtrlWB ctrlwb_wb(
        .clk(clk),
        .rst(rst),
        .load(load_wb),
        .rs1_in(rs1_mem),
        .rs2_in(rs2_mem),
        .rd_in(rd_mem),
        .load_regfile_in(load_regfile_mem),
        .regfilemux_sel_in(regfilemux_sel_mem),
        .rs1_out(rs1_wb),
        .rs2_out(rs2_wb),
        .rd_out(rd_wb),
        .load_regfile_out(load_regfile_wb),
        .regfilemux_sel_out(regfilemux_sel_wb)
    );

    task test_propagation();
        opcode <= op_reg;
        funct3 <= slt;
        funct7 <= '0;
        br_en <= '1;
        rs1_in <= 5'b00100;
        rs2_in <= 5'b00010;
        rd_in <= 5'b00001;
        @(posedge clk);
        assert(opcode == op_reg) else $error("TB Error: opcode != op_reg");
        assert(cmpmux_sel == cmpmux::rs2_out) else $error("TB Error: cmpmux_sel != rs2_out");
        assert(load_regfile == '1) else $error("TB Error: load_regfile != '1");


        opcode <= op_reg;
        funct3 <= aand;
        funct7 <= '0;
        br_en <= 'x;
        @(posedge clk);
        assert(alumux1_sel == alumux::rs1_out) else $error("TB Error: alumux1_sel != rs1_out");
        assert(alumux2_sel == alumux::rs2_out) else $error("TB Error: alumux2_sel != rs2_out");
        assert(aluop == alu_and) else $error("TB Error: aluop != alu_and");
        assert(load_regfile == '1) else $error("TB Error: load_regfile != '1");


        opcode <= op_reg;
        funct3 <= add;
        funct7 <= 7'b0100000;
        br_en <= 'x;
        @(posedge clk);
        assert(alumux1_sel == alumux::rs1_out) else $error("TB Error: alumux1_sel != rs1_out");
        assert(alumux2_sel == alumux::rs2_out) else $error("TB Error: alumux2_sel != rs2_out");
        assert(aluop == alu_sub) else $error("TB Error: aluop != alu_sub");
        assert(load_regfile == '1) else $error("TB Error: load_regfile != '1");

        @(posedge clk);
        // currently, the first control word should be in wb.
        assert(rs1_wb == 5'b00100) else $error("TB Error: rs1 propagation error with value %d", rs1_wb);
        assert(rs2_wb == 5'b00010) else $error("TB Error: rs2 propagation error with value %d", rs2_wb);
        assert(rd_wb == 5'b00001) else $error("TB Error: rd propagation error with value %d", rd_wb);
        assert(load_regfile_wb == '1) else $error("TB Error: load_regfile propagation error");


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
        
        test_propagation();

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
