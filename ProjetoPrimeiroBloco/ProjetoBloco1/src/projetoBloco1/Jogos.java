package projetoBloco1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Jogos extends Listas{


	public Jogos()
	{

	}
	Scanner scanner = new Scanner(System.in);
	
	@Override
	public void listaGeneros() {
		System.out.println("\n__________________________________________________________");
		System.out.println("\nDigite o código do gênero desejado:"
				+ "\n1- Tabuleiro"
				+ "\n2- Cartas"
				+ "\n3- Papel e Caneta"
				+ "\n4- APP"
				+ "\n5- RPG"
				+ "\n6- Memória"
				+ "\n__________________________________________________________");
	}

	@Override
	public List<String> lista1()
	{
		List<String> listaTabuleiro = new ArrayList<String>();
		listaTabuleiro.add("Banco Imobiliário");
		listaTabuleiro.add("Xadrez");
		listaTabuleiro.add("Damas");
		listaTabuleiro.add("Gamão");
		listaTabuleiro.add("Ludo");
		listaTabuleiro.add("Dominó");
		listaTabuleiro.add("Jogo da Vida");
		return listaTabuleiro;
	}
	@Override
	public List<String> lista2()
	{
		List<String> listaCartas = new ArrayList<String>();
		listaCartas.add("UNO");
		listaCartas.add("Truco");
		listaCartas.add("Paciência");
		listaCartas.add("Buraco");
		listaCartas.add("Rouba Monte");
		listaCartas.add("Mau Mau");
		listaCartas.add("Quem Sou Eu?");
		return listaCartas;
	}
	@Override
	public List<String> lista3()
	{
		List<String> listaPapelCaneta = new ArrayList<String>();
		listaPapelCaneta.add("Stop");
		listaPapelCaneta.add("Jogo da Velha");
		listaPapelCaneta.add("Forca");
		listaPapelCaneta.add(" Batalha Naval");
		listaPapelCaneta.add("Detetive");
		listaPapelCaneta.add("Jogo do Pontinho");
		listaPapelCaneta.add("Jogo do Desenho");
		return listaPapelCaneta;
	}
	@Override
	public List<String> lista4()
	{
		List<String> listaApp = new ArrayList<String>();
		listaApp.add("Clash Royale");
		listaApp.add("Mario Kart Tour");
		listaApp.add("Shadow Fight");
		listaApp.add("Garena Free Fire");
		listaApp.add("PUBG Mobile");
		listaApp.add("Minecraft");
		listaApp.add("Helix Jump");
		return listaApp;
	}
	@Override
	public List<String> lista5()
	{
		List<String> listaRpg = new ArrayList<String>();
		listaRpg.add("Final Fantasy");
		listaRpg.add("Wild Arms");
		listaRpg.add("Assassins Creed Odyssey");
		listaRpg.add("Breath of Fire");
		listaRpg.add("Diablo II");
		listaRpg.add("Mass Efect 3");
		listaRpg.add("Fable");
		return listaRpg;
	}
		@Override
		public List<String> lista6()
		{
			List<String> listaMemoria = new ArrayList<String>();
			listaMemoria.add("Sudoku");
			listaMemoria.add("Tangram");
			listaMemoria.add("Racha Cuca");
			listaMemoria.add("Palavras Cruzadas");
			listaMemoria.add("Dobble");
			listaMemoria.add("Caça-palavras");
			listaMemoria.add("Quebra cabeça");
			return listaMemoria;	
	}
}