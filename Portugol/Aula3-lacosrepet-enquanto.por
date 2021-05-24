programa
{
	
	funcao inicio()
	{
		inteiro num, contNum=0, somaNum=0
		real mediaNum

		escreva("Entre com o número: ")
		leia(num)

		enquanto(num!=0)
		{
			contNum++ // contNum = contNum + 1
			somaNum = somaNum + num
			escreva("Entre com o número: ")
			leia(num)
		}
		se(contNum==0)
		{
			escreva("Não é possível realizar essa operação.")
		}
		senao
		{
		mediaNum = somaNum/contNum
		escreva("Média dos números digitados foi de: ", mediaNum)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */