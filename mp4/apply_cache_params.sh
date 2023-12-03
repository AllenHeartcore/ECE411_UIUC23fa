#!/bin/bash

NSET1=4
NWAY1=2
NSET2=5
NWAY2=1
WORDSIZE=8
MULTILV_I_CACHE=0
MULTILV_D_CACHE=0

if [ $NSET1 -lt 4 ]
then
    echo -e "\033[0;31mNSET1 must be >= 4\033[0m"
    exit 1
fi

if [ $NSET2 -lt 4 ]
then
    echo -e "\033[0;31mNSET2 must be >= 4\033[0m"
    exit 1
fi

if [ $WORDSIZE -lt 7 ]
then
    echo -e "\033[0;31mWORDSIZE must be >= 7\033[0m"
    exit 1
fi

echo "
package cache_params_pkg;
parameter   CACHE_LOG2_NUMSETS_L1   = $NSET1;
parameter   CACHE_LOG2_NUMWAYS_L1   = $NWAY1;
parameter   CACHE_LOG2_NUMSETS_L2   = $NSET2;
parameter   CACHE_LOG2_NUMWAYS_L2   = $NWAY2;
parameter   CACHE_LOG2_WORDSIZE     = $WORDSIZE;
" > pkg/_types_pt2_new

# The script keeps pkg/_types_pt2 to record the last set of parameters.
# If the script misbehaves, manually delete pkg/_types_pt2 to force a rebuild.

if [ ! -f pkg/_types_pt2 ] || ! cmp -s pkg/_types_pt2 pkg/_types_pt2_new
then

    echo "
word_size = $((2**$WORDSIZE))
write_size = 8
num_words = $((2**$NSET1))
output_name = \"mp3_data_array\"
output_path = \"output/{}\".format(output_name)
    " > sram/config/_mp3_array_pt2
    cat sram/config/_mp3_array_pt* > sram/config/mp3_data_array.py

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
output_name = \"mp3_tag_array\"
output_path = \"output/{}\".format(output_name)
    " > sram/config/_mp3_array_pt2
    cat sram/config/_mp3_array_pt* > sram/config/mp3_tag_array.py

    echo "
word_size = $((35-$WORDSIZE-$NSET2))
num_words = $((2**$NSET2))
output_name = \"mp3_tag_array_2\"
output_path = \"output/{}\".format(output_name)
    " > sram/config/_mp3_array_pt2
    cat sram/config/_mp3_array_pt* > sram/config/mp3_tag_array_2.py
    cat pkg/_types_pt* > pkg/types.sv

    cd sram
    make clean
    make all
    cd ..

else
    echo "Retain existing cache parameters"
fi

mv pkg/_types_pt2_new pkg/_types_pt2
cat pkg/_types_pt* > pkg/types.sv

if [ $MULTILV_I_CACHE -ne 0 ]
then
    echo "\`define MULTILV_I_CACHE" >> pkg/types.sv
fi

if [ $MULTILV_D_CACHE -ne 0 ]
then
    echo "\`define MULTILV_D_CACHE" >> pkg/types.sv
fi

echo "endpackage : cache_params_pkg" >> pkg/types.sv

echo -e "\033[0;32mDone\033[0m"
