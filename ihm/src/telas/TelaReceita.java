package telas;

import java.awt.BorderLayout;
import java.awt.Component;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import model.Receita;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;

import javax.swing.Box;
import javax.swing.JButton;
import javax.swing.JFormattedTextField;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JSeparator;
import javax.swing.border.TitledBorder;
import javax.swing.text.InternationalFormatter;
import javax.swing.text.NumberFormatter;

public class TelaReceita extends JFrame {

	private static final long serialVersionUID = 6373860355081681030L;
	
	private Receita receita;
	
	private JPanel contentPane;
	private JPanel panelSul;
	private JTextField txtNome;
	private ArrayList<JFormattedTextField> rampasTemperatura;
	private ArrayList<JFormattedTextField> rampasTempo;

	public TelaReceita(Receita receita) {
		this.receita = receita;
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 647, 430);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 20));
		setContentPane(contentPane);
		
		panelSul = new JPanel();
		contentPane.add(panelSul, BorderLayout.SOUTH);
		panelSul.setLayout(new GridLayout(1, 0, 0, 0));
		
		JPanel panelCenter = new JPanel();
		contentPane.add(panelCenter, BorderLayout.CENTER);
		panelCenter.setLayout(new BorderLayout(0, 20));
		
		JPanel panelNome = new JPanel();
		panelNome.setBorder(null);
		panelCenter.add(panelNome, BorderLayout.NORTH);
		panelNome.setLayout(new GridLayout(1, 2, 0, 0));
		
		JLabel lblNome = new JLabel("Nome:");
		panelNome.add(lblNome);
		
		txtNome = new JTextField();
		panelNome.add(txtNome);
		txtNome.setColumns(10);
		
		JPanel panelRampas = new JPanel();
		panelRampas.setBorder(new TitledBorder(null, "Rampas", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		panelCenter.add(panelRampas);
		panelRampas.setLayout(new GridLayout(10, 4, 0, 0));
		
		NumberFormat temperaturaFormat = DecimalFormat.getInstance();
		temperaturaFormat.setMinimumFractionDigits(2);
		temperaturaFormat.setMaximumFractionDigits(2);
		temperaturaFormat.setRoundingMode(RoundingMode.HALF_UP);

		InternationalFormatter temperaturaFormatter = new InternationalFormatter(temperaturaFormat);
		temperaturaFormatter.setAllowsInvalid(false); //this is the key!!
		temperaturaFormatter.setMinimum(0.0); //Optional
		
		NumberFormat tempoFormat = NumberFormat.getIntegerInstance();
		NumberFormatter tempoFormatter = new NumberFormatter(tempoFormat);
		tempoFormatter.setAllowsInvalid(false);
		tempoFormatter.setMinimum(0);
		
		rampasTemperatura = new ArrayList<>();
		rampasTempo = new ArrayList<>();
		for(int i=1; i<11; i++) { //Número de rampas permitidas
			//Temperatura
			panelRampas.add(new JLabel("Temperatura " + i + " (°C):"));
		
			JFormattedTextField txtTemperatura = new JFormattedTextField(temperaturaFormatter);
			rampasTemperatura.add(txtTemperatura);
			panelRampas.add(txtTemperatura);
			
			//Tempo
			panelRampas.add(new JLabel("Tempo " + i + " (Minutos):"));
			
			JFormattedTextField txtTempo= new JFormattedTextField(tempoFormatter);
			rampasTempo.add(txtTempo);
			panelRampas.add(txtTempo);
		}
		
		setPropriedades();
	}
	
	private void setPropriedades() {
		panelSul.removeAll();
		
		if(receita == null) { //Novo item
			JLabel lblInfo = new JLabel("Informe os dados da nova receita:");
			contentPane.add(lblInfo, BorderLayout.NORTH);
			
			JButton btnSalvar = new JButton("Adicionar");
			panelSul.add(btnSalvar);
			
			Component espaco = Box.createHorizontalStrut(20);
			panelSul.add(espaco);
			
			addVoltar();
		}else { //Edição
			JLabel lblInfo = new JLabel("Altere os dados da receita:");
			contentPane.add(lblInfo, BorderLayout.NORTH);
			
			JButton btnSalvar = new JButton("Salvar");
			panelSul.add(btnSalvar);
			
			JButton btnExcluir = new JButton("Excluir");
			panelSul.add(btnExcluir);
			
			addVoltar();
		}
		
		revalidate(); //Atualiza o jframe
	}
	
	private void addVoltar() {		
		JButton btnVoltar = new JButton("Voltar");
		btnVoltar.addActionListener((ActionEvent e) -> {
			new TelaPrincial().setVisible(true);
			dispose();
		});
		panelSul.add(btnVoltar);
	}

}
