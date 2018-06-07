.text
.global main
main:
	mov r1, #1
	mov r2, #5
	mov r3, #0
	cmp r1, r2
	bgt r1gtr2
	blt r1ltr2
	beq end
r1gtr2:
	sub r1, #1
	add r3, #1
	cmp r1, r2
	beq end
	b r1gtr2
r1ltr2:
	add r1, #1
	add r3, #1
	cmp r1, r2
	beq end
	b r1ltr2
end:
	mov r0, r3
	bx lr

//VERY MESSY ASSEMBLER CODE
