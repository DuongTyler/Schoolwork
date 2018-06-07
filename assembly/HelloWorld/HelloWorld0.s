.data
	//constant variables defined under .data
	string: .asciz "\nHello World\n"
	//defines constant string in ascii (defined by the .asciz) that holds Hello World



.text
.global main
.extern printf

main:
	push {ip, lr}

	ldr r0, =string
	bl printf

	pop {ip, pc}
