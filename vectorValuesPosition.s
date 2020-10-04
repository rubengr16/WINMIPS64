; Program that sets the values of a vector through the position

.data
vector:	.word32 0,0,0,0,0,0,0,0,0,0

.text
	daddi r1,r0,10
	daddi r2,r0,4
for: 	daddi r1,r1,-1
	dmul r3,r2,r1
	sw r1,vector(r3)
	bnez r1,for
	halt