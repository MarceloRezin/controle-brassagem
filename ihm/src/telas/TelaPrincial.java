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
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.Component;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;

import javax.swing.Box;
import java.util.ArrayList;
import javax.swing.SwingConstants;

public class TelaPrincial extends JFrame {

	private static final long serialVersionUID = -1212230852038951116L;
	private JPanel contentPane;

	public TelaPrincial() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 460, 318);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
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
			GridBagConstraints gridBagConstraints = new GridBagConstraints();
			gridBagConstraints.insets = new Insets(10, 10, 0, 10);
			gridBagConstraints.anchor = GridBagConstraints.NORTHWEST;
			gridBagConstraints.gridy = 0;
			gridBagConstraints.gridx = 0;
			gridBagConstraints.weightx = 1;
			gridBagConstraints.weighty = 1;
			
			panelCenter.setLayout(new GridBagLayout());
			receitas.forEach(r -> {
				panelCenter.add(new JLabel(r.getNome()), gridBagConstraints);
				gridBagConstraints.gridx = gridBagConstraints.gridx + 1;
				
				panelCenter.add(Box.createHorizontalStrut(50), gridBagConstraints);
				gridBagConstraints.gridx = gridBagConstraints.gridx + 1;
				
				JButton btnIniciar = new JButton("Inicar");
				btnIniciar.addActionListener((ActionEvent e) -> iniciarReceita(r));
				btnIniciar.setSize(30, 30);
				panelCenter.add(btnIniciar, gridBagConstraints);
				gridBagConstraints.gridx = gridBagConstraints.gridx + 1;
				
				
				JButton btnEditar = new JButton("Editar");
				btnEditar.addActionListener((ActionEvent e) -> abrirReceita(r)); 
				panelCenter.add(btnEditar, gridBagConstraints);
				
				gridBagConstraints.gridy = gridBagConstraints.gridy + 1;
				gridBagConstraints.gridx = 0;
				
				gridBagConstraints.weightx = gridBagConstraints.weightx + 0.1;
				gridBagConstraints.weighty = gridBagConstraints.weighty + 0.1;
			});
			
		}
	}
	
	private void abrirReceita(Receita receita) {
		new TelaReceita(receita).setVisible(true);
		dispose();
	}

	private void iniciarReceita(Receita receita) {
		new TelaBrassagem(receita).setVisible(true);
		dispose();
	}
}
