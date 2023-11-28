# PROGRESS LOG

FROM CP3, progress log will be moved here instead of in PPT.

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


