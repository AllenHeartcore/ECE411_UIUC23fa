# PROGRESS Report for CP3


## Devision of Labor

Ziyuan Chen: Fully Parameterized Cache, Multi-level Cache

Haoran Ren: Next-line Prefetcher

Zhirong Chen: Local Branch Predictor, Global Branch Predictor, Branch Target Buffer, 4-way associate Branch Target Buffer  

## Current Step

* Pipeline processor has been completed w/ static branch prediction
* Multi-level cache has been completed.
* Parameterizable Cache is being worked on.
* Branch Predictor is being worked on, along with BTB as well as RAS.
* Prefetcher is being worked on.

## PAST STEP : BRANCH & JUMP

### What's needed ? 

* PCMUX outside EX MEM pipeline register
    * load PCMUX if
        * EX enabled and EX commit : We load pcmux val in EX stage
        * EX not enabled and IF commit : We load `pcplus4`

* Disable IF, ID, EX stages when there is a branch committed to PCMUX reg.
    * Problem ?
        * When IF, EX committed at the same time, the instruction that's going to propagate to ID is wrong(current PC + 4)
        * How to fix?
            * Do not enable IF during the next RDY -> BUSY transition
            * by using IF_mask register to mask the if_enable signal

### Steps

1. Remove legacy PC MUX in pipeline register [Done]

2. Create new PCMUX reg, wire the input and output [Done]

3. Wire load PCMUX signal, export `ex_enable` from `hazard_ctrl.sv`  [Done]
 
4. Add IF_mask reg, wire the logic [Done]

5. Mask if_enable **transition** if IF_mask is asserted  [Done]


## CURRENT STEP : Next-line Prefetcher

* How can next-line prefetcher improve performance of a processor?
    * If dmem is idle, if imem is idle, we use this time to prefetch the next cacheline.
    * We need arbiter to give a status feedback `is_idle`

* Then how can we pre-empt the memory?
    * Modify arbiter

* How do we know what cache-line to pre-fetch?
    * Record last read imem cacheline

### Steps
1. Know the arbiter implementation (how to preempt the memory)

2. Record the last read imem cacheline
    * Can incorporate the branch taken signal
    * If the branch taken signal is high, we can skip the current prefetch.
    * So we need a storage unit checking if between memory requests, if there is a branch taken signal. 

3. Modify the arbiter to pre-empt the memory
    1. First, we must **NOT expose the cacheline read to the CPU**,
        hence the `ipmem_resp` must not be asserted upon a pre-fetch.
    2. Second, we must modify the state transition
         * the prefetch state can be visited when the state machine is idle and there is no memory request at the moment

**Test Strategy**

Testing a next-line prefetcher in a processor involves verifying its ability to improve performance by pre-fetching data, ensuring proper integration with the memory system, and confirming that it behaves correctly under various scenarios. Here’s a concise testing strategy:


**Prefetch Functionality Tests**:
- **Basic Prefetch Operation**: Verify that the prefetcher correctly fetches the next cache line when the data memory (`dmem`) and instruction memory (`imem`) are idle.
- **Integration with Arbiter**: Test the interaction between the prefetcher and the arbiter to ensure the prefetcher can preempt memory correctly and the arbiter provides accurate `is_idle` status.

**Branch Prediction Integration:**
- **Branch Taken Signal Handling**: Test how the prefetcher responds to the branch taken signal. Ensure it skips prefetching appropriately when the signal is high.
- **Record and Respond to Cache Lines**: Verify the prefetcher correctly records the last read `imem` cache line and uses this information for subsequent prefetch decisions.

**State Machine and Control Logic Verification:**
- **State Transition Testing**: Confirm that the state machine transitions correctly, especially the introduction of the prefetch state. Ensure this state is only entered when appropriate (e.g., when the system is idle and there’s no pending memory request).
- **Response Suppression**: Verify that cache line reads by the prefetcher are not exposed to the CPU (`ipmem_resp` should not be asserted for prefetch operations).

**Prefetcher Called Counts:**


## CURRENT STEP : Branch Predictor

### Local Branch Predictor

* How to implement a local branch predictor?
    * We need a pattern history table (PHT) to record the branch history
    * We need a specific function to index the PHT. For local branch predictor, we use the PC to index the PHT, and the PHT will give us the prediction result.
    * We need a finite state machine to update the PHT

**Test Strategy**: See details in hvl

1. **Initialization and Reset**:
   - Start with initializing all inputs to default values.
   - Assert and deassert the reset signal to ensure the branch predictor is in its initial state.

2. **Branch Taken Test**:
   - Simulate a branch taken scenario by setting `actual_branch_taken` to `1`.
   - Update the branch predictor with a specific PC value (`update_branch_pc`).
   - Predict the branch behavior for the same PC and check if the prediction is `1` (branch taken).
   - Verify the state transition of the predictor using assertions.

3. **Branch Not Taken Test**:
   - Similar to the branch taken test, but this time simulate a branch not taken scenario by setting `actual_branch_taken` to `0`.
   - Update the predictor and check if the prediction is `0` (branch not taken).
   - Again, use assertions to verify the state transition.

