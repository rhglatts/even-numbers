#Rebecca Glatts - 4/8/2022
#A program that prints even numbers from 1 to 20 using while loop.
#i = 2
# while (i <= 20) {
#    print(i)
#    i += 2 
# }
.data
x: .word 2

.text
main:
	#loading 2 as the starting number
	lw $t1, x
	loop:
	
	#printing out the number
	li $v0, 1
	move $a0, $t1
	syscall
	
	#if the number is 20, exit the loop, otherwise continue
	beq $t1, 20, exit
	
	#incrementing number by 2 to only get evens
	addi $t1, $t1, 2
	
	#jump to loop
	j loop
	
exit:	
	li $v0, 10
	syscall
