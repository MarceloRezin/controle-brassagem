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

public class Serial implements SerialPortEventListener {

	private TelaBrassagem telaBrassagem;
	private StatusComunicacao status;
	
	private static final int COD_FIM_SINCRONIZACAO = 0;
	private static final int COD_SOLICITAR_PERMISSAO_SINCRONIZAR = 1;
	private static final int COD_OK = 2;
	
	private int indexSincronizacao = 0;//Indice da rampa transmitida
	private int indexParametro = 0; //Par é temperatura, impar é tempo
	
    private static final String PORTA = "/dev/ttyACM0";
    private SerialPort serialPort;
    private BufferedReader input;
    private OutputStream output;

    public void inciar(TelaBrassagem telaBrassagem) throws Exception {
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

    public void serialEvent(SerialPortEvent oEvent) {
        if (oEvent.getEventType() == SerialPortEvent.DATA_AVAILABLE) {
            try {
                int retorno = input.read();
                
                System.out.println(retorno);
                
                if(retorno == COD_OK) {
                	
                	if(status == StatusComunicacao.SINCRONIZACAO_PENDENTE) { //Controlador indicou que pode sincronizar
                		status = StatusComunicacao.SINCRONIZACAO_EM_ANDAMENTO;
                		enviarReceita();
                	}else if(status == StatusComunicacao.SINCRONIZACAO_EM_ANDAMENTO) {
                		
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