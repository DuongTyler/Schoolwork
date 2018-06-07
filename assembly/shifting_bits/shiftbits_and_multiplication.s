/*LSL #n
Logical Shift Left. Shifts bits n times left. The n leftmost bits are lost and the n rightmost are set to zero.
LSL Rsource3
Like the previous one but instead of an immediate the lower byte of a register specifies the amount of shifting.
LSR #n
Logical Shift Right. Shifts bits n times right. The n rightmost bits are lost and the n leftmost bits are set to zero,
LSR Rsource3
Like the previous one but instead of an immediate the lower byte of a register specifies the amount of shifting.
ASR #n
Arithmetic Shift Right. Like LSR but the leftmost bit before shifting is used instead of zero in the n leftmost ones.
ASR Rsource3
Like the previous one but using a the lower byte of a register instead of an immediate.
ROR #n
Rotate Right. Like LSR but the n rightmost bits are not lost but pushed onto the n leftmost bits
ROR Rsource3
Like the previous one but using a the lower byte of a register instead of an immediate.*/


.text
.global main
main:
	mov r1, #1
	mov r2, #2
	mov r1, r2, LSL #1	//r1 = (r2*2), we shifted the bits over left by 1
	mov r1, r2, LSL #2	//r1 = (r2*4), we shifted the bits over left by 2
	mov r3, #4
	mov r1, r2, LSL r3	//r1 = (r2*16), we shifted bits over by 4
	mov r0, r1
	bx lr
