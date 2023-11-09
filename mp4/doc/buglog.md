# Pipeline Register
## CP 2 : Forwarding

### BUG 0001 : `id_ex` register isn't updated upon a writeback commit 

Implications :

* `EX` stage won't use the correct operands
* `rvfi monitor` will report error because `rs1`, `rs2` will not be modified in later stages. 

Fix : both at `wb_commit`, and `id_commit`(a.k.a.`hazard_ctrl.load_id_ex`), rs1 and rs2 register will be updated.

* `id_ex_regs_r1` and `id_ex_regs_r2` are added besides pipeline reg to prevent load issues.
* Implication is the r1 and r2 field in `id_ex` stage's pipeline register will be discarded (actually it will be used, but will NOT be propagated). The old field in pipeline reg stores the obsolete value of rs1 and rs2.

```sv
    // haor2 : these 2 registers are for wb commit
    rv32i_word id_ex_reg_r1_i, id_ex_reg_r2_i;
    rv32i_word id_ex_reg_r1_o, id_ex_reg_r2_o;

    logic load_id_ex_r1, load_id_ex_r2;
    logic wb_update_rs1, wb_update_rs2;
    // writeback update rs1
    // when id_commit and wb_commit, we need to use the rs1,rs2 from ID stage
    // otherwise, since instruction is in id_ex reg, we can use the rs1,rs2 from ctrl word for id_ex (ctrlwb_at_ex)
    assign wb_update_rs1 = hazard_ctrl.load_id_ex ? (wb_commit && ctrlwb.rd == rs1) : (wb_commit && ctrlwb.rd == ctrlwb_at_ex.rs1);
    assign wb_update_rs2 = hazard_ctrl.load_id_ex ? (wb_commit && ctrlwb.rd == rs2) : (wb_commit && ctrlwb.rd == ctrlwb_at_ex.rs2);

    assign load_id_ex_r1 = hazard_ctrl.load_id_ex | wb_update_rs1;
    assign load_id_ex_r2 = hazard_ctrl.load_id_ex | wb_update_rs2;

    assign id_ex_reg_r1_i = wb_update_rs1 ? regfilemux_out : id_ex_reg_i.r1;
    assign id_ex_reg_r2_i = wb_update_rs2 ? regfilemux_out : id_ex_reg_i.r2;

    register id_ex_regs_r1(
        .*, .load(load_id_ex_r1),
        .in(id_ex_reg_r1_i), .out(id_ex_reg_r1_o)
    );

    register id_ex_regs_r2(
        .*, .load(load_id_ex_r2),
        .in(id_ex_reg_r2_i), .out(id_ex_reg_r2_o)
    );

```

### BUG 0002 : `no_hazard` logic change

* The old no_hazard reg design is redundant. Register file is removed to a pure comb logic

```sv

assign no_hazard = ~(
        ((instr_at_mem_reads_dmem & instr_at_ex_reads_rs2 & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs2)) 
        || (instr_at_mem_reads_dmem & instr_at_ex_reads_rs1 & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs1))) 
        & ex_mem_valid_o
    );

```

### BUG 0003 : LOAD dependency at mem, incorrect forwarding

* When load instr. is at MEM stage, and add instr. is at EX stage, forwarding will use INPUT of MEM stage, a.k.a. OUTPUT of EX-MEM pipeline register(instead of OUTPUT of MEM-WB pipeline reg) as value of rd to feed to rs1 / rs2. It's apparently incorrect as the output of MEM stage instead of INPUT of MEM stage should be used.

* Fixed by adding `(~instr_at_mem_reads_dmem)`.

```sv

if ((~instr_at_mem_reads_dmem) & instr_at_mem_writes_rd & instr_at_ex_reads_rs1 & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs1))
    fwdmux1_sel = fwdmux::fwd_mem;
else if(instr_at_wb_writes_rd & instr_at_ex_reads_rs1 & (ctrlwb_at_wb.rd  == ctrlwb_at_ex.rs1))
    fwdmux1_sel = fwdmux::fwd_wb;
else
    fwdmux1_sel = fwdmux::no_fwd;

if ((~instr_at_mem_reads_dmem) & instr_at_mem_writes_rd & instr_at_ex_reads_rs2  & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs2))
    fwdmux2_sel = fwdmux::fwd_mem;
else if(instr_at_wb_writes_rd & instr_at_ex_reads_rs2 & (ctrlwb_at_wb.rd  == ctrlwb_at_ex.rs2))
    fwdmux2_sel = fwdmux::fwd_wb;
else
    fwdmux2_sel = fwdmux::no_fwd;

```


### *FATAL* BUG 0004 : ALWAYS COMB DEPENDENCY 

* **HIGH SEVERITY : FATAL BUG**
* Assignment in `always_comb` will be evaluated sequentially, which creates dependency for comb logic.
* Solution is to break `always_comb` so that each logical unit can be evaluted independently.
* Issue has been mitigated without breaking styles : 
    * Simple logic will be converted to `assign`
    * Complex logic (e.x. mux) will be breaked into `always_comb`


### *FATAL* BUG 0005 : forwarding don't care register

* **HIGH SEVERITY : FATAL BUG**
* When instruction does NOT need either of (rs_1, rs_2, rd), corresponding register value MUST be set to 0. 
* Previous buggy method : masking monitor (stupid method, not going to work)
* Correct methodology : setting reg value to 0. This is because forwarding mux select and R1 R2 IR-EX reg update is value-dependent(it doesn't care if the instr. uses it, it just checks the value of rs1_addr, rs2_addr, and rd_addr). Let's say you have an instr. st which doesn't require wb (rd is don't care), you don't want it to be a specific value (like 0x03, if your instruction accidentally has those bits in it). Otherwise you might create dependencies.

### BUG 0006 : R1 R2 ID-EX REG value load condition

* Parent BUG : BUG 0005

* The load is enabled when there is a dependency between wb (rd reg) and rs1 / rs2. However, if wb reg is rd, you don't care, because if they are the same, you don't need to load.
* If you load, there will be ERRORs (think about why...)
* The reason is rd being 0 not only when instruction writes to reg 0, it can also be the case when an instruction doesn't want to write to any register (e.x. store instruction).


