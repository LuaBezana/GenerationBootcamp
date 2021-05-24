package caneta;

public class CanetaMain {

	public static void main(String[] args) {
		Caneta c1 = new Caneta("bic", "rosa", 1.2f, false);
		c1.status();
		
		Caneta c2 = new Caneta("stabilo", "laranja", 0.4f, true);
		c2.status();
		/*c1.id = 1;
		c1.cor = "Rosa";
		c1.carga = 100;
		c1.modelo = "Slim";
		c1.ponta = 0.5f;
		c1.destampar();
		c1.status();
		c1.rabiscar();
		
		CanetaBic c2 = new CanetaBic();
		c2.id = 2;
		c2.cor = "Roxa";
		c2.carga = 75;
		c2.modelo = "Slim";
		c2.ponta = 0.3f;
		c2.tampar();
		c2.status();
		c2.rabiscar();*/
	}
}