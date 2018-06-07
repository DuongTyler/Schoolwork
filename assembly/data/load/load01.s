.data

	.balign 4 //4 byte allocation
	myvar1: //define variable storage
		.word 3 //storage value for myvar is set to string '3'


	.balign 4 //another 4 byte allocation
	myvar2:
		.word 4 // stores value '4'

.text
.balign 4 // ensure code is 4 byte aligned
.global main
main:
	ldr r1, accessmyvar1 //ldr is short for Link eDitor, a linker. The eact value of the address of the variable is unknown until the program is linked in compiling
	ldr r1, [r1]
	ldr r2, accessmyvar2 	// r2 = &myvar2
	ldr r2, [r2]		// r2 = *r2  (remember pointers from c?)
	add r0, r1, r2
	bx lr

//LABELS need access to data, they are in a different section and need access
//we cannot access the other section
accessmyvar1 : .word myvar1 //not address of myvar1, but an allocation
accessmyvar2 : .word myvar2
