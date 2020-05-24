package comunicacao;

import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import telas.TelaBrassagem;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Enumeration;

public class Serial implements SerialPortEventListener {

	private TelaBrassagem telaBrassagem;
	private StatusComunicacao status;
	
	private static final int COD_SOLICITAR_PERMISSAO_SINCRONIZAR = 1;
	
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
                int inputLine = input.read();
                System.out.println(inputLine);
                

            } catch (Exception e) {
                System.err.println(e.toString());
            }
        }
    }
}