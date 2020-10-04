; Programa que coge cualquier Num > 0 y calcula su factorial

.data
	Num: .byte 4
	Res: .word 0

.code
	lb r1, Num(r0) ;
	daddi r2,r0,1
sigue:	dmul r2,r2,r1
	daddi r1,r1,-1
	bnez r1,sigue
	sd r2,Res(r0)
	halt