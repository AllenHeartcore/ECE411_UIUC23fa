/**
 * `magic_memory` loads a binary into memory, and uses this to drive
 * the DUT.
**/
module source_tb(tb_itf.mem mem_itf);
memory memory(.itf(mem_itf));
endmodule : source_tb
