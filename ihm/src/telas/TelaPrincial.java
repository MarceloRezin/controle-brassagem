package telas;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import model.Receita;
import model.Receita.ReceitaWrapper;

import javax.swing.JLabel;
import javax.swing.JButton;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.Component;
import javax.swing.Box;
import java.util.ArrayList;
import javax.swing.SwingConstants;

public class TelaPrincial extends JFrame {

	private static final long serialVersionUID = -1212230852038951116L;
	private JPanel contentPane;

	public TelaPrincial() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 460, 377);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 35));
		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 10));
		
		JPanel panelSul = new JPanel();
		contentPane.add(panelSul, BorderLayout.SOUTH);
		panelSul.setLayout(new GridLayout(1, 0, 0, 0));
		
		JButton btnAdiconarReceita = new JButton("+ Receita");
		btnAdiconarReceita.addActionListener((ActionEvent e) -> abrirReceita(null));
		panelSul.add(btnAdiconarReceita);
		
		Component horizontalStrut_1 = Box.createHorizontalStrut(20);
		panelSul.add(horizontalStrut_1);
		
		Component horizontalStrut = Box.createHorizontalStrut(20);
		panelSul.add(horizontalStrut);
		
		JLabel lblControleDeBrassagem = new JLabel("<html>Controle de Brassagem - Selecione ou adicione uma receita para iniciar o processo</html>");
		contentPane.add(lblControleDeBrassagem, BorderLayout.NORTH);
		
		loadReceitas();
	}
	
	private void loadReceitas() {
		
		ArrayList<Receita> receitas = ReceitaWrapper.getInstance().getReceitas();
		
		JPanel panelCenter = new JPanel();
		contentPane.add(panelCenter, BorderLayout.CENTER);
		
		if(receitas.isEmpty()) {
			panelCenter.setLayout(new GridLayout(1, 0, 0, 0));
			JLabel lblSemReceitas = new JLabel("Nenhuma receita salva.");
			lblSemReceitas.setVerticalAlignment(SwingConstants.TOP);
			panelCenter.add(lblSemReceitas);
		}else {
			panelCenter.setLayout(new GridLayout(receitas.size(), 1, 0,50));
			receitas.forEach(r -> {
				JPanel panelItem = new JPanel();
				panelItem.setLayout(new GridLayout(1, 3, 20, 20));
				panelCenter.add(panelItem);
				
				
				panelItem.add(new JLabel(r.getNome()));
				
				JButton btnIniciar = new JButton("Inicar");
//				btnIniciar.addActionListener((ActionEvent e) -> {}); 
				panelItem.add(btnIniciar);
				
				
				JButton btnEditar = new JButton("Editar");
				btnEditar.addActionListener((ActionEvent e) -> abrirReceita(r)); 
				panelItem.add(btnEditar);
			});
		}
	}
	
	private void abrirReceita(Receita receita) {
		new TelaReceita(receita).setVisible(true);
		dispose();
	}

}
