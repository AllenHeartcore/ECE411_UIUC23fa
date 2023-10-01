memio.s:

.section .text
.global _start

_start:
    lw x1, data

halt:
    j halt

.section .data

addr:   .word 0x00000000
        .word 0x00000000
data:   .word 0x4F47794D
