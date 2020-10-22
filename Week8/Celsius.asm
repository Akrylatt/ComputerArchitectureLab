# Description : Convert form Fahrenheit to Celsius!
.data
msg1: .asciiz " Enter the tempreture in °F: "

result : .asciiz "Converted value is: "
toSub: .float 32.0
toMul: .float 5.0
toDiv: .float 9.0

.text
li $v0 ,4
la $a0, msg1
syscall

li $v0 ,6
syscall


###############################
# here the math starts

l.s $f1, toSub
l.s $f2, toMul
l.s $f4, toDiv

sub.s $f3, $f0, $f1
mul.s $f3, $f3, $f2
div.s $f3, $f3, $f4

###############################
li $v0 ,4
la $a0, result
syscall

li $v0, 2
mov.s $f12, $f3   
syscall

li $v0 ,10
syscall
