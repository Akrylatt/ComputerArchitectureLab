# Description : Addition of two numbers !
.data
msg1: .asciiz " Enter the y number : "
msg2: .asciiz "\ nEnter the z number : "
msg3: .asciiz " Enter the f number : "
msg4: .asciiz "\ nEnter the q number : "

result : .asciiz "\ nThe result  is: "
.text
li $v0 ,4
la $a0, msg1
syscall

li $v0 ,5
syscall
move $t1 ,$v0

li $v0 ,4
la $a0, msg2
syscall

li $v0 ,5
syscall
move $t2 ,$v0

li $v0 ,4
la $a0, msg3
syscall

li $v0 ,5
syscall
move $t3 ,$v0

li $v0 ,4
la $a0, msg4
syscall

li $v0 ,5
syscall
move $t4 ,$v0

mul $t5, $t2 ,$t2
mul $t5, $t5, $t1
div $t5, $t5, $t3
sub $t5, $t5, $t4

add $t3, $t5, $zero

li $v0 ,4
la $a0, result
syscall

li $v0 ,1
move $a0 ,$t3
syscall

li $v0 ,10
syscall