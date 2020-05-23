package persistencia;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

import model.Receita;
import model.Receita.ReceitaWrapper;

public class Persistencia {
	
	private static final String ARQUIVO = "receitas.dat";
	
	public static void save() throws IOException{
		
		File arquivo = new File(ARQUIVO);	
		arquivo.delete();
		arquivo.createNewFile();
			
		ObjectOutputStream outReceitas = new ObjectOutputStream(new FileOutputStream(arquivo));
		outReceitas.writeObject(ReceitaWrapper.getInstance().getReceitas());
		outReceitas.close();
	}

	@SuppressWarnings("unchecked")
	public static void load() throws IOException, ClassNotFoundException{
		File arquivo = new File(ARQUIVO);
        
        if (arquivo.exists()) {
           ObjectInputStream inReceitas = new ObjectInputStream(new FileInputStream(arquivo));
           ReceitaWrapper.getInstance().setReceitas((ArrayList<Receita>)inReceitas.readObject());
           inReceitas.close();
        }else {
        	ReceitaWrapper.getInstance().setReceitas(new ArrayList<Receita>());
        }
	}
}
