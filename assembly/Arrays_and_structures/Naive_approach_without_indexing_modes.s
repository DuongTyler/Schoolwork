/*equivalent to c's
for (i=0;i<100;i++){
	a[i] = i;
}
*/

.data
.balign 4
a: .skip 400
.balign 4
b: .skip 8

.text
.global main
main:
	ldr r1, addrA		//r1 = &a
	mov r2, #0		//r2 = 0
loop:
	cmp r2, #100		//equal to 100?
	bgt end			//branch end if equal
	add r3, r1, r2, LSL #2	//r3 = r1 + (r2*4) 
	str r2, [r3]		//r3 = r2
	add r2, r2, #1		//r2 = r2 + 1
	b loop			//continue loop
end:
	mov r0, r2
	bx lr
addrA: .word a
