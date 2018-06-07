.text
.global main
main:
	mov r1, #2
	mov r2, #2
	cmp r1, r2
	beq ifEqual	//if cmp Z returns EQ
otherWise:
	mov r0, #2	//set r0 to hold value 2
	b end		//branch to end so that we don't continue to run into ifEqual
ifEqual:
	mov r0, #1	//set r0 to hold value 1
end:			
	bx lr		//return r0
