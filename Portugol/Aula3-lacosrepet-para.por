programa
{
	inclua biblioteca Matematica -->mat
	funcao inicio()
	{
		real nota1, nota2, nota3, media, somaMedia=0.0, mediaGeral
		inteiro x
		cadeia nome

		para(x=1;x<=5;x++) // x = x+1
		{
			escreva("\nDigite o seu nome: ")
			leia(nome)
			escreva("Digite a nota 1: ")
			leia(nota1)
			escreva("Digite a nota 2: ")
			leia(nota2)
			escreva("Digite a nota 3: ")
			leia(nota3)

			media= (nota1+nota2+nota3)/3
			escreva("Aluno ", nome," teve média: ", mat.arredondar(media, 2)) //7.7 5.0 8.0
			
			somaMedia = somaMedia + media
		}

		limpa() 
		
		mediaGeral = somaMedia / 5
		escreva("\nMédia geral da turma foi de: ", mat.arredondar(mediaGeral, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 664; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */