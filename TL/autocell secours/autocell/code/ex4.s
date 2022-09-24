@ Type exercise 4 here

	seti r0, #0
	seti r1, #1
	invoke 1 , 3, 4
L0 :
	seti r2, #0

L1:
	invoke 3, 0, 2
	invoke 5, 5, 3
	invoke 4, 5, 0
	add r2 , r2 , r1
	goto_lt L1 , r2 , r4
	add r0, r0, r1
	goto_lt L0, r0, r4


STOP
