.data
.balign 4
myvar1:
	.word 0 //initially 0

.balign 4
myvar2:
	.word 0	//initially 0

.text
.balign 4
.global main
main:
	ldr r1, addrvar1	//give registry 1 the address of real var 1
	mov r3, #3		//give register 3 the value of 3
	str r3, [r1]		//set the value of register 1's held address to the value of register 3
	ldr r2, addrvar2	//give registry 2 the address of real var2
	mov r3, #4		//give the value 4 to register 3
	str r3, [r2]		//assign the value of r3 to the address specified in r2


	//now to add

	ldr r1, addrvar1 	//register 1 = the address of var1
	ldr r1, [r1]		// register 1 gets the value of the address as defined by r1
	ldr r2, addrvar2	// register 2 = the address of var2
	ldr r2, [r2]		//register 2 gets the value from the address that r2 holds
	add r0, r1, r2		//register 0 gets the value of r1 and r2 combined
	bx lr			//and return the value using ; echo $?

//labels
addrvar1: .word myvar1
addrvar2: .word myvar2
