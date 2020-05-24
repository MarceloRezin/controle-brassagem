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

public class TelaBrassagem extends JFrame {

	private static final long serialVersionUID = 7013388537413496915L;
	private JPanel contentPane;
	private JLabel lblRampaAtual;
	private JLabel lblTempoDecorrido;
	
	private Receita receita;
	private int rampaAtual;

	public TelaBrassagem(Receita receita) {
		this.receita = receita;
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);
		
		JButton btnVoltar = new JButton("Voltar");
		btnVoltar.addActionListener((ActionEvent e) -> actionVoltar());
		contentPane.add(btnVoltar, BorderLayout.SOUTH);
		
		JLabel lblReceita = new JLabel("Brassagem - Receita " + receita.getNome());
		contentPane.add(lblReceita, BorderLayout.NORTH);
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.CENTER);
		panel.setLayout(new GridLayout(5, 1, 0, 0));
		
		lblRampaAtual = new JLabel();
		panel.add(lblRampaAtual);
		
		lblTempoDecorrido = new JLabel();
		panel.add(lblTempoDecorrido);
		
		Serial s = new Serial(); 
		try {
			s.inciar(this);
		}catch (Exception e) {
		  JOptionPane.showMessageDialog(null, e.getMessage(), "Erro:", JOptionPane.ERROR_MESSAGE); 
		}
				
	}
	
	private void actionVoltar() {
		new TelaPrincial().setVisible(true);
		dispose();
	}

	public Receita getReceita() {
		return receita;
	}
	
	public void setRampaAtual(int rampa) {
		this.rampaAtual = rampa;
		lblRampaAtual.setText("Rampa atual: " + (rampa + 1) + " de " + receita.getRampas().size());
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
}
