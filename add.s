; Program which adds A and B and leaves the result in C

.data

A:	.word	4
B:	.word	0xF
C:	.space	8

.text
.org	0xC ; place in instruction disk where the instruction will start to be written
	ld r1,A(r0)
	ld r2,B(r0)
	dadd r3,r1,r2
	sd r3,C(r0)
	halt

