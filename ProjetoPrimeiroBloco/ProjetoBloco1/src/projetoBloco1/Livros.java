package projetoBloco1;

import java.util.ArrayList;
import java.util.List;

public class Livros extends Listas {
	
public Livros() {}
	
	@Override
	public void listaGeneros() {
		System.out.println("\n__________________________________________________________");
		System.out.println("\nDigite o código do gênero desejado:"
				+ "\n1- Autoajuda"
				+ "\n2- Suspense"
				+ "\n3- Romance"
				+ "\n4- Ficção e Fantasia"
				+ "\n5- Drama"
				+ "\n6- Classicos"
				+ "\n__________________________________________________________");
	}
	
	@Override
	public List<String> lista1()
	{
		List<String> listaAutoajuda = new ArrayList<String>();
		listaAutoajuda.add("O Milagre do Amanhã");
		listaAutoajuda.add("O Poder do Hábito");
		listaAutoajuda.add("A Sutil Arte de Ligar o Foda-se");
		listaAutoajuda.add("O Poder do Agora");
		listaAutoajuda.add("Mindset");
		listaAutoajuda.add("O Poder da Ação");
		listaAutoajuda.add("Ansiedade: Como enfrentar o mal do século");
		listaAutoajuda.add("Felicidade");
		listaAutoajuda.add("Antes que eu me esqueça");
		return listaAutoajuda;
	}
	@Override
	public List<String> lista2()
	{
		List<String> listaSuspense = new ArrayList<String>();
		listaSuspense.add("Drácula");
		listaSuspense.add("O Gato Preto");
		listaSuspense.add("O Iluminado");
		listaSuspense.add("O Chamado de Cthulhu");
		listaSuspense.add("A Hora do Vampiro");
		listaSuspense.add("A Dança da Morte");
		listaSuspense.add("A Maldição da Residência Hill");
		listaSuspense.add("Bird Box");
		return listaSuspense;
	}
	@Override
	public List<String> lista3()
	{
		List<String> listaRomance = new ArrayList<String>();
		listaRomance.add("Orgulho e Preconceito");
		listaRomance.add("Deixe a Neve Cair");
		listaRomance.add("Cidades de Papel");
		listaRomance.add("A Ultima musica");
		listaRomance.add("A Culpa é das Estrelas");
		listaRomance.add("O Morro dos Ventos Uivantes");
		listaRomance.add("P.S Te Amo");
		listaRomance.add("Simplesmente Acontece");
		
		return listaRomance;
	}
	@Override
	public List<String> lista4()
	{
		List<String> listaFiccaoFantasia = new ArrayList<String>();
		listaFiccaoFantasia.add("Cronicas de Gelo e Fogo");
		listaFiccaoFantasia.add("Frankestein");	
		listaFiccaoFantasia.add("Viagem ao centro da Terra");
		listaFiccaoFantasia.add("Stardust");
		listaFiccaoFantasia.add("Eragon");
		listaFiccaoFantasia.add("20 mil Léguas Submarinas");
		listaFiccaoFantasia.add("A Guerra dos Mundos");
		listaFiccaoFantasia.add("Fahrenheit 451");
		listaFiccaoFantasia.add("I, Robot");
		listaFiccaoFantasia.add("Android Sonha com Ovelhas");
		return listaFiccaoFantasia;
	}
	@Override
	public List<String> lista5()
	{
		List<String> listaDrama = new ArrayList<String>();
		listaDrama.add("Textos Cruéis demais para serem lidos");
		listaDrama.add("Como eu era antes de você");
		listaDrama.add("A Menina que roubava livros");
		listaDrama.add("Um Lugar bem longe daqui");
		listaDrama.add("A Paciente Silenciosa");
		listaDrama.add("O Sol é para todos");
		listaDrama.add("O Caçador de Pipas");
		listaDrama.add("Duna");
		listaDrama.add("O Principe Cruel");
		
		return listaDrama;
	}
	@Override
	public List<String> lista6()
	{
		List<String> listaClassicos = new ArrayList<String>();
		listaClassicos.add("Dom Casmurro");
		listaClassicos.add("A Revolução dos Bichos");
		listaClassicos.add("Dom quixote");
		listaClassicos.add("Memórias Póstumas de Brás Cubas");
		listaClassicos.add("Odisseia");
		listaClassicos.add("Os Miseráveis");
		listaClassicos.add("Os Lusíadas");
		listaClassicos.add("Madame Bovary");
		listaClassicos.add("O cortiço");
		return listaClassicos;
	}	
}
