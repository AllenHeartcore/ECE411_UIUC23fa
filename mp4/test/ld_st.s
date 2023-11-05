riscv_mp2test.s:
.align 4
.section .text
.globl _start
    # Refer to the RISC-V ISA Spec for the functionality of
    # the instructions in this test program.
_start:
    # No data hazards, no control hazards, no structural hazards.

    # TEST COVERAGE:
    #   Load and store instructions w/ different load size (lw, sh, lh).
    #   Possibly LUI AUIPC instruction (la).
    la  x1, boom
    sw  x0, 4(x1)
    la  x1, boom
    lh  x2, 0(x1)  # X2 <= 0x00002040
    lw  x2, threshold
    sh  x2, 0(x1)
    la  x1, boom

    li  t0, 1
    la  t1, tohost
    sw  t0, 0(t1)
    sw  x0, 4(t1)

halt:                 # Infinite loop to keep the processor
    beq x0, x0, halt  # from trying to execute the data below.
                      # Your own programs should also make use
                      # of an infinite loop at the end.

deadend:
    lw x8, bad     # X8 <= 0xdeadbeef
deadloop:
    beq x8, x8, deadloop

.section .data

boom:       .word 0x00002010
op1:        .word 0x00001012
op2:        .word 0xf4001001
.section .rodata

bad:        .word 0xdeadbeef
threshold:  .word 0x03122040
result:     .word 0x00000000
good:       .word 0x600d600d

.section ".tohost"
.globl tohost
tohost: .dword 0
.section ".fromhost"
.globl fromhost
fromhost: .dword 0