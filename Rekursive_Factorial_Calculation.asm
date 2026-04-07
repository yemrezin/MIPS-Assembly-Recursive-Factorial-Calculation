.data 
	soru: .asciiz "hangi sayının faktoriyelini hesaplamak istersiniz"
	sonuç: .asciiz "/sonuç ="
.text
.globl main
main:
	#faktoriyel hesaplama yap
	#int faktoriyel (int sayi){
	#if(sayi==1){
	#return 1;
	#}
	#return sayi * faktoriyel(Say-1);
	#}
	
	
	
	li $v0, 4
	la $a0, soru
	syscall
	li$v0, 5
	syscall
	move $s0, $v0
	#dişarıdan sayı alındı 
	li $t5, 1
	jal faktoriyel
	
	li $v0, 4
	la $a0, sonuç
	syscall
	li $v0, 1
	move $a0, $t5
	syscall
	li $v0, 10
	syscall
	
	faktoriyel:
	addi $sp, $sp, -8
	sw $s0, 4($sp)
	sw $ra, 0($sp)
	
	slti $s2, $s0, 2
	bne $s2, $zero, bitir  # bitirme şartı 
	mul $t5, $t5, $s0
	addi $s0, $s0, -1
	jal faktoriyel
	
	bitir:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 8
	jr $ra
	
	
	
	
	