# Description : Signum function
.data
msg1: .asciiz " Enter your number : "

result : .asciiz "Signum of your number is: "
.text
li $v0 ,4
la $a0, msg1
syscall

li $v0 ,5
syscall
move $t1 ,$v0

###############################
# here the math starts

beq $t1, 0, zero # == 0
bltz $t1, negative # < 0 
bgtz $t1, positive # > 0

zero: 
	#add $t3, 0, $zero # usualy used for moving to another register
	addi $t3, $zero, 0
	j printRes
negative:
	addi $t3, $zero, -1 # usualy used for moving to another register
	j printRes
positive:
	addi $t3, $zero, 1 # usualy used for moving to another register
	j printRes
	
printRes:	
###############################
li $v0 ,4
la $a0, result
syscall

li $v0 ,1
move $a0 ,$t3
syscall

li $v0 ,10
syscall
