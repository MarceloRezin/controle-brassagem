package comunicacao;

import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import model.Rampa;
import telas.TelaBrassagem;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.swing.JOptionPane;

public class Serial implements SerialPortEventListener {

	private TelaBrassagem telaBrassagem;
	private StatusComunicacao status;
	
	private static final int COD_FIM_SINCRONIZACAO = 0;
	private static final int COD_SOLICITAR_PERMISSAO_SINCRONIZAR = 1;
	private static final int COD_OK = 2;
	private static final int COD_INICIAR = 10;
	private static final int COD_RESET = 11;
	private static final int COD_FIM = 12;
	
	private int indexAtualizacao = 0;
	private int accTempoDecorrido = 0; //Acumula o tempo decorrido em segundos pois é recebido em 2 bytes
	private int accTemperaturaAtual = 0; //Acumula a temperatura atual pois é recebida em 2 bytes
	
    private static final String PORTA = "/dev/ttyACM0";
    private SerialPort serialPort;
    private BufferedReader input;
    private OutputStream output;

    public void iniciar(TelaBrassagem telaBrassagem) throws Exception {
    	this.telaBrassagem = telaBrassagem;
    	
        System.setProperty("gnu.io.rxtx.SerialPorts", PORTA);

        CommPortIdentifier portId = null;
        @SuppressWarnings("rawtypes")
		Enumeration portEnum = CommPortIdentifier.getPortIdentifiers();

        while (portEnum.hasMoreElements()) {
            CommPortIdentifier currPortId = (CommPortIdentifier) portEnum.nextElement();
            if (currPortId.getName().equals(PORTA)) {
                portId = currPortId;
                break;
            }
        }
        
        if (portId == null) {
        	throw new Exception("Não foi possível encontrar o controlador.");
        }

        try {
            serialPort = (SerialPort) portId.open(this.getClass().getName(), 2000);

            serialPort.setSerialPortParams(9600, SerialPort.DATABITS_8, SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

            input = new BufferedReader(new InputStreamReader(serialPort.getInputStream()));
            output = serialPort.getOutputStream();

            serialPort.addEventListener(this);
            serialPort.notifyOnDataAvailable(true);
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        
        status = StatusComunicacao.SINCRONIZACAO_PENDENTE;
        output.write(COD_SOLICITAR_PERMISSAO_SINCRONIZAR);
    }
    
    public void parar() {
		if (serialPort != null) {
			try {
				output.write(COD_RESET);
				serialPort.removeEventListener();
				serialPort.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

    public void serialEvent(SerialPortEvent oEvent) {
        if (oEvent.getEventType() == SerialPortEvent.DATA_AVAILABLE) {
            try {
                int retorno = input.read();
                
                System.out.println(retorno);
                
                if(status == StatusComunicacao.ATUALIZACAO_PARAMETROS) {
                	
                	if(indexAtualizacao == 0) {
                		telaBrassagem.setRampaAtual(retorno);
                	}else if(indexAtualizacao == 1) {
                		accTempoDecorrido = retorno << 8;
                	}else if(indexAtualizacao == 2) {
                		telaBrassagem.setTempoDecorrido(accTempoDecorrido + retorno);
                	}else if(indexAtualizacao == 3) {
                		accTemperaturaAtual = retorno << 8;
                	}else if(indexAtualizacao == 4) {
                		telaBrassagem.setTemperaturaAtual(accTemperaturaAtual + retorno);
                	}else if(indexAtualizacao == 5) {
                		telaBrassagem.setPotenciaAtual(retorno);
                	}

                	
                	if(indexAtualizacao == 5) { //Acabou
                		status = StatusComunicacao.EXECUTANDO;
                	}else {
                		indexAtualizacao++;
                	}
          
                }else {
                	if(retorno == COD_OK) {
                    	if(status == StatusComunicacao.SINCRONIZACAO_PENDENTE) { //Controlador indicou que pode sincronizar
                    		status = StatusComunicacao.SINCRONIZACAO_EM_ANDAMENTO;
                    		enviarReceita();
                    	}else if(status == StatusComunicacao.SINCRONIZACAO_EM_ANDAMENTO) {
                    		JOptionPane.showMessageDialog(null, "Sincronização concluida com sucesso! Clique em \"OK\" para começar.");
                    		status = StatusComunicacao.EXECUTANDO;
                    		output.write(COD_INICIAR);
                    	}
                    }else if(retorno == COD_SOLICITAR_PERMISSAO_SINCRONIZAR) {
                    	status = StatusComunicacao.ATUALIZACAO_PARAMETROS;
                    	indexAtualizacao = 0;
                    }else if(retorno == COD_FIM) {
                    	telaBrassagem.fim();
                    }
                }
             
            } catch (Exception e) {
                System.err.println(e.toString());
            }
        }
    }
    
    private void enviarReceita() throws IOException, InterruptedException {
    	
    	ArrayList<Rampa> rampas = telaBrassagem.getReceita().getRampas();
    	for(int i=0; i<rampas.size(); i++) {
    		Rampa rampa = rampas.get(i);
    		
    		output.write(rampa.getTemperaturaAlvo());
    		Thread.sleep(2); //Aguarda o envio do parametro
    		output.write(rampa.getTempo());
    		Thread.sleep(2); //Aguarda o envio do parametro
    	}
    	
    	if(rampas.size() < 9) { //Caso o numero de rampas seja menor que o limite, avisa o controlador
    		output.write(COD_FIM_SINCRONIZACAO);
    	}
    }
}