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

    lw  x2, 0(x1) # x2 <= 0x00002010
    lw  x3, 4(x1) # x3 <= 0x00002012

loop1:
    addi x2, x2, 1
    bne x2, x3, loop1

    
    la x3, op1
    la x4, op2

loop2:
    addi x4, x4, 1
    blt x4, x3, loop2

    la x3, op3
    la x4, op4

loop3:
    addi x4, x4, 1
    blt x4, x3, loop3

    la x3, op3
    la x4, op4

loop4:
    addi x4, x4, 1
    bltu x4, x3, loop4

    jal x5, jmp_pt

jmp_pt:

    la  x2, jmp_pt2

    jalr x6, x2, 0

    add x7, x6, x5
    add x7, x7, x4

jmp_pt2:


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
bomo:       .word 0x00002012
op1:        .word 0x0f001012
op2:        .word 0x0f001001
op3:        .word 0xffffffff
op4:        .word 0xfffffffd
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