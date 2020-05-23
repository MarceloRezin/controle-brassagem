package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Receita implements Serializable {

	private static final long serialVersionUID = -3479047172273556895L;
	private String nome;
    private ArrayList<Rampa> rampas;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public ArrayList<Rampa> getRampas() {
        return rampas;
    }

    public void setRampas(ArrayList<Rampa> rampas) {
        this.rampas = rampas;
    }
    
    public static class ReceitaWrapper implements Serializable{
    	
		private static final long serialVersionUID = 6716588468872886287L;
		private static ReceitaWrapper receitaWrapper = new ReceitaWrapper(); //Singleton
    	private ArrayList<Receita> receitas;
    	
    	public static ReceitaWrapper getInstance() {
    		return receitaWrapper;
    	}

		public ArrayList<Receita> getReceitas() {
			return receitas;
		}

		public void setReceitas(ArrayList<Receita> receitas) {
			this.receitas = receitas;
		}
    }
}