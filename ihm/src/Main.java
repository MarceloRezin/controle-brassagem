import java.awt.EventQueue;

import persistencia.Persistencia;
import telas.TelaPrincial;

public class Main {

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Persistencia.load(); //Carrega as receitas salvas
					TelaPrincial frame = new TelaPrincial();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

}
