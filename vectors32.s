; Program which adds the values of the vectors A y B
; leaving the result in C

.data

.org	32

A:	.word32	0,9,11,3,12,5,14,7
B:	.word32	8,1,10,2,13,4,6,15
C:	.word32	0,0,0,0,0,0,0,0

.text
	daddi r3,r0,8 ; vector size
	daddi r4,r0,4 ; byte per word32 = 4
bucle:	daddi r3,r3,-1
	dmul r5,r4,r3
	lw r1,A(r5)
	lw r2,B(r5)
	dadd r6,r1,r2
	sw r6,C(r5)
	bnez r3,bucle
	halt

