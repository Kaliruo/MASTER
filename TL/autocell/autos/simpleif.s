	.meta source "\"autos/simpleif.auto\""
	.meta fields "[{ \"name\": \"\", \"num\": 0, \"lo\": 0, \"hi\": 1 }]"
	invoke 1, 2, 3
	seti r4, #1
	seti r5, #0
	seti r0, #0
L0:
	seti r1, #0
L1:
	invoke 3, 0, 1
	invoke 5, 18, 6
	set r5, r18
	invoke 5, 17, 2
	set r6, r17
	set r15, r5
	set r16, r6
	goto_eq L8, r15, r16
	goto L9
L8:
	seti r14, #1
	invoke 4, 14, 0
	goto L10
L9:
L10:
	set r11, r5
	set r12, r6
	add r10, r11, r12
	seti r13, #2
	goto_ne L2, r10, r13
	goto L3
L2:
	invoke 5, 8, 3
	invoke 5, 9, 5
	goto_lt L5, r8, r9
	goto L6
L5:
	seti r7, #2
	invoke 4, 7, 0
	goto L7
L6:
L7:
	goto L4
L3:
L4:
	add r1, r1, r4
	goto_lt L1, r1, r3
	add r0, r0, r4
	goto_lt L0, r0, r2
	stop
