package telas;

import java.awt.BorderLayout;
import java.awt.Component;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import model.Rampa;
import model.Receita;
import model.Receita.ReceitaWrapper;
import persistencia.Persistencia;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import javax.swing.Box;
import javax.swing.JButton;
import javax.swing.JFormattedTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.border.TitledBorder;
import javax.swing.text.InternationalFormatter;
import javax.swing.text.NumberFormatter;

public class TelaReceita extends JFrame {

	private static final long serialVersionUID = 6373860355081681030L;
	
	private Receita receita;
	
	private JPanel contentPane;
	private JPanel panelSul;
	private JLabel lblInfo;
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
		
		lblInfo = new JLabel();
		contentPane.add(lblInfo, BorderLayout.NORTH);
		
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
			lblInfo.setText("Informe os dados da nova receita:");
			
			JButton btnSalvar = new JButton("Adicionar");
			btnSalvar.addActionListener((ActionEvent e) -> actionSalvar());
			panelSul.add(btnSalvar);
			
			Component espaco = Box.createHorizontalStrut(20);
			panelSul.add(espaco);
			
			addVoltar();
		}else { //Edição
			lblInfo.setText("Altere os dados da receita:");
			
			JButton btnSalvar = new JButton("Salvar");
			btnSalvar.addActionListener((ActionEvent e) -> actionSalvar());
			panelSul.add(btnSalvar);
			
			JButton btnExcluir = new JButton("Excluir");
			panelSul.add(btnExcluir);
			
			addVoltar();
			
			txtNome.setText(receita.getNome());
			
			ArrayList<Rampa> rampas = receita.getRampas();
			for(int i=0; i<rampas.size(); i++) {
				Rampa rampa = rampas.get(i);
				rampasTemperatura.get(i).setText(rampa.getTemperaturaAlvo().toString().replaceAll("\\.", ","));
				rampasTempo.get(i).setText(Integer.toString(rampa.getTempo()));
			}
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
	
	private void actionSalvar() {
		
		String nome = txtNome.getText();
		if(isNulaOuVazia(nome)) {
			JOptionPane.showMessageDialog(this, "É necessário que você informe o nome da receita.", "Erro:", JOptionPane.ERROR_MESSAGE);
			return;
		}
		
		ArrayList<Rampa> rampas = new ArrayList<Rampa>();
		for(int i=0; i<10; i++) {
			
			String temperatura = rampasTemperatura.get(i).getText();
			String tempo = rampasTempo.get(i).getText();
			
			boolean temperaturaVazia = isNulaOuVazia(temperatura);
			boolean tempoVazio = isNulaOuVazia(tempo);
			
			//Deixando os 2 em branco ignora a rampa
			if(temperaturaVazia && tempoVazio) {
				continue;
			}
			
			if(temperaturaVazia) {
				JOptionPane.showMessageDialog(this, "Informe a temperatura na rampa " + (i+1)	 + ".", "Erro:", JOptionPane.ERROR_MESSAGE);
				return;
			}
			
			if(tempoVazio){
				JOptionPane.showMessageDialog(this, "Informe o tempo na rampa " + (i+1) + ".", "Erro:", JOptionPane.ERROR_MESSAGE);
				return;
			}
			
			Rampa rampa = new Rampa();
			try {
				BigDecimal temperaturaBd = new BigDecimal(temperatura.replaceAll("\\.", "").replaceAll(",", "."));
				
				if(temperaturaBd.compareTo(new BigDecimal("20")) < 1) {
					JOptionPane.showMessageDialog(this, "A temperatura na rampa " + (i+1) + " deve ser maior que 20°C.", "Erro:", JOptionPane.ERROR_MESSAGE);
					return;
				}
				
				if(temperaturaBd.compareTo(new BigDecimal("120")) > 0) {
					JOptionPane.showMessageDialog(this, "A temperatura na rampa " + (i+1) + " deve ser menor que 120°C.", "Erro:", JOptionPane.ERROR_MESSAGE);
					return;
				}
				
				rampa.setTemperaturaAlvo(temperaturaBd);
			}catch(Exception e) {
				JOptionPane.showMessageDialog(this, "A temperatura na rampa " + (i+1) + " é inválida.", "Erro:", JOptionPane.ERROR_MESSAGE);
				return;
			}
			
			try {
				int tempoIn = Integer.parseInt(tempo.replaceAll("\\.", ""));
				
				if(tempoIn < 1) {
					JOptionPane.showMessageDialog(this, "O tempo na rampa " + (i+1) + " deve ser de no mínimo 1 minuto.", "Erro:", JOptionPane.ERROR_MESSAGE);
					return;
				}
				
				if(tempoIn > 136) {
					JOptionPane.showMessageDialog(this, "O tempo na rampa " + (i+1) + " deve ser de no máximo 136 minutos.", "Erro:", JOptionPane.ERROR_MESSAGE);
					return;
				}
				
				rampa.setTempo(tempoIn);
			}catch(Exception e) {
				JOptionPane.showMessageDialog(this, "O tempo na rampa " + (i+1) + " é inválido.", "Erro:", JOptionPane.ERROR_MESSAGE);
				return;
			}
			
			rampas.add(rampa);
		}
		
		if(rampas.size() < 1) {
			JOptionPane.showMessageDialog(this, "A receita precisa ter no mínimo uma rampa.", "Erro:", JOptionPane.ERROR_MESSAGE);
			return;
		}
		
		if(receita == null) {
			Receita receita = new Receita(nome, rampas);
			ReceitaWrapper.getInstance().addReceita(receita);
			this.receita = receita;
			setPropriedades();
		}else {
			receita.setNome(nome);
			receita.setRampas(rampas);
			Persistencia.save();
		}
		
		JOptionPane.showMessageDialog(this, "Receita salva com sucesso!");
		
	}
	
	private boolean isNulaOuVazia(String txt) {
		return txt == null || txt.trim().isEmpty();
	}

}
