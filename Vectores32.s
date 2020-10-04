; Programa que calcula la suma de los vectores A y B
; dejando el resultado en otro vector C.

.data

.org	32

A:	.word32	0,9,11,3,12,5,14,7
B:	.word32	8,1,10,2,13,4,6,15
C:	.word32	0,0,0,0,0,0,0,0

.text
	daddi r3,r0,32
bucle:	daddi r3,r3,-1
	lw r1,A(r3)
	lw r2,B(r3)
	dadd r4,r1,r2
	sw r4,C(r3)
	bnez r3,bucle
	halt

