# PROGRESS LOG

FROM CP3, progress log will be moved here instead of in PPT.

## CURRENT STATUS

* Pipeline processor w/o/ hazard(dependency handling) has been completed.
* Forwarding has been completed.
* Branch hasn't been enabled.

## CURRENT STEP : BRANCH & JUMP

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

