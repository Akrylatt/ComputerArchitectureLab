# Description : sum of 2^n, where n is given by user: i=1, sum n (2^i)
.data
msg1: .asciiz "Enter the number n: "
result: .asciiz "\n The result is: "
.text
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall

move $t0, $v0
beqz $t0, exit0 # if input is 0 -> result is 1
add $t0, $t0, 1
li $t1, 1

li $t2, 0
############################################

loop1:# call counting 2^n and add to the previous result
bge  $t1, $t0, exit # t1 >= t0
move $a0, $t1
jal f_2exponent
add $t1, $t1, 1
add $t2, $t2, $a0 # t2 is storung the result
j loop1

###########################################
exit0:
li $v0,4
la $a0, result
syscall

li $t2, 1

li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall
###########################################

exit:
li $v0,4
la $a0, result
syscall

li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall
##########################################

f_2exponent: # function for 2^i
li $t7, 1 # strore 1
li $t8, 0 # store 0

loop2:
beq $t8, $a0, end # $a0 is given parameter - in this case the exponent
mul $t7, $t7, 2 # multiply by 2
add $t8, $t8, 1 # increase t8
j loop2

end:
move $a0, $t7 # moving the result into the a0
jr $ra
#########################################