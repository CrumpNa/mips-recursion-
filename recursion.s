
#My base: 36 

.data
userArr: .space 101 #allocating memory 

prompt: .asciiz "\nEnter a string of 100 characters maximum."
	
printanswer: .asciiz "\n "


main:
li $v0,4  #prints the original inputted string 
la $a0, prompt 

syscall

li $v0, 8 #input from user 
la $a0, userArr #loaded into array 

li $t1,100
syscall


jal prgm1 
sw $v1, output 

lw $t2, userArr
sub $sp, $sp, 12 #stack pointer initiated 


sw $t2, (sp)


prgm1:

li $t3,0



