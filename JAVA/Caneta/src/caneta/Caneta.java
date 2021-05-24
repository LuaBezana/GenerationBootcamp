package caneta;

public class Caneta {
	public String modelo;
	public String cor;
	private float ponta;
	private boolean tampada;
	
	public Caneta(String m, String c, float p, boolean t) { //método construtor
		this.setModelo(m);
		this.setCor(c);
		this.setPonta(p);
		this.setTampada(t);
	}
	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public float getPonta() {
		return ponta;
	}

	public void setPonta(float ponta) {
		this.ponta = ponta;
	}

	public boolean isTampada() {
		return tampada;
	}

	public void setTampada(boolean tampada) {
		this.tampada = tampada;
	}
	/*public void status() {
		System.out.println("A caneta " + this.id + ", " + this.cor + ", " + this.ponta + ", " + this.modelo + ", está tampada?\n" + this.tampada);
	}
	public void rabiscar() {
		if(this.tampada == true) {
			System.out.println("Erro! Não é possível rabiscar.");
		}
		else {
			System.out.println("Está rabiscando.");
		}
	}
	public void tampar() {
		this.tampada = true;
	}
	public void destampar() {
		this.tampada = false;
	}*/

	public void status() {
		System.out.println("\nEssa caneta " + this.getModelo() + ", na cor " + this.getCor()
		+ ", com a ponta " + this.getPonta() + " está tampada? " + this.tampada);
		// TODO Auto-generated method stub
		
	}
}