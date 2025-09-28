.data
input_prompt: .asciiz "Enter an integer: "
.text
main:
li $v0, 4
la $a0, input_prompt
 syscall
li $v0, 5
syscall
move $t0, $v0
move $a0, $t0 
li $v0, 1
syscall
li $v0, 10 
syscall
