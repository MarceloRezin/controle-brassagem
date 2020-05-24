package model;

import java.io.Serializable;
import java.math.BigDecimal;

public class Rampa implements Serializable{

	private static final long serialVersionUID = 7637887027718043454L;
	private int temperaturaAlvo;
    private int tempo; //Em minutos

    public int getTemperaturaAlvo() {
        return temperaturaAlvo;
    }

    public void setTemperaturaAlvo(int temperaturaAlvo) {
        this.temperaturaAlvo = temperaturaAlvo;
    }

    public int getTempo() {
        return tempo;
    }

    public void setTempo(int tempo) {
        this.tempo = tempo;
    }
}