# Description : Some math
.data


result : .asciiz "The result is: "
e: .float 2.71828
pi: .float 3.1415


.text


main:

	jal function
	li $v0 ,4
	la $a0, result
	syscall

	li $v0, 2
	mov.s $f12, $f3   
	syscall

	li $v0 ,10
	syscall



function:

	l.s $f1, pi
	l.s $f2, e

	mul.s $f3, $f2, $f2
	div.s $f3, $f3, $f1
	
	jr $ra # return

