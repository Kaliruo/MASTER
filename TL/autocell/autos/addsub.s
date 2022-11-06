	.meta source "\"autos/addsub.auto\""
	.meta fields "[{ \"name\": \"\", \"num\": 0, \"lo\": 0, \"hi\": 9 }]"
	invoke 1, 2, 3
	seti r4, #1
	seti r5, #0
	seti r0, #0
L0:
	seti r1, #0
L1:
	invoke 3, 0, 1
	invoke 5, 27, 6
	seti r28, #1
	add r26, r27, r28
	set r5, r26
	set r24, r5
	seti r25, #1
	sub r23, r24, r25
	invoke 4, 23, 0
	seti r20, #5
	set r21, r5
	sub r19, r20, r21
	invoke 5, 22, 6
	sub r18, r19, r22
	set r6, r18
	seti r15, #5
	set r16, r5
	add r14, r15, r16
	invoke 5, 17, 6
	sub r13, r14, r17
	set r7, r13
	seti r10, #5
	set r11, r5
	sub r9, r10, r11
	invoke 5, 12, 6
	add r8, r9, r12
	invoke 4, 8, 0
	add r1, r1, r4
	goto_lt L1, r1, r3
	add r0, r0, r4
	goto_lt L0, r0, r2
	stop
