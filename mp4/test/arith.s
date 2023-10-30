riscv_mp2test.s:
.align 4
.section .text
.globl _start
    # Refer to the RISC-V ISA Spec for the functionality of
    # the instructions in this test program.
_start:
    # No data hazards, no control hazards, no structural hazards.

    # TEST COVERAGE:
    #   ADDI	Register-Immediate
    #   SLTI	Register-Immediate
    #   SLTIU	Register-Immediate
    #   XORI	Register-Immediate
    #   ORI	    Register-Immediate
    #   ANDI	Register-Immediate
    #   SLLI	Register-Immediate
    #   SRLI	Register-Immediate
    #   SRAI	Register-Immediate
    #   ADD	    Register-Register
    #   SUB	    Register-Register
    #   SLL	    Register-Register
    #   SLT	    Register-Register
    #   SLTU    Register-Register
    #   XOR	    Register-Register
    #   SRL	    Register-Register
    #   SRA	    Register-Register
    #   OR	    Register-Register
    #   AND	    Register-Register	

    # ADDI
    addi x1, x0, 0x1bc
    addi x2, x0, 0x3ad
    nop
    nop
    nop 
    nop
    # SLTI
    slti x3, x1, 0x00000002
    slti x4, x2, 0x00000002
    nop
    nop
    nop
    nop
    # # SLTIU
    # sltiu x5, x1, 0x00000002
    # sltiu x6, x2, 0x00000002
    # # XORI
    # xori x7, x1, 0x00000002
    # xori x8, x2, 0x00000002
    # # ORI
    # ori x9, x1, 0x1ff
    # ori x10, x2, 0x1ff
    # # ANDI
    # andi x11, x1, 0x00000002
    # andi x12, x2, 0x00000002
    # # SLLI
    # slli x13, x1, 0x00000002
    # slli x14, x2, 0x00000002
    # # SRLI
    # srli x15, x1, 0x00000002
    # srli x16, x2, 0x00000002
    # # SRAI
    # srai x17, x1, 0x00000002
    # srai x18, x2, 0x00000002
    # # ADD
    # add x5, x1, x2
    # add x6, x3, x4
    # # SUB
    # sub x7, x1, x2
    # sub x8, x3, x4
    # # SLL
    # sll x9, x1, x2
    # sll x10, x3, x4
    # # SLT
    # slt x11, x1, x2
    # slt x12, x3, x4
    # # SLTU
    # sltu x13, x1, x2
    # sltu x14, x3, x4
    # # XOR
    # xor x15, x1, x2
    # xor x16, x3, x4
    # # SRL
    # srl x17, x1, x2
    # srl x18, x3, x4
    # # SRA
    # sra x19, x1, x2
    # sra x20, x3, x4
    # # OR
    # or x21, x1, x2
    # or x22, x3, x4
    # # AND
    # and x23, x1, x2
    # and x24, x3, x4


    li  t0, 1
    la  t1, tohost
    nop
	nop
	nop
	nop
    sw  t0, 0(t1)
    sw  x0, 4(t1)
    nop
	nop
	nop
	nop
    
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