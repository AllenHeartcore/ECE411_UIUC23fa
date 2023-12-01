#!/bin/bash

NSET1=4
NWAY1=1
NSET2=5
NWAY2=2
WORDSIZE=7

if [ $NSET1 -lt 4 ]
then
    echo "NSET1 must be >= 4"
    exit 1
fi

if [ $NSET2 -lt 4 ]
then
    echo "NSET2 must be >= 4"
    exit 1
fi

if [ $WORDSIZE -lt 7 ]
then
    echo "WORDSIZE must be >= 7"
    exit 1
fi

echo "
module mp4
import rv32i_types::*;
import pipeline_pkg::*;
#(
    parameter   CACHE_LOG2_NUMSETS_L1   = $NSET1,
    parameter   CACHE_LOG2_NUMWAYS_L1   = $NWAY1,
    parameter   CACHE_LOG2_NUMSETS_L2   = $NSET2,
    parameter   CACHE_LOG2_NUMWAYS_L2   = $NWAY2,
    parameter   CACHE_LOG2_WORDSIZE     = $WORDSIZE
" > hdl/_mp4_pt1
cat hdl/_mp4_pt* > hdl/mp4.sv

echo "
    localparam  CACHE_LOG2_NUMSETS_L1   = $NSET1;
    localparam  CACHE_LOG2_NUMWAYS_L1   = $NWAY1;
    localparam  CACHE_LOG2_NUMSETS_L2   = $NSET2;
    localparam  CACHE_LOG2_NUMWAYS_L2   = $NWAY2;
    localparam  CACHE_LOG2_WORDSIZE     = $WORDSIZE;
" > hvl/_top_tb_pt2
cat hvl/_top_tb_pt* > hvl/top_tb.sv

echo "
word_size = $((2**$WORDSIZE))
write_size = 8
num_words = $((2**$NSET1))
output_name = \"mp3_data_array_1\"
output_path = \"output/{}\".format(output_name)
" > sram/config/_mp3_array_pt2
cat sram/config/_mp3_array_pt* > sram/config/mp3_data_array_1.py

echo "
word_size = $((2**$WORDSIZE))
write_size = 8
num_words = $((2**$NSET2))
output_name = \"mp3_data_array_2\"
output_path = \"output/{}\".format(output_name)
" > sram/config/_mp3_array_pt2
cat sram/config/_mp3_array_pt* > sram/config/mp3_data_array_2.py

echo "
word_size = $((35-$WORDSIZE-$NSET1))
num_words = $((2**$NSET1))
output_name = \"mp3_tag_array_1\"
output_path = \"output/{}\".format(output_name)
" > sram/config/_mp3_array_pt2
cat sram/config/_mp3_array_pt* > sram/config/mp3_tag_array_1.py

echo "
word_size = $((35-$WORDSIZE-$NSET2))
num_words = $((2**$NSET2))
output_name = \"mp3_tag_array_2\"
output_path = \"output/{}\".format(output_name)
" > sram/config/_mp3_array_pt2
cat sram/config/_mp3_array_pt* > sram/config/mp3_tag_array_2.py

rm hdl/_mp4_pt1 hvl/_top_tb_pt2 sram/config/_mp3_array_pt2

cd sram
make clean
make all
cd ..
