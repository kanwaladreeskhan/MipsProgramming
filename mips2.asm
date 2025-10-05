.data   #hardcode plus ye batata hy k data kaisy store hho ga 
name: .asciiz "Name: Kanwal Adrees Khan"      
enrollment: .asciiz "Enrollment: 02-131242-065" 
cnic: .asciiz "CNIC: 38301-6732543654-09"                            
program: .asciiz"Program: BSE"
section:.byte 'B'
newline:.asciiz "\n"
.text  #inst to be executed
.globl main  #har jaga accesible hy
main:
    li $v0 , 4     #pseudo code hy ye jo print karwany k liy use ho ga hardcode data, 4 bata raha hy k print karny wali value string hhy
    la $a0 , name    # yahan arg register k liy a use hua hy + ye string to be printed ka address de raha hy
    syscall     # system ko batao k function call ho
    li $v0,4
    la $a0,newline
    syscall
    li $v0,4
    la $a0, enrollment
    syscall
      li $v0,4
    la $a0,newline
    syscall
    li $v0,4
    la $a0,cnic
    syscall
      li $v0,4
    la $a0,newline
    syscall
    li $v0,4
    la $a0, program    
    syscall 
      li $v0,4
    la $a0,newline
    syscall
     li $v0,11
    lb $a0, section
    syscall 
      li $v0,4
    la $a0,newline
    syscall
    li $v0, 10
    syscall