4. **Waveform Analysis**:
   - Use the generated FSDB file to analyze the waveforms in a simulation tool. This helps in visualizing the signal transitions and timing relationships.

5. **Monitoring and Logging**:
   - Continuously monitor and log the status of key signals (`valid`, `actual_branch_taken`, `prediction`, `expected_state`) to debug and verify the behavior of the predictor.




![local branch predictor](./figures/local_branch_predictor.png)

### Global Branch Predictor

* How to implement a global branch predictor?
    * We need a branch history register (BHR) to record the branch history
    * We need a specific function to index the PHT. For global branch predictor, we use the BHR to index the PHT, and the PHT will give us the prediction result.
    * We need a finite state machine to update the PHT

For testing a global branch predictor in a SystemVerilog environment, the strategy should be focused on thoroughly evaluating its prediction accuracy and response under various scenarios. Here's a detailed testing strategy:

**Initialization and Baseline Setup:**
- **Initialize Test Environment**: Start by initializing all inputs and control signals. Ensure that the global branch predictor (GBP) is in a known state before beginning tests.
- **Reset Sequence**: Apply a reset to the GBP to verify it returns to its default state correctly. This step is crucial for ensuring consistent test conditions.

**Test Different Branch Scenarios:**
- **Branch Taken Tests**: Simulate scenarios where branches are predominantly taken. Vary the patterns of branches (like consecutive takens, alternating, etc.) to evaluate how quickly and accurately the GBP adapts its prediction.
- **Branch Not Taken Tests**: Similarly, simulate scenarios with mostly not-taken branches, again with varying patterns.
- **Mixed Branch Behavior**: Test with a mix of taken and not-taken branches in unpredictable patterns to evaluate the GBP's performance under realistic and complex scenarios.

**Evaluate Learning and Adaptation:**
- **Testing Learning Ability**: Evaluate how well the GBP learns from historical branch outcomes. This can be done by repeating certain branch patterns and observing if the prediction accuracy improves over time.
- **Adaptation to Changing Patterns**: Test the GBP's ability to adapt to changes in branch behavior. For example, after a long sequence of taken branches, switch to not-taken branches and assess how quickly the GBP adjusts its predictions.

**Stress Testing:**
- **Rapid Changes in Branch Directions**: Apply rapidly changing branch directions to test the GBP's responsiveness and stability.
- **High-Frequency Branch Updates**: Test with branch updates at a high frequency to assess the GBP's performance under pressure and its ability to keep up with quick changes.



![global branch predictor](./figures/global_branch_predictor.png)


### Branch Target Buffer

* How to implement a branch target buffer?
    * We need a branch target buffer (BTB) to record the branch target
    * We need a specific function to index the BTB
    * We need a finite state machine to update the BTB
    * For the 4-way associate BTB, we need a specific function to select the BTB way

For branch target buffer, we use the PC to index the BTB, and the BTB will give us the branch target.

![branch target buffer](./figures/branch_target_buffer.png)


### Top Predictor

Only when the predictor predicts the branch is taken, and branch target buffer is valid, we can use the predictor to predict the branch target.

**Misprediction Times:** 

**Total Branches:**

## CURRENT STEP : Parameterized and Multi-level Cache

### Multi-level Cache

A multilevel cache is a hierarchical caching system used in modern computer architectures to improve data access times and overall system performance. It typically consists of several layers of cache, each varying in size, speed, and proximity to the CPU. 

**Concept and Purpose**
- **Improved Performance**: The primary objective is to reduce the average time to access data by bridging the speed gap between the fast CPU and the slower main memory.

**Cache Levels**
1. **L1 Cache (Level 1)**: 
   - Located on the CPU chip, offering the fastest access speeds.
   - Typically the smallest in size, ranging from a few kilobytes to several tens of kilobytes.
   - Often split into separate instruction and data caches (L1i and L1d).

2. **L2 Cache (Level 2)**:
   - Can be on the CPU chip (integrated) or on a separate chip close to the CPU.
   - Larger than L1, usually ranging from tens to hundreds of kilobytes.
   - Serves as an intermediate store between the ultra-fast L1 cache and the larger L3 cache.



**Operational Mechanism**
- **Data Access**: When the CPU needs to access data, it first checks the L1 cache. If the data is not there (a cache miss), it proceeds to the L2 cache, and so on, until the data is found or it reaches the main memory.


**Impact on System Performance**
- A well-designed multilevel cache significantly reduces data access times and improves the overall speed and efficiency of a computer system. It plays a critical role in achieving the performance levels expected from modern CPUs.

**Testing Strategy**
- **Cache Hit and Miss Tests**: Test the cache hit and miss logic to ensure it correctly identifies cache hits and misses.

- **Cache Replacement Policy Tests**: Test the cache replacement policy to ensure it correctly identifies the cache line to be replaced when a cache miss occurs.

- **Cache Write Policy Tests**: Test the cache write policy to ensure it correctly handles write requests (write-through or write-back).

