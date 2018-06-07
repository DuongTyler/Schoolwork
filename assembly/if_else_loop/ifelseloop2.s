.text
.global main
main:
	mov r1, #0
	mov r2, #1
loop:
	cmp r2, #22
	bgt end		//branch greater than (bgt)
//	beq loopuntil	//branch equal to (beq)
	add r1, r1, #1
	add r2, r2, #1
	b loop
end:
	mov r0, r1
	bx lr
//loopuntil:
//	add r2, r2, 1
//	cmp r2, #22
