@ Type exercise 5 here

  seti r0, #0
  seti r1, #1
  seti r6, #0
  invoke 1 , 3, 4

L0 :
  seti r2, #0

L1 :
  invoke 3, 0 , 2
  invoke 5, 5 , 0
  goto_eq L2, r5, r1
  goto_ne L3, r5, r1

L2 :
  invoke 4, 6, 0
  goto L4

L3:
  invoke 5 , 7 , 1
  goto_eq L5, r7, r1
  invoke 5 , 7 , 2
  goto_eq L5, r7, r1
  invoke 5 , 7 , 3
  goto_eq L5, r7, r1
  invoke 5 , 7 , 4
  goto_eq L5, r7, r1
  invoke 5 , 7 , 5
  goto_eq L5, r7, r1
  invoke 5 , 7 , 6
  goto_eq L5, r7, r1
  invoke 5 , 7 , 7
  goto_eq L5, r7, r1
  invoke 5 , 7 , 8
  goto_eq L5, r7, r1
  goto L4


L4 :
  add r2 , r2 , r1
  goto_lt L1 , r2 , r4
  add r0, r0, r1
  goto_lt L0, r0, r3

L5 :
  invoke 4, 1, 0
  goto L4
STOP
