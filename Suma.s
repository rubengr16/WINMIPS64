; Programa que calcula la suma de A y B dejando el resultado en C.

.data

A:	.word	4
B:	.word	0xF
C:	.space	8

.text
.org	0xC ; lugar de mem de instrucciones en que se iniciarán las instrucciones.
	ld r1,A(r0)
	ld r2,B(r0)
	dadd r3,r1,r2
	sd r3,C(r0)
	halt

