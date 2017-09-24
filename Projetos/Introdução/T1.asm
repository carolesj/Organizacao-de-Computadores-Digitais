;	notas sobre a aula inicial de implementação no assembly do icmc


jmp Main
;o comando string é para o montador. Ele aloca memória para uma mensagem
;	ou string. Em seguida ele preenche a memória com o código ascii de 
;	de cada caractere da mensagem e coloca um '/0' no final.

Msg0 : string "V O C E   V E N C E U !!!"
Msg1 : string "Quer jogar novamente? <s/n>"

;todas as variáveis são globais

;para definir variáveis, coloca-se o label var e na frente a quantidade
;	de bytes que ela tem

Letra : var #1

;vetor de números 'aleatórios'
Rand : var #10
	;preenche com valores "aleatórios" a memória, para que seja usada como
	;	um vetor de rand
	static Rand + #0, #0
	static Rand + #1, #25
	static Rand + #2, #96
	static Rand + #3, #35
	static Rand + #4, #15
	static Rand + #5, #8
	static Rand + #6, #42
	static Rand + #7, #9
	static Rand + #8, #132
	static Rand + #9, #255
	

;código principal
Main:
	Loadn R0, #0
	Loadn R2, #0
	;loop principal da main
	Loop:
		;a cada dez rodadas do loop chama a função MoveNave
		loadn R1, #10
		mod R1, R0, R1
		cmp R1 R2
		ceq MoveNave
	
		
		;volta para o loop
		jmp Loop

MoveNave:
	push r0
	push r1
	
	;Recalcula a posiçao da nave
	call MoveNave_RecalculaPos 
	
	;Só apaga e redesenha se a posição mudar. Caso contrário mantém 
	load r0, posNave
	load r1, posAntNave
	cmp r0, r1
	jeq MoveNave_Skip
		call MoveNave_Apaga
		call MoveNave_Desenha
	MoveNave_Skip:
	
		pop r1
		pop r0
		rts

MoveNave_Desenha:
	push r0
	push r1
	
	;usando aspas simples pode-se dar load em caracteres. 
	Loadn r1, #'X'
	load R0, posNave
	;imprime na tela o conteúdo de r1 na posição de r0
	outchar R1, R0
	;atualiza a posição da nave
	store posAntNave, r0
	
	pop r1
	pop r0
	rts
