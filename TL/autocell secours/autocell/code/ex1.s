@ Type exercise 1 here

	seti r0 , #0
	seti r1 , #1
	seti r2 , #2
L1 :
	goto_ge L2 , r0 , r2
	add r0 , r0 , r1
	goto L1
L2 :
	stop
