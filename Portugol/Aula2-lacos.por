programa
{
	
	funcao inicio()
	{
		real numero1, numero2, result=0.0
		inteiro opc

		escreva("Entre com o primeiro número: ")
		leia(numero1)
		escreva("\n1- Soma\n2- Diferença\n3- Multiplicação\n4- Divisão")
		escreva("\nDigite sua opção: ")
		leia(opc)
		escreva("Entre com o segundo número: ")
		leia(numero2)

		escolha(opc)
		{
			caso 1:
			result = numero1 + numero2
			pare
			caso 2:
			result = numero1 - numero2
			pare
			caso 3:
			result = numero1 * numero2
			pare
			caso 4:
			result = numero1 / numero2
			pare
			caso contrario:
			escreva("\nOpção Inválida")
		}
		escreva("\nResultado: ", result)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 584; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */