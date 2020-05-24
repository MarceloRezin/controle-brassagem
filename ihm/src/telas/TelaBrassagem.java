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

public class TelaBrassagem extends JFrame {

	private static final long serialVersionUID = 7013388537413496915L;
	private JPanel contentPane;
	
	private Receita receita;

	public TelaBrassagem(Receita receita) {
		this.receita = receita;
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);
		
		JButton btnVoltar = new JButton("Voltar");
		btnVoltar.addActionListener((ActionEvent) -> actionVoltar());
		contentPane.add(btnVoltar, BorderLayout.CENTER);
		
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
}