- **Cache Coherency Tests**: Test the cache coherency logic to ensure it correctly handles read and write requests from the CPU and memory.

- **Cache Size and Associativity Tests**: Test the cache size and associativity to ensure it meets the design requirements.

- **Cache Latency Tests**: Test the cache latency to ensure it meets the design requirements.


![multi-level cache](./figures/multilevel_cache.png)

**Cache Hit**: 

**Cache Miss**:

### Fully Parameterized Cache

A fully parametrized cache is a versatile and adaptable caching mechanism, designed to be highly configurable based on various parameters. This flexibility allows it to be tailored to specific system requirements or application needs. Here's a concise introduction to the concept:

**Key Features**
- **Configurable Parameters**: Parameters such as cache size, block size, associativity, replacement policy, and write policy can be dynamically adjusted.
- **Adaptable Design**: This approach makes the cache suitable for a wide range of applications, from embedded systems to high-performance computing.

**Design and Implementation**
- **Generic Structure**: The cache is designed with a generic architecture, allowing parameters to be set at either compile-time or run-time, depending on the implementation.
- **Modular Approach**: Often implemented in a modular fashion, enabling easy integration into various systems and processors.

**Advantages**
- **Flexibility**: Can be optimized for specific workloads or system architectures.
- **Scalability**: Easily scalable to different sizes and configurations to meet changing performance and power requirements.
- **Reusability**: The parametric design allows for reuse in different system designs, reducing development time and cost.

**Testing Strategy**
- **Cache Size and Associativity Tests**: Test the cache size and associativity to ensure it meets the design requirements.
- **Cache Replacement Policy Tests**: Test the cache replacement policy to ensure it correctly identifies the cache line to be replaced when a cache miss occurs.
- **Cache Write Policy Tests**: Test the cache write policy to ensure it correctly handles write requests (write-through or write-back).
- **Cache Coherency Tests**: Test the cache coherency logic to ensure it correctly handles read and write requests from the CPU and memory.
- **Cache Latency Tests**: Test the cache latency to ensure it meets the design requirements.

**Cache Hit**:

**Cache Miss**:


# Road Map for CP4

## Labor Division

Ziyuan Chen: Fully Parameterized Cache, find the best parameter for the cache

Haoran Ren: Next-line Prefetcher, find the best strategy for prefetching

Zhirong Chen: Local Branch Predictor, Global Branch Predictor, Branch Target Buffer, 4-way associate Branch Target Buffer. Optimize the predictor and BTB. Try to use Tournament Predictor and G-Shore Predictor. 

## Feature List

* Fully Parameterized Cache: 
    * Cache Size
    * Block Size
    * Associativity
    * Replacement Policy
    * Write Policy

* Next-line Prefetcher
    * Prefetch Strategy
    * Prefetch Depth

* Local Branch Predictor
    * Branch History Table Size
    * Branch History Table Index Function
    * Finite State Machine

* Global Branch Predictor
    * Branch History Register Size
    * Branch History Register Index Function
    * Finite State Machine

* Branch Target Buffer  
    * Branch Target Buffer Size
    * Branch Target Buffer Index Function
    * Finite State Machine
    * 4-way associate Branch Target Buffer



# Bug Report for CP3

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


### *FATAL* BUG 0007 : fowarding mem logic is incorrect

* **HIGH SEVERITY : FATAL BUG**
* When forwarding is used from mem stage to execute stage, the data path assumes that we will use `alu` result.
* In fact it should depend on regfilemux select.
* Namely,
```sv
    rv32i_word regfilemux_at_ex_mem; 

    always_comb begin : REGFILEMUX_IN // this is the expected reg file mux result at ex_mem stage (so load is don't care)
        unique case (ctrlwb_at_mem.regfilemux_sel)
            regfilemux::pc_plus4 : regfilemux_at_ex_mem = ex_mem_reg_o.pc + 4;
            regfilemux::u_imm    : regfilemux_at_ex_mem = ex_mem_reg_o.uim;
            regfilemux::alu_out  : regfilemux_at_ex_mem = ex_mem_reg_o.alu;
            regfilemux::br_en    : regfilemux_at_ex_mem = {31'b0, ex_mem_reg_o.cmp};
            default             : regfilemux_at_ex_mem = 'X;
        endcase
    end

```
### BUG 0008 : rs1 rs2 checking zero logic incorrect

* Parent bug : BUG 0001
* when `wb_commit`, we need to update the corresponding reg in id_ex register (sepearated rs1, rs2 registers)
* however, when we update, we need to check dependency, when rs1 == 0 or rs2 == 0, we shouldn't update the corresponding register. This is because corresponding fields can be don't care for reg index 0
* When we check the index == 0 or not, I use the wrong index, fix has been added in this commit.


### BUG 0009 : branch predictor logic error

* When branch prediction is merged, there are 2 conditions that can cause misprediciton (flush pipeline)
    * when prediction is not taken, but it's taken
    * when prediction is taken, but it's not taken

* The first one is the same as static branch prediction
* The second one is different because we have to use the PC + 4 where PC is at EX stage instead of IF stage