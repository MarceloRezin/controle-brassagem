package persistencia;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import model.Receita;
import model.Receita.ReceitaWrapper;

public class Persistencia {
	
	private static final String ARQUIVO = "receitas.dat";
	
	public static void save() {
		
		try {
			File arquivo = new File(ARQUIVO);	
			arquivo.delete();
			arquivo.createNewFile();
				
			ObjectOutputStream outReceitas = new ObjectOutputStream(new FileOutputStream(arquivo));
			outReceitas.writeObject(ReceitaWrapper.getInstance().getReceitas());
			outReceitas.close();	
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Não foi possível salvar as receitas!", "Erro:", JOptionPane.ERROR_MESSAGE);
		}
	}

	@SuppressWarnings("unchecked")
	public static void load(){
		
		try {
			File arquivo = new File(ARQUIVO);
	        
	        if (arquivo.exists()) {
	           ObjectInputStream inReceitas = new ObjectInputStream(new FileInputStream(arquivo));
	           ReceitaWrapper.getInstance().setReceitas((ArrayList<Receita>)inReceitas.readObject());
	           inReceitas.close();
	        }else {
	        	ReceitaWrapper.getInstance().setReceitas(new ArrayList<Receita>());
	        }	
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Não foi possível carregar receitas!", "Erro:", JOptionPane.ERROR_MESSAGE);
		}
	}
}
