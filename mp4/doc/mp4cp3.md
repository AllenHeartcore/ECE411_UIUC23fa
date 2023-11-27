# PROGRESS Report for CP3


## Devision of Labor

Ziyuan Chen: Fully Parameterized Cache, Multi-level Cache

Hao Ren: Next-line Prefetcher, Integration of Branch Predictor

Zhirong Chen: Local Branch Predictor, Global Branch Predictor, Branch Target Buffer, 4-way associate Branch Target Buffer  

## Statistics & Observations

```
Observations:

Baseline

Human Context : 

Default 2 Layer Cache 

Conservative Prefetcher

Baseline Predictor

Generated Data : 

stop time is          31500260000
IPC: 0.236838
L1 I Cache:    1052928 hits,        656 misses,    2111237 cycles,      8.203 penalty
L2 I Cache:        556 hits,        100 misses,       3414 cycles,     23.020 penalty
L1 D Cache:      73868 hits,         68 misses,     148678 cycles,     13.853 penalty
L2 D Cache:         84 hits,         24 misses,        738 cycles,     23.750 penalty
Predictor :    149981 misses for     211564 branch instr.
Prefetcher:      5318 prefetches
$finish called from file "/home/haor2/ece411/fa23_ece411_CRC/mp4/hvl/top_tb.sv", line 173.
$finish at simulation time          31538320000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 31538320000 ps
CPU Time:    639.050 seconds;       Data structure size:   0.7Mb
Mon Nov 27 08:49:38 2023
bash check_sim_error.sh

```

```

Observations:

1. Can show 1 Way BTB is better than baseline and 1 Way BTB is better than 4 Way BTB on Coremark workload

2. Can show predictor can be beneficial to Coremark workload

Human Context : 

Default 2 Layer Cache 

Conservative Prefetcher

Global Predictor W/ 1Way BTB

stop time is          27107780000
IPC: 0.275292
L1 I Cache:     906514 hits,        603 misses,    1818190 cycles,      8.561 penalty
L2 I Cache:        501 hits,        102 misses,       3354 cycles,     23.059 penalty
L1 D Cache:      73868 hits,         68 misses,     148678 cycles,     13.853 penalty
L2 D Cache:         84 hits,         24 misses,        738 cycles,     23.750 penalty
Predictor :     76781 misses for     211564 branch instr.
Prefetcher:      5290 prefetches
$finish called from file "/home/haor2/ece411/fa23_ece411_CRC/mp4/hvl/top_tb.sv", line 173.
$finish at simulation time          27143740000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 27143740000 ps
CPU Time:    597.060 seconds;       Data structure size:  25.2Mb
Mon Nov 27 09:14:31 2023
bash check_sim_error.sh

```

```

Observations:

Can show Local Predictor on Coremark workload is better than baseline

Human Context : 

Default 2 Layer Cache 

Conservative Prefetcher

Local Predictor W/ 4Way BTB

Generated Data : 

stop time is          31109120000
IPC: 0.239635
L1 I Cache:    1039890 hits,        656 misses,    2085161 cycles,      8.203 penalty
L2 I Cache:        556 hits,        100 misses,       3414 cycles,     23.020 penalty
L1 D Cache:      73868 hits,         68 misses,     148678 cycles,     13.853 penalty
L2 D Cache:         84 hits,         24 misses,        738 cycles,     23.750 penalty
Predictor :    143462 misses for     211564 branch instr.
Prefetcher:      5318 prefetches
$finish called from file "/home/haor2/ece411/fa23_ece411_CRC/mp4/hvl/top_tb.sv", line 173.
$finish at simulation time          31147180000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 31147180000 ps
CPU Time:    649.330 seconds;       Data structure size:  24.8Mb
Mon Nov 27 09:01:11 2023
bash check_sim_error.sh

```

```

Observation : Can show Conservative Prefetcher is WORSE than no prefetcher

This is because we have few cache miss and the prefetcher will not have positive effect on the performance.
The degradation is due to additional cache hit latency.

Human Context : 

Default 2 Layer Cache 

Conservative Prefetcher

Local Predictor W/ 1Way BTB



stop time is          27055390000
IPC: 0.275790
L1 I Cache:     901272 hits,        596 misses,    1807650 cycles,      8.567 penalty
L2 I Cache:        495 hits,        101 misses,       3319 cycles,     23.059 penalty
L1 D Cache:      73868 hits,         68 misses,     148678 cycles,     13.853 penalty
L2 D Cache:         84 hits,         24 misses,        738 cycles,     23.750 penalty
Predictor :     76782 misses for     211652 branch instr.
Prefetcher:         0 prefetches
$finish called from file "/home/haor2/ece411/fa23_ece411_CRC/mp4/hvl/top_tb.sv", line 173.
$finish at simulation time          27091310000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 27091310000 ps
CPU Time:    394.460 seconds;       Data structure size:  25.2Mb
Mon Nov 27 09:22:52 2023
bash check_sim_error.sh
```


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

Hao Ren: Next-line Prefetcher, find the best strategy for prefetching

Zhirong Chen: Local Branch Predictor, Global Branch Predictor, Branch Target Buffer, 4-way associate Branch Target Buffer. Optimize the predictor and BTB. Try to use Tournament Predictor and G-Shore Predictor. 

## Feature List & Optimization Direction

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

