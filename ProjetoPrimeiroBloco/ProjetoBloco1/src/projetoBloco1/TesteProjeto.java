package projetoBloco1;

import java.util.Scanner;
import java.util.InputMismatchException;

public class TesteProjeto {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		Filmes filmes = new Filmes();
		Series series = new Series();
		Musicas musicas = new Musicas();
		Jogos jogos = new Jogos();
		AtividadesFisicas atividadesFisicas = new AtividadesFisicas();
		Livros livros = new Livros();
		Listas lista = null;
		
		System.out.println("Bem vinde ao nosso menu! Vamos tirar o seu tédio nessa pandemia :D");

		System.out.println("\nInsira um NickName: ");
		String nome = scanner.nextLine();
		nome = nome.toUpperCase();

		Usuario usuario = new Usuario(nome);
		
		int continuar = 1;
		while (continuar == 1) {
			System.out.println("\n__________________________________________________________"
			+"\nOi " + usuario.getNome() 
			+ ", informe o código da sessão desejada:"
			+ "\n1- Assistir filmes" 
			+ "\n2- Assistir séries" 
			+ "\n3- Ouvir música" 
			+ "\n4- Jogar jogos"
			+ "\n5- Praticar atividades físicas" 
			+ "\n6- Ler um livro"
			+ "\n__________________________________________________________");
			int opcao = scanner.nextInt();
			switch (opcao) {
			case 1:
				lista = filmes;
				break;
			case 2:
				lista = series;
				break;
			case 3:
				lista = musicas;
				break;
			case 4:
				lista = jogos;
				break;
			case 5:
				lista = atividadesFisicas;
				break;
			case 6:
				lista = livros;
				break;
			default: {
				System.out.println("Opção inválida");
				lista = null;
				break;
			}
			}

			if (lista != null) {
				lista.listaGeneros();
				int genero = scanner.nextInt();
				
				switch (genero) {
				case 1:
					System.out.println("\nSugestões:\n" + lista.lista1());
					break;
				case 2:
					System.out.println("\nSugestões:\n" + lista.lista2());
					break;
				case 3:
					System.out.println("\nSugestões:\n" + lista.lista3());
					break;
				case 4:
					System.out.println("\nSugestões:\n" + lista.lista4());
					break;
				case 5:
					System.out.println("\nSugestões:\n" + lista.lista5());
					break;
				case 6:
					System.out.println("\nSugestões:\n" + lista.lista6());
					break;
				default:
					System.out.println("\nOpção inválida");
					break;
				}

			}
			System.out.println("\n" + usuario.getNome() + ", deseja fazer outra atividade?" 
					+ "\n0- Não."
					+ "\n1- Sim! Me mostre as opções!");
			continuar = scanner.nextInt();
			while (continuar != 0 && continuar != 1) {
				try {
					if (continuar != 0 && continuar != 1) {
						throw new IllegalArgumentException();
					}
				} catch (IllegalArgumentException e) {
					System.out.println("Você digitou um valor inválido. Por favor, digite novamente.");
					System.out.println("\n" + usuario.getNome() + ", deseja fazer outra atividade?" 
					+ "\n0- Não."
					+ "\n1- Sim! Me mostre as opções!");
					continuar = scanner.nextInt();
				}
			}
		}
		System.out.println("\n" + usuario.getNome() + ", obrigade! Até mais");
	}

}