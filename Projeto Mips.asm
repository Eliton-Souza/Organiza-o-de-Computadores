.data
	msg: .asciiz "Digite três números para saber a média: "		  	#mensagem que solicita três números
	saida: .asciiz "A média dos números é: "				#mensagem de impreção da média
	
	zero: .float 0.0
	tres: .float 3.0
.text
	#Imprime mensagem
	li $v0, 4
	la $a0, msg
	syscall 
	
	lwc1 $f1, zero
	lwc1 $f3, tres
	
	#lendo o primeiro número e armazenando em $f0
	li $v0, 6
	syscall
	add.s  $f1, $f1, $f0	#soma em $f1
	
	
	#lendo segundo número e armazenando em $f0
	li $v0, 6
	syscall
	add.s  $f1, $f1, $f0	#soma em $f1
	
	
	#lendo o terceiro número e armazenando em $f0
	li $v0, 6
	syscall
	add.s $f1, $f1, $f0	#soma em $f1
	
	
	div.s $f12, $f1, $f3	#tira a média
	
	
	#Imprime mensagem
	li $v0, 4
	la $a0, saida
	syscall
	
	#imprime média
	li $v0, 2
	syscall