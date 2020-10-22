# Description : Addition of n numbers !
.data
msg1: .asciiz " Enter your number : "

result : .asciiz "Sum of your numbers is: "
.text
li $v0 ,4
la $a0, msg1
syscall

li $v0 ,5
syscall
move $t1 ,$v0

###############################
# here the math starts



add $t2, $t2, $zero
add $t1, $t1, 1

start:
bgt $t1, $zero, sum
beq $t1, $zero, printRes 

sum:
	add $t1, $t1, -1
	add $t2, $t2, $t1
	j start
	
printRes:	
###############################
li $v0 ,4
la $a0, result
syscall

li $v0 ,1
move $a0 ,$t2
syscall

li $v0 ,10
syscall
