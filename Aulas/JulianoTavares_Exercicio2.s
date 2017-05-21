	#Aluno : Juliano Cézar Chagas Tavares	-   RA: 87940

#Suponha que o vetor 1 esteja em %edi
#Suponha que o vetor 2 esteja em %ebx
#Suponha que a variavel tam contenha o tamanho dos vetores anteriores
#Suponha que a variavel pos contenha a posicao corrente no vetor
#Suponha que a variavel i seja o contador do loop
#Inicialmente pos = 0

comparaVet:

	movl (%edi), %edx    #copia o elemento para %edx
	cmpl (%ebx), %edx    #compara %edx com o elemento em %ebx
	jne  fimVetDiferente #se forem diferentes, acaba a execucao
	
	movl tam, %ecx       #copia o valor de tam para %ecx
	cmpl %ecx, i	     #compara o tamanho do vetor com o controle
	je   fimVetIgual     #se forem iguais, acabou o vetor
	
	addl $4, %edi	     #atualiza a pos dos vetores
	addl $4, %ebx
	addl $1, i	     #incrementa o controle do loop
	addl $1, pos	     #incrementa o controle da posicao
	jmp comparaVet

fimVetDiferente:	     #se o vetor for diferente

	movl pos, %eax	     #copia a posicao que divergiu em %eax
	jmp fimComparaVet

fimVetigual:		    #se o vetor for igual

	movl $0, %eax	    #copia o valor 0 para %eax

fimComparaVet:

	RET
	

	
