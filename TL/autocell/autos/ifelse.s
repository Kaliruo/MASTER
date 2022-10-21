	.meta source "\"autos/ifelse.auto\""
	.meta fields "[{ \"name\": \"\", \"num\": 0, \"lo\": 0, \"hi\": 1 }]"
	invoke 1, 2, 3
	seti r4, #1
	seti r5, #0
	seti r0, #0
L0:
	seti r1, #0
L1:
	invoke 3, 0, 1
	invoke 5, 23, 6
	invoke 4, 5, 23
	invoke 5, 22, 2
	invoke 4, 6, 22
	set r20, r5
	set r21, r6
	goto_eq L11, r20, r21
L11:
	seti r19, #1
	invoke 4, 19, 0
	goto L13
L12:
	seti r18, #0
	invoke 4, 18, 0
L13:
	set r15, r5
	set r16, r6
	add r14, r15, r16
	seti r17, #2
	goto_ne L2, r14, r17
L2:
	invoke 5, 12, 3
	invoke 5, 13, 5
	goto L9
L8:
	seti r11, #2
	invoke 4, 11, 0
	goto L10
L9:
	seti r10, #0
	invoke 4, 10, 0
L10:
	goto L4
L3:
	invoke 5, 8, 0
	seti r9, #0
	goto_eq L5, r8, r9
L5:
	seti r7, #1
	invoke 4, 7, 0
	goto L7
L6:
L7:
L4:
	add r1, r1, r4
	goto_lt L1, r1, r3
	add r0, r0, r4
	goto_lt L0, r0, r2
	stop
