programa
{
	inclua biblioteca Matematica -->mat
	funcao inicio()
	{
		inteiro idade, quantbonecas, n2, soma, mult
		real altura, pot, raizquad, n1
		cadeia time, nome

		escreva("Entre com o seu nome: ")
		leia(nome)
		escreva("Entre com o seu time de coração: ")
		leia(time)
		escreva("Entre com a sua idade ")
		leia(idade)
		escreva("Entre com a sua altura: ")
		leia(altura)
		escreva("Entre com o primeiro número: ")
		leia(n1)
		escreva("Entre com o segundo número: ")
		leia(n2)
		soma = n1 + n2		
		mult = n1 * n2
		pot = mat.potencia(n1, 3.0)
		raizquad = mat.raiz(n2, 2.0)

		escreva("\nSeu nome: ", nome)
		escreva("\nSeu time de coração: ", time)
		escreva("\nIdade: ", idade)
		escreva("\nAltura: ", altura)
		escreva("\nSoma: ", soma)
		escreva("\nMultiplicação: ", mult)
		escreva("\nPotência: ", pot)
		escreva("\nRaiz Quadrada: ", mat.arredondar(raizquad, 3))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 524; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */