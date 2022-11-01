.data
	vetor:
		.align 2
		.space 24 #aloca 6 espaços no vetor
		
	espacos: .byte ' '

.text
	
	move $t0, $zero
	move $t1, $zero
	li $t2, 24 #tamanho do vetor
	li $t3, 15 #resultado
	
	loop:
		beq $t0, $t2, saiDoLoop
		sw $t1, vetor($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		j loop
		
	saiDoLoop:
		move $t0, $zero
		imprime:
			beq $t0, $t2, saiDaImpressao
			
			lw $a0, vetor($t0)
			
			add $t3, $t3, $a0
			addi $t3, $t3, 1
			
			li $v0, 1
			move $a0, $t3
			syscall
			
			#imprime espaco em branco
			li $v0, 4
			la $a0, espacos
			syscall
			
			addi $t0, $t0, 4
			j imprime
			
			
			
	saiDaImpressao:
