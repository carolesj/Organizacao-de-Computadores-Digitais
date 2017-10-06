jmp main

;define as posições da resposta na matriz da tela de output
resposta_gde : var #58
	static resposta_gde + #0, #208
	static resposta_gde + #1, #209
	static resposta_gde + #2, #245
	static resposta_gde + #3, #246
	static resposta_gde + #4, #247
	static resposta_gde + #5, #248
	static resposta_gde + #6, #251
	static resposta_gde + #7, #285
	static resposta_gde + #8, #290
	static resposta_gde + #9, #327
	static resposta_gde + #10, #328
	static resposta_gde + #11, #330
	static resposta_gde + #12, #332
	static resposta_gde + #13, #333
	static resposta_gde + #14, #346
	static resposta_gde + #15, #347
	static resposta_gde + #16, #348
	static resposta_gde + #17, #349
	static resposta_gde + #18, #350
	static resposta_gde + #19, #351
	static resposta_gde + #20, #352
	static resposta_gde + #20, #353
	static resposta_gde + #21, #354
	static resposta_gde + #22, #386
	static resposta_gde + #23, #387
	static resposta_gde + #24, #388
	static resposta_gde + #25, #389
	static resposta_gde + #26, #390
	static resposta_gde + #27, #391
	static resposta_gde + #28, #392
	static resposta_gde + #29, #394
	static resposta_gde + #30, #426
	static resposta_gde + #31, #427
	static resposta_gde + #32, #428
	static resposta_gde + #33, #429
	static resposta_gde + #34, #430
	static resposta_gde + #35, #431
	static resposta_gde + #36, #432
	static resposta_gde + #37, #433
	static resposta_gde + #38, #434
	static resposta_gde + #39, #466
	static resposta_gde + #40, #467
	static resposta_gde + #41, #468
	static resposta_gde + #42, #469
	static resposta_gde + #43, #470
	static resposta_gde + #44, #471
	static resposta_gde + #45, #473
	static resposta_gde + #46, #474
	static resposta_gde + #47, #507
	static resposta_gde + #48, #508
	static resposta_gde + #49, #509
	static resposta_gde + #50, #510
	static resposta_gde + #51, #512
	static resposta_gde + #52, #513
	static resposta_gde + #53, #548
	static resposta_gde + #54, #549
	static resposta_gde + #55, #550
	static resposta_gde + #56, #551
	static resposta_gde + #57, #552
		

		
	
	
	
tela1Linha00 : string "           1                            "
tela1Linha01 : string "                                        "
tela1Linha02 : string "      1221 442                          "
tela1Linha03 : string "                                        "
tela1Linha04 : string "     2467681234                        "
tela1Linha05 : string "    2                                   "
tela1Linha06 : string "  4 1                                   "
tela1Linha07 : string "  1 1                                   "
tela1Linha08 : string "2 1 2                                   "
tela1Linha09 : string "    9                                   "
tela1Linha10 : string "  7 1                                   "
tela1Linha11 : string "    9                                   "
tela1Linha12 : string "  6 2                                   "
tela1Linha13 : string "  4 2                                   "
tela1Linha14 : string "    5                                   "
tela1Linha15 : string "                                        "
tela1Linha16 : string "                                        "
tela1Linha17 : string "                                        "
tela1Linha18 : string "                                        "
tela1Linha19 : string "                                        "
tela1Linha20 : string "                                        "
tela1Linha21 : string "                                        "
tela1Linha22 : string "                                        "
tela1Linha23 : string "                                        "
tela1Linha24 : string "                                        "
tela1Linha25 : string "                                        "
tela1Linha26 : string "                                        "
tela1Linha27 : string "                                        "
tela1Linha28 : string "                                        "
tela1Linha29 : string "                                        "

tela2Linha00 : string "                                        "
tela2Linha01 : string "                                        "
tela2Linha02 : string "                                        "
tela2Linha03 : string "                                        "
tela2Linha04 : string "                                        "
tela2Linha05 : string "     ##########                         "
tela2Linha06 : string "     ##########                         "
tela2Linha07 : string "     ##########                         "
tela2Linha08 : string "     ##########                         "
tela2Linha09 : string "     ##########                         "
tela2Linha10 : string "     ##########                         "
tela2Linha11 : string "     ##########                         "
tela2Linha12 : string "     ##########                         "
tela2Linha13 : string "     ##########                         "
tela2Linha14 : string "     ##########                         "
tela2Linha15 : string "                                        "
tela2Linha16 : string "                                        "
tela2Linha17 : string "                                        "
tela2Linha18 : string "                                        "
tela2Linha19 : string "                                        "
tela2Linha20 : string "                                        "
tela2Linha21 : string "                                        "
tela2Linha22 : string "                                        "
tela2Linha23 : string "                                        "
tela2Linha24 : string "                                        "
tela2Linha25 : string "                                        "
tela2Linha26 : string "                                        "
tela2Linha27 : string "                                        "
tela2Linha28 : string "                                        "
tela2Linha29 : string "                                        "

main: 
	loadn R0, #0  ; posicao inicial tem que ser o comeco da tela!
	loadn R1, tela1Linha0
	loadn R2, #0  ; cor branca!
	Loop:
		call ImprimeStr
		;incrementa posicao para a proxima linha
		add r0, r0, 40  
		;incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 por causa do /0 !!)
		add r1, r1, 41  
		cmp r0, 1200
		jne Loop
	rts
	loadn R0, #0
	loadn R1, tela2Linha0
	;branco
	loadn R2, #0  
	call Loop
	
		
	ImprimeStr2:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
		push r0	; protege o r0 na pilha para preservar seu valor
		push r1	; protege o r1 na pilha para preservar seu valor
		push r2	; protege o r1 na pilha para preservar seu valor
		push r3	; protege o r3 na pilha para ser usado na subrotina
		push r4	; protege o r4 na pilha para ser usado na subrotina
		push r5	; protege o r5 na pilha para ser usado na subrotina
		push r6	; protege o r6 na pilha para ser usado na subrotina
		
		
		loadn r3, #'\0'	; Criterio de parada
		loadn r5, #' '	; Espaco em Branco

	ImprimeStr2_Loop:	
		loadi r4, r1
		cmp r4, r3		; If (Char == \0)  vai Embora
		jeq ImprimeStr2_Sai
		cmp r4, r5		; If (Char == ' ')  vai Pula outchar do espaco para na apagar outros caracteres
		jeq ImprimeStr2_Skip
		add r4, r2, r4	; Soma a Cor
		outchar r4, r0	; Imprime o caractere na tela
		storei r6, r4
	ImprimeStr2_Skip:
		inc r0			; Incrementa a posicao na tela
		inc r1			; Incrementa o ponteiro da String
		inc r6			; Incrementa o ponteiro da String da Tela 0
		jmp ImprimeStr2_Loop
		
	ImprimeStr2_Sai:	
		pop r6	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
		pop r5
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0
		rts
