.data


prompt: .asciiz "\nEnter a string of 100 characters maximum."
	
printanswer: .asciiz "\n "


main:
li $v0,4  #prints the original inputted string 
la $a0, prompt 