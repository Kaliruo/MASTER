	.meta source "\"autos/conway.auto\""
	.meta fields "[{ \"name\": \"\", \"num\": 0, \"lo\": 0, \"hi\": 1 }]"
	invoke 1, 2, 3
	seti r4, #1
	seti r5, #0
	seti r0, #0
L0:
	seti r1, #0
L1:
	invoke 3, 0, 1
	invoke 5, 24, 2
	invoke 5, 25, 1
	add r23, r24, r25
	invoke 5, 26, 8
	add r22, r23, r26
	invoke 5, 27, 7
	add r21, r22, r27
	invoke 5, 28, 6
	add r20, r21, r28
	invoke 5, 29, 5
	add r19, r20, r29
	invoke 5, 30, 4
	add r18, r19, r30
	invoke 5, 31, 3
	add r17, r18, r31
	set r5, r17
	invoke 5, 15, 0
	seti r16, #1
	goto_eq L2, r15, r16
	goto L3
L2:
	set r13, r5
	seti r14, #2
	goto_lt L8, r13, r14
	goto L9
L8:
	seti r12, #0
	invoke 4, 12, 0
	goto L10
L9:
	set r10, r5
	seti r11, #3
	goto_gt L11, r10, r11
	goto L12
L11:
	seti r9, #0
	invoke 4, 9, 0
	goto L13
L12:
L13:
L10:
	goto L4
L3:
	set r7, r5
	seti r8, #3
	goto_eq L5, r7, r8
	goto L6
L5:
	seti r6, #1
	invoke 4, 6, 0
	goto L7
L6:
L7:
L4:
	add r1, r1, r4
	goto_lt L1, r1, r3
	add r0, r0, r4
	goto_lt L0, r0, r2
	stop
