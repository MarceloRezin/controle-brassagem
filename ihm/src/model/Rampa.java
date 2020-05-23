package model;

import java.io.Serializable;
import java.math.BigDecimal;

public class Rampa implements Serializable{

	private static final long serialVersionUID = 7637887027718043454L;
	private BigDecimal temperaturaAlvo;
    private int tempo;

    public BigDecimal getTemperaturaAlvo() {
        return temperaturaAlvo;
    }

    public void setTemperaturaAlvo(BigDecimal temperaturaAlvo) {
        this.temperaturaAlvo = temperaturaAlvo;
    }

    public int getTempo() {
        return tempo;
    }

    public void setTempo(int tempo) {
        this.tempo = tempo;
    }
}