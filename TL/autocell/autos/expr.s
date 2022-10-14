	.meta source "\"autos/expr.auto\""
	.meta fields "[{ \"name\": \"\", \"num\": 0, \"lo\": 0, \"hi\": 9 }]"
	invoke 1, 2, 3
	seti r4, #1
	seti r5, #0
	seti r0, #0
L0:
	seti r1, #0
L1:
	invoke 3, 0, 1
	invoke 5, 7, 0
	invoke 5, 12, 5
	invoke 5, 13, 7
	add r11, r12, r13
	invoke 5, 14, 3
	add r10, r11, r14
	invoke 5, 15, 1
	add r9, r10, r15
	seti r16, #3
	mod r8, r9, r16
	add r6, r7, r8
	seti r17, #9
	mod r5, r6, r17
	invoke 4, 5, 0
	add r1, r1, r4
	goto_lt L1, r1, r3
	add r0, r0, r4
	goto_lt L0, r0, r2
	stop
