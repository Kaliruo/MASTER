@ Type exercise 2 here
	seti r4, #1
	invoke 1 , 1, 2
	sub r1 , r1 , r4
	sub r2 , r2 , r4
	invoke 3 , 1 ,2
	invoke 4, 4 ,0
	seti r3,  #0
	invoke 3 , 1 , 3
	invoke 4 , 4 , 0
	invoke 3 , 3 , 2
	invoke 4 ,4 ,0
	invoke 3, 3 ,3
	invoke 4 ,4 ,0

	STOP
