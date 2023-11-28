#!/bin/bash

for wordsize in {7..10}
# for wordsize in {8..8}
do
    for nset2 in {4..8}
    # for nset2 in {8..8}
    do
        for nway2 in {2..4}
        # for nway2 in {4..4}
        do
            # for nset1 in $(seq 1 $nset2)
            for nset1 in {4..4}
            do
                # for nway1 in $(seq 1 $nway2)
                for nway1 in {2..2}
                do

                echo "Testing wordsize=$wordsize, nset2=$nset2, nway2=$nway2, nset1=$nset1, nway1=$nway1"

                echo "
    localparam  CACHE_LOG2_NUMSETS_L1   = $nset1;
    localparam  CACHE_LOG2_NUMWAYS_L1   = $nway1;
    localparam  CACHE_LOG2_NUMSETS_L2   = $nset2;
    localparam  CACHE_LOG2_NUMWAYS_L2   = $nway2;
    localparam  CACHE_LOG2_WORDSIZE     = $wordsize;
                " > hvl/_top_tb_pt2

                cat hvl/_top_tb_pt* > hvl/top_tb.sv
                rm hvl/_top_tb_pt2

                make run_top_tb PROG=testcode/competition/coremark_rv32i.elf \
                    > "log/coremark_rv32i_wordsize=$((2**$wordsize))_nset2=$((2**$nset2))_nway2=$((2**$nway2))_nset1=$((2**$nset1))_nway1=$((2**$nway1)).log" 2>&1

                done
            done
        done
    done
done
