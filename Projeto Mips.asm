.data
	msg: .asciiz "Digite tr�s n�meros para saber a m�dia: "		  	#mensagem que solicita tr�s n�meros
	saida: .asciiz "A m�dia dos n�meros �: "				#mensagem de impre��o da m�dia
	
	zero: .float 0.0
	tres: .float 3.0
.text
	#Imprime mensagem
	li $v0, 4
	la $a0, msg
	syscall 
	
	lwc1 $f1, zero
	lwc1 $f3, tres
	
	#lendo o primeiro n�mero e armazenando em $f0
	li $v0, 6
	syscall
	add.s  $f1, $f1, $f0	#soma em $f1
	
	
	#lendo segundo n�mero e armazenando em $f0
	li $v0, 6
	syscall
	add.s  $f1, $f1, $f0	#soma em $f1
	
	
	#lendo o terceiro n�mero e armazenando em $f0
	li $v0, 6
	syscall
	add.s $f1, $f1, $f0	#soma em $f1
	
	
	div.s $f12, $f1, $f3	#tira a m�dia
	
	
	#Imprime mensagem
	li $v0, 4
	la $a0, saida
	syscall
	
	#imprime m�dia
	li $v0, 2
	syscall