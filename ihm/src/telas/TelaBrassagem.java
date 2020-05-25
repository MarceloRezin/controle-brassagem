package telas;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import comunicacao.Serial;
import model.Receita;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.GridLayout;
import java.awt.Component;
import javax.swing.Box;

public class TelaBrassagem extends JFrame {

	private static final long serialVersionUID = 7013388537413496915L;
	private JPanel contentPane;
	private JLabel lblRampaAtual;
	private JLabel lblTempoDecorrido;
	
	private Serial serial;
	private Receita receita;
	private int rampaAtual;
	private JLabel lblTemperaturaAtual;
	private JLabel lblPotenciaAtual;
	private JPanel panelSul;
	private Component horizontalStrut;
	private Component horizontalStrut_1;

	public TelaBrassagem(Receita receita) {
		this.receita = receita;
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);
		
		JLabel lblReceita = new JLabel("Brassagem - Receita " + receita.getNome());
		contentPane.add(lblReceita, BorderLayout.NORTH);
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.CENTER);
		panel.setLayout(new GridLayout(5, 1, 0, 0));
		
		lblRampaAtual = new JLabel();
		panel.add(lblRampaAtual);
		
		lblTempoDecorrido = new JLabel();
		panel.add(lblTempoDecorrido);
		
		lblTemperaturaAtual = new JLabel();
		panel.add(lblTemperaturaAtual);
		
		lblPotenciaAtual = new JLabel();
		panel.add(lblPotenciaAtual);
		
		panelSul = new JPanel();
		contentPane.add(panelSul, BorderLayout.SOUTH);
		panelSul.setLayout(new GridLayout(1, 3, 0, 0));
		
		horizontalStrut = Box.createHorizontalStrut(20);
		panelSul.add(horizontalStrut);
		
		horizontalStrut_1 = Box.createHorizontalStrut(20);
		panelSul.add(horizontalStrut_1);
		
		serial = new Serial(); 
		try {
			serial.iniciar(this);
		}catch (Exception e) {
		  JOptionPane.showMessageDialog(null, e.getMessage(), "Erro:", JOptionPane.ERROR_MESSAGE); 
		}
		
		JButton btnInterromper = new JButton("Interromper");
		panelSul.add(btnInterromper);
		btnInterromper.addActionListener((ActionEvent e) -> {
			if(JOptionPane.showConfirmDialog(this, "Tem certeza que deseja interromper essa receita?", "Confirmação de cancelamento:", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
				serial.parar();
				new TelaPrincial().setVisible(true);
				dispose();
			}
		});
				
	}

	public Receita getReceita() {
		return receita;
	}
	
	public void setRampaAtual(int rampa) {
		
		int qtdRampas = receita.getRampas().size();
		
		if(rampa < qtdRampas) {
			this.rampaAtual = rampa;
			lblRampaAtual.setText("Rampa atual: " + (rampa + 1) + " de " + receita.getRampas().size());
		}
	}
	
	public void setTempoDecorrido(int tempoDecorrido) { //Vem em segundos
		
		double tempoEmHoras = (double) tempoDecorrido / 3600;
		int horasDecorridas	=  (int)tempoEmHoras;
		
		double tempoEmMinutos = (double) (tempoEmHoras - horasDecorridas) * 60;		
		int minutosDecorridos = (int) tempoEmMinutos;
		
		int segundosDecorridos = (int)((tempoEmMinutos - minutosDecorridos) * 60);
		
		lblTempoDecorrido.setText("Tempo decorrido: " + (horasDecorridas < 10 ? "0" + horasDecorridas : horasDecorridas) + ":" 
												+ (minutosDecorridos < 10 ? "0" + minutosDecorridos : minutosDecorridos) + ":" 
												+ (segundosDecorridos < 10 ? "0" + segundosDecorridos : segundosDecorridos) + 
												" de " + receita.getRampas().get(rampaAtual).getTempo() + " minuto(s)");
	}
	
	public void setTemperaturaAtual(int temperaturaAtual) { //Vem multiplicado por quatro por causa do ponto fixo
		double temperaturaReal = (double) temperaturaAtual / 4;
		
		lblTemperaturaAtual.setText("Temperatura atual: " + Double.toString(temperaturaReal).replaceAll("\\.", "," ) + "°C de " + receita.getRampas().get(rampaAtual).getTemperaturaAlvo() + "°C");
	}
	
	public void setPotenciaAtual(int potenciaAtual) {
		lblPotenciaAtual.setText("Potencia atual: " + potenciaAtual + "%");
	}
	
	public void fim() {
		JOptionPane.showMessageDialog(null, "A brassagem foi finalizada com sucesso! Clique em \"OK\" para retorna a tela inical.");
		serial.parar();
		new TelaPrincial().setVisible(true);
		dispose();
	}
}
