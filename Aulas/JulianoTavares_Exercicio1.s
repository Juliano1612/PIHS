	#Aluno : Juliano Cézar Chagas Tavares   -   RA: 87940

#Suponha que o vetor 1 esteja em %edi
#Suponha que o vetor 2 esteja em %ebx
#Suponha que a variavel tam contenha o tamanho dos vetores anteriores
#Suponha que a variavel sum contem o valor do produto escalar em em cada iteracao
#Suponha que a variavel i seja o contador do loop

produtoEscalar:

	movl (%edi), %eax    #copia o elemento para %eax
	mull %eax, (%ebx)    #mult os elementos e salva em %eax
	addl sum, %eax	     #soma o valor que esta em sum com %eax e salva em sum
	movl tam, %eax	     #copia o valor de tam para %eax
	cmpl %eax, i	     #compara se o valor de tam eh igual ao controle do loop
	je fimProduto	     #se for igual, termina o produto
	addl $4, %edi	     #senao vai para a proxima posicao dos dois vetores
	addl %4, %ebx
	addl $1, i	     #atualiza o valor da variavel de controle
	jmp produtoEscalar

fimProduto:

	pushl $sum	    #empilha o valor do produto escalar
	RET
	
