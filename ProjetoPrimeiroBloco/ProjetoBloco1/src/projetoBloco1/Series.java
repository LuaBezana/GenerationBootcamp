package projetoBloco1;

import java.util.ArrayList;
import java.util.List;

public class Series extends Listas{
	
	public Series() {}
	
	@Override
	public void listaGeneros() {
		System.out.println("\n__________________________________________________________");
		System.out.println("\nDigite o código do gênero desejado:"
				+ "\n1- Ação"
				+ "\n2- Terror"
				+ "\n3- Romance"
				+ "\n4- Ficção e Fantasia"
				+ "\n5- Drama"
				+ "\n6- Animação e Comédia"
				+ "\n__________________________________________________________");
	}
	
	@Override
	public List<String> lista1()
	{
		List<String> listaAcao = new ArrayList<String>();
		listaAcao.add("Cobra Kai");
		listaAcao.add("Vikings");
		listaAcao.add("The Umbrella Academy");
		listaAcao.add("The Boys");
		listaAcao.add("The Falcon and the Winter Soldier");
		listaAcao.add("Xena The Warrior Princess");
		listaAcao.add("Watchmen");
		listaAcao.add("Black Sails");
		
		
		return listaAcao;
	}
	@Override
	public List<String> lista2()
	{
		List<String> listaTerror = new ArrayList<String>();
		listaTerror.add("The Purge");
		listaTerror.add("História de Horror Americana (American Horror Story)");
		listaTerror.add("A Maldição da Residência Hill");
		listaTerror.add("Mindhunter");
		listaTerror.add("A Maldição da Mansão Bly");
		listaTerror.add("Mindhunter");
		listaTerror.add("Ash vs Evil Dead");
		return listaTerror;
	}
	@Override
	public List<String> lista3()
	{
		List<String> listaRomance = new ArrayList<String>();
		listaRomance.add("Modern Family");
		listaRomance.add("Modern Love");
		listaRomance.add("Doces Magnólias");
		listaRomance.add("Normal People");
		listaRomance.add("Gentleman Jack");
		listaRomance.add("Bridgerton");
		listaRomance.add("Sense8");
		return listaRomance;
	}
	@Override
	public List<String> lista4()
	{
		List<String> listaFiccaoFantasia = new ArrayList<String>();
		listaFiccaoFantasia.add("Black Mirror");
		listaFiccaoFantasia.add("Dark");	
		listaFiccaoFantasia.add("Carnival Row");
		listaFiccaoFantasia.add("Orphan Black");
		listaFiccaoFantasia.add("Stranger Things");
		listaFiccaoFantasia.add("Game of Thrones");
		listaFiccaoFantasia.add("The Walking Dead");
		listaFiccaoFantasia.add("Lovecraft Country");
		listaFiccaoFantasia.add("The OA");
		listaFiccaoFantasia.add("The Mandalorian");
		listaFiccaoFantasia.add("Westworld");
		return listaFiccaoFantasia;
	}
	@Override
	public List<String> lista5()
	{
		List<String> listaDrama = new ArrayList<String>();
		listaDrama.add("Anne With an E");
		listaDrama.add("The Crown");
		listaDrama.add("Olhos que Condenam");
		listaDrama.add("This is Us");
		listaDrama.add("Outlander");
		listaDrama.add("The Handmaid's Tale");
		listaDrama.add("Killing Eve");
		listaDrama.add("The Mornig Show");
		listaDrama.add("I May Destroy You");
		
		return listaDrama;
	}
	@Override
	public List<String> lista6()
	{
		List<String> listaAnimacao = new ArrayList<String>();
		listaAnimacao.add("BoJack Horseman");
		listaAnimacao.add("Rick e Morty");
		listaAnimacao.add("Sem Maturidade para Isso");
		listaAnimacao.add("The Midnight Gospel");
		listaAnimacao.add("Flebag");
		listaAnimacao.add("Archer");
		listaAnimacao.add("Black Monday");
		listaAnimacao.add("Insecure");
		listaAnimacao.add("Seinfeld");
		listaAnimacao.add("Love Death Robots");
		listaAnimacao.add("Atlantas");
		listaAnimacao.add("The Marvelous Mrs. Maisel");
		return listaAnimacao;
	}	

}