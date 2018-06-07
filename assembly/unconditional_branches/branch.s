.text
.global main
main:
	mov r0, #2 	//sets registry 0 to hold the value of 2
	b end		//tells the program to branch off and skip to the end
	mov r0, #3	//would set the registry 0 to 3, but the branch cuts it short
end:			//end is acting as a function here
	bx lr		//return the error code of registry 0
