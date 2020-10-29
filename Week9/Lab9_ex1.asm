# Description : 5.4xy - 12.3y + 18.23x - 8.23
.data
msg1: .asciiz " Enter the x number : "
	msg2: .asciiz "\n Enter the y number : "
	result: .asciiz "\n The result of operations is: "

a1: .float 5.4
b1: .float 12.3
c1: .float 18.23
d1: .float 8.23

.text
li $v0 ,4
la $a0, msg1
syscall

li $v0 ,6
syscall

mov.s $f9, $f0

.text
li $v0 ,4
la $a0, msg2
syscall

li $v0 ,6
syscall

mov.s $f1, $f0
mov.s $f0, $f9


###############################
# here the math starts

l.s $f6, a1
l.s $f2, b1
l.s $f4, c1
l.s $f5, d1

mul.s $f7, $f1, $f0 # x*y
mul.s $f7, $f7, $f6 #5.4*x*y

mul.s $f8, $f1, $f2
sub.s $f7, $f7, $f8 #5.4xy - 12.3y

mul.s $f8, $f4, $f0
add.s $f7, $f7, $f8 #5.4xy - 12.3y + 18.23x


sub.s $f3, $f7, $f5 #5.4xy - 12.3y +  18.23x - 8.23

#add.s $f3, $f1, $f0
###############################
li $v0 ,4
la $a0, result
syscall

li $v0, 2
mov.s $f12, $f3   
syscall

li $v0 ,10
syscall
