.data  
question1: .asciiz "What is your name?" 
name: .space 20
question2: .asciiz "How old you are?" 
age: .word 0
question3:.asciiz "What is your hobby?" 
hobby:.space 20
newline:.asciiz "\n"
.text   
.globl main   
main:
 li $v0 , 4    
    la $a0 , question1    
    syscall      
    li $v0,4
    la $a0,newline
    syscall
 li $v0,8
la $a0,name
li $a1,20
syscall
 li $v0,4
 la $a0, question2
    syscall
      li $v0,4
    la $a0,newline
    syscall
    li $v0,5
sw $v0,age
syscall
 li $v0 , 4    
    la $a0 , question3   
    syscall      
    li $v0,4
    la $a0,newline
    syscall
 li $v0,8
la $a0,hobby
li $a1,20
syscall
 li $v0 , 4    
    la $a0 ,   name
    syscall
     li $v0 , 1   
    lw $a0   ,age
    syscall
     li $v0 , 4    
    la $a0 ,   hobby
    syscall
  li $v0, 10
    syscall