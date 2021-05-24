programa
{
	
	funcao inicio()
	{
		inteiro vet[5], soma=0, x
		real mediaValores

		para(x=0;x<5;x++)
		{
			escreva("Entre com um valor: ")
			leia(vet[x])

			soma = soma + vet[x]
		}
		para(x=0;x<5;x++)
		{
			escreva("\nPosição ", x, " vale: ", vet[x])
		}

		mediaValores = soma / 5
		escreva("\nMédia dos valores: ", mediaValores)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */