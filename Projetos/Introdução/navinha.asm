;	Inicio da implementação do jogo da disciplina

jmp Main

Main: 
	;define a posição da tela onde imprimiremos
	load r0, #20
	;define o que será impresso
	load r1, #'C'
	;imprime
	outchar r1, r0
	;espera
	halt
