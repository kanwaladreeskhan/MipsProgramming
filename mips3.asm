.data
name: .space 20
age: .word 0    
gpa:.float 0.00
grade:.byte 0
newline:.asciiz "\n"
.text   
.globl main   
main:
li $v0,8
la $a0,name
li $a1,20
syscall
li $v0,5
sw $v0,age
syscall
li $v0,6
s.s $f0,gpa
syscall
li $v0,12
sb $a0,grade 
syscall
  li $v0, 10
    syscall