package telas;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JButton;
import java.awt.GridLayout;
import java.awt.Component;
import javax.swing.Box;

public class TelaPrincial extends JFrame {

	private JPanel contentPane;

	/**
	 * Create the frame.
	 */
	public TelaPrincial() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 460, 377);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 10));
		
		JPanel panelSul = new JPanel();
		contentPane.add(panelSul, BorderLayout.SOUTH);
		panelSul.setLayout(new GridLayout(1, 0, 0, 0));
		
		JButton btnAdiconarReceita = new JButton("+ Receita");
		panelSul.add(btnAdiconarReceita);
		
		Component horizontalStrut_1 = Box.createHorizontalStrut(20);
		panelSul.add(horizontalStrut_1);
		
		Component horizontalStrut = Box.createHorizontalStrut(20);
		panelSul.add(horizontalStrut);
		
		JList list = new JList();
		contentPane.add(list, BorderLayout.CENTER);
		
//		<html>First Line<br />Second Line</html>
//		JLabel lblControleDeBrassagem = new JLabel("Controle de Brassagem - Selecione ou adicione uma receita para iniciar o processo");
		JLabel lblControleDeBrassagem = new JLabel("<html>Controle de Brassagem - Selecione ou adicione uma receita<br />para iniciar o processo</html>");
		contentPane.add(lblControleDeBrassagem, BorderLayout.NORTH);
	}

}
