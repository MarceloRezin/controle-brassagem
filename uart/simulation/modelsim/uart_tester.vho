-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/17/2020 18:21:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart_tester IS
    PORT (
	clk_50MHZ : IN std_logic;
	rx : IN std_logic;
	funcao : IN std_logic;
	btn_mais : IN std_logic;
	btn_menos : IN std_logic;
	tx : BUFFER std_logic;
	dezena_r : BUFFER std_logic_vector(6 DOWNTO 0);
	unidade_r : BUFFER std_logic_vector(6 DOWNTO 0);
	dezena_t : BUFFER std_logic_vector(6 DOWNTO 0);
	unidade_t : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END uart_tester;

-- Design Ports Information
-- tx	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_r[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_r[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_r[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_r[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_r[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_r[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_r[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_r[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_r[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_r[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_r[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_r[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_r[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_r[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_t[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_t[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_t[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_t[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_t[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_t[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_t[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_t[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_t[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_t[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_t[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_t[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_t[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_t[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funcao	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_mais	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_menos	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHZ	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_tester IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHZ : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_funcao : std_logic;
SIGNAL ww_btn_mais : std_logic;
SIGNAL ww_btn_menos : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_dezena_r : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade_r : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dezena_t : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade_t : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_rx|byte_recebido_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \dezena_r[0]~output_o\ : std_logic;
SIGNAL \dezena_r[1]~output_o\ : std_logic;
SIGNAL \dezena_r[2]~output_o\ : std_logic;
SIGNAL \dezena_r[3]~output_o\ : std_logic;
SIGNAL \dezena_r[4]~output_o\ : std_logic;
SIGNAL \dezena_r[5]~output_o\ : std_logic;
SIGNAL \dezena_r[6]~output_o\ : std_logic;
SIGNAL \unidade_r[0]~output_o\ : std_logic;
SIGNAL \unidade_r[1]~output_o\ : std_logic;
SIGNAL \unidade_r[2]~output_o\ : std_logic;
SIGNAL \unidade_r[3]~output_o\ : std_logic;
SIGNAL \unidade_r[4]~output_o\ : std_logic;
SIGNAL \unidade_r[5]~output_o\ : std_logic;
SIGNAL \unidade_r[6]~output_o\ : std_logic;
SIGNAL \dezena_t[0]~output_o\ : std_logic;
SIGNAL \dezena_t[1]~output_o\ : std_logic;
SIGNAL \dezena_t[2]~output_o\ : std_logic;
SIGNAL \dezena_t[3]~output_o\ : std_logic;
SIGNAL \dezena_t[4]~output_o\ : std_logic;
SIGNAL \dezena_t[5]~output_o\ : std_logic;
SIGNAL \dezena_t[6]~output_o\ : std_logic;
SIGNAL \unidade_t[0]~output_o\ : std_logic;
SIGNAL \unidade_t[1]~output_o\ : std_logic;
SIGNAL \unidade_t[2]~output_o\ : std_logic;
SIGNAL \unidade_t[3]~output_o\ : std_logic;
SIGNAL \unidade_t[4]~output_o\ : std_logic;
SIGNAL \unidade_t[5]~output_o\ : std_logic;
SIGNAL \unidade_t[6]~output_o\ : std_logic;
SIGNAL \clk_50MHZ~input_o\ : std_logic;
SIGNAL \clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor_50x|Add0~0_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~1\ : std_logic;
SIGNAL \divisor_50x|Add0~2_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp~2_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~3\ : std_logic;
SIGNAL \divisor_50x|Add0~4_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~5\ : std_logic;
SIGNAL \divisor_50x|Add0~6_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~7\ : std_logic;
SIGNAL \divisor_50x|Add0~8_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp~1_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~9\ : std_logic;
SIGNAL \divisor_50x|Add0~10_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp~0_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~11\ : std_logic;
SIGNAL \divisor_50x|Add0~12_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~13\ : std_logic;
SIGNAL \divisor_50x|Add0~14_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~15\ : std_logic;
SIGNAL \divisor_50x|Add0~16_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~17\ : std_logic;
SIGNAL \divisor_50x|Add0~18_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~19\ : std_logic;
SIGNAL \divisor_50x|Add0~20_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~21\ : std_logic;
SIGNAL \divisor_50x|Add0~22_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~23\ : std_logic;
SIGNAL \divisor_50x|Add0~24_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~25\ : std_logic;
SIGNAL \divisor_50x|Add0~26_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~27\ : std_logic;
SIGNAL \divisor_50x|Add0~28_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~29\ : std_logic;
SIGNAL \divisor_50x|Add0~30_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~31\ : std_logic;
SIGNAL \divisor_50x|Add0~32_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~33\ : std_logic;
SIGNAL \divisor_50x|Add0~34_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~35\ : std_logic;
SIGNAL \divisor_50x|Add0~36_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~37\ : std_logic;
SIGNAL \divisor_50x|Add0~38_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~39\ : std_logic;
SIGNAL \divisor_50x|Add0~40_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~41\ : std_logic;
SIGNAL \divisor_50x|Add0~42_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~43\ : std_logic;
SIGNAL \divisor_50x|Add0~44_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~45\ : std_logic;
SIGNAL \divisor_50x|Add0~46_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~47\ : std_logic;
SIGNAL \divisor_50x|Add0~48_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~49\ : std_logic;
SIGNAL \divisor_50x|Add0~50_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~1_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~2_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~0_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~3_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~4_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~5_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~6_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~7_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~8_combout\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp_up~feeder_combout\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp_up~q\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp~feeder_combout\ : std_logic;
SIGNAL \divisor_50x|reset_out_clk_tmp~0_combout\ : std_logic;
SIGNAL \divisor_50x|reset_out_clk_tmp~feeder_combout\ : std_logic;
SIGNAL \divisor_50x|reset_out_clk_tmp~q\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp~q\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \u_tx|pulsos_tempo~0_combout\ : std_logic;
SIGNAL \btn_mais~input_o\ : std_logic;
SIGNAL \rising_mais~feeder_combout\ : std_logic;
SIGNAL \reset_mais~feeder_combout\ : std_logic;
SIGNAL \reset_mais~q\ : std_logic;
SIGNAL \rising_mais~q\ : std_logic;
SIGNAL \funcao~input_o\ : std_logic;
SIGNAL \iniciar~0_combout\ : std_logic;
SIGNAL \iniciar~q\ : std_logic;
SIGNAL \u_tx|transmissao_inciada~feeder_combout\ : std_logic;
SIGNAL \u_tx|pulsos_tempo~5_combout\ : std_logic;
SIGNAL \u_tx|Add0~1\ : std_logic;
SIGNAL \u_tx|Add0~2_combout\ : std_logic;
SIGNAL \u_tx|pulsos_tempo~1_combout\ : std_logic;
SIGNAL \u_tx|Add0~3\ : std_logic;
SIGNAL \u_tx|Add0~4_combout\ : std_logic;
SIGNAL \u_tx|pulsos_tempo~2_combout\ : std_logic;
SIGNAL \u_tx|Add0~5\ : std_logic;
SIGNAL \u_tx|Add0~6_combout\ : std_logic;
SIGNAL \u_tx|pulsos_tempo~3_combout\ : std_logic;
SIGNAL \u_tx|Add0~7\ : std_logic;
SIGNAL \u_tx|Add0~8_combout\ : std_logic;
SIGNAL \u_tx|pulsos_tempo~4_combout\ : std_logic;
SIGNAL \u_tx|Add0~9\ : std_logic;
SIGNAL \u_tx|Add0~10_combout\ : std_logic;
SIGNAL \u_tx|Equal0~1_combout\ : std_logic;
SIGNAL \u_tx|reset~1_combout\ : std_logic;
SIGNAL \u_tx|reset~q\ : std_logic;
SIGNAL \u_tx|transmissao_inciada~q\ : std_logic;
SIGNAL \u_tx|Add0~0_combout\ : std_logic;
SIGNAL \u_tx|Equal0~0_combout\ : std_logic;
SIGNAL \u_tx|pulsos_tempo~6_combout\ : std_logic;
SIGNAL \u_tx|Add0~11\ : std_logic;
SIGNAL \u_tx|Add0~12_combout\ : std_logic;
SIGNAL \u_tx|Equal0~2_combout\ : std_logic;
SIGNAL \u_tx|reset~0_combout\ : std_logic;
SIGNAL \u_tx|start_bit~q\ : std_logic;
SIGNAL \u_tx|index~0_combout\ : std_logic;
SIGNAL \u_tx|index[3]~1_combout\ : std_logic;
SIGNAL \u_tx|index~3_combout\ : std_logic;
SIGNAL \u_tx|index[2]~4_combout\ : std_logic;
SIGNAL \u_tx|Add1~0_combout\ : std_logic;
SIGNAL \u_tx|index~2_combout\ : std_logic;
SIGNAL \u_tx|Equal1~0_combout\ : std_logic;
SIGNAL \u_tx|tx_out_tmp~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \btn_menos~input_o\ : std_logic;
SIGNAL \rising_menos~feeder_combout\ : std_logic;
SIGNAL \reset_menos~0_combout\ : std_logic;
SIGNAL \reset_menos~q\ : std_logic;
SIGNAL \rising_menos~q\ : std_logic;
SIGNAL \byte_t~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \byte_t~1_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \byte_t~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \byte_t[2]~2_combout\ : std_logic;
SIGNAL \byte_t[2]~3_combout\ : std_logic;
SIGNAL \byte_t~4_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \byte_t~5_combout\ : std_logic;
SIGNAL \u_tx|Mux0~0_combout\ : std_logic;
SIGNAL \u_tx|Mux0~1_combout\ : std_logic;
SIGNAL \u_tx|tx_out_tmp~0_combout\ : std_logic;
SIGNAL \u_tx|tx_out_tmp~1_combout\ : std_logic;
SIGNAL \u_tx|tx_out_tmp~2_combout\ : std_logic;
SIGNAL \u_tx|tx_out_tmp~3_combout\ : std_logic;
SIGNAL \u_tx|tx_out_tmp~5_combout\ : std_logic;
SIGNAL \u_tx|tx_out_tmp~q\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \u_rx|recepcao_inciada~feeder_combout\ : std_logic;
SIGNAL \u_rx|reset~q\ : std_logic;
SIGNAL \u_rx|recepcao_inciada~q\ : std_logic;
SIGNAL \u_rx|pulsos_tempo~0_combout\ : std_logic;
SIGNAL \u_rx|Add0~1\ : std_logic;
SIGNAL \u_rx|Add0~2_combout\ : std_logic;
SIGNAL \u_rx|pulsos_tempo~1_combout\ : std_logic;
SIGNAL \u_rx|Add0~3\ : std_logic;
SIGNAL \u_rx|Add0~4_combout\ : std_logic;
SIGNAL \u_rx|Add0~5\ : std_logic;
SIGNAL \u_rx|Add0~6_combout\ : std_logic;
SIGNAL \u_rx|pulsos_tempo~4_combout\ : std_logic;
SIGNAL \u_rx|Add0~7\ : std_logic;
SIGNAL \u_rx|Add0~8_combout\ : std_logic;
SIGNAL \u_rx|Equal1~1_combout\ : std_logic;
SIGNAL \u_rx|pulsos_tempo~5_combout\ : std_logic;
SIGNAL \u_rx|Add0~9\ : std_logic;
SIGNAL \u_rx|Add0~10_combout\ : std_logic;
SIGNAL \u_rx|pulsos_tempo~3_combout\ : std_logic;
SIGNAL \u_rx|Add0~11\ : std_logic;
SIGNAL \u_rx|Add0~12_combout\ : std_logic;
SIGNAL \u_rx|start_bit~0_combout\ : std_logic;
SIGNAL \u_rx|start_bit~q\ : std_logic;
SIGNAL \u_rx|process_0~0_combout\ : std_logic;
SIGNAL \u_rx|process_0~1_combout\ : std_logic;
SIGNAL \u_rx|process_0~2_combout\ : std_logic;
SIGNAL \u_rx|Equal1~2_combout\ : std_logic;
SIGNAL \u_rx|pulsos_tempo[4]~6_combout\ : std_logic;
SIGNAL \u_rx|index[0]~4_combout\ : std_logic;
SIGNAL \u_rx|index[0]~0_combout\ : std_logic;
SIGNAL \u_rx|index[1]~2_combout\ : std_logic;
SIGNAL \u_rx|Add1~1_combout\ : std_logic;
SIGNAL \u_rx|index[2]~3_combout\ : std_logic;
SIGNAL \u_rx|Add1~0_combout\ : std_logic;
SIGNAL \u_rx|index[3]~1_combout\ : std_logic;
SIGNAL \u_rx|Equal2~0_combout\ : std_logic;
SIGNAL \u_rx|pulsos_tempo~2_combout\ : std_logic;
SIGNAL \u_rx|Add0~0_combout\ : std_logic;
SIGNAL \u_rx|Equal1~0_combout\ : std_logic;
SIGNAL \u_rx|byte_recebido_tmp~0_combout\ : std_logic;
SIGNAL \u_rx|byte_recebido_tmp~q\ : std_logic;
SIGNAL \u_rx|byte_recebido_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \u_rx|byte_lido[6]~1_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~0_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[2]~0_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[6]~2_combout\ : std_logic;
SIGNAL \u_rx|byte[6]~feeder_combout\ : std_logic;
SIGNAL \u_rx|byte[6]~0_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[4]~3_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[5]~4_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[5]~5_combout\ : std_logic;
SIGNAL \u_rx|byte[5]~feeder_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[4]~6_combout\ : std_logic;
SIGNAL \u_rx|byte[4]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \dezena_r_tmp[3]~11_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \update_display~4_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \update_display~3_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \update_display~1_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \update_display~2_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \update_display~0_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \update_display~5_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[3]~7_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[3]~8_combout\ : std_logic;
SIGNAL \u_rx|byte[3]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[2]~9_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[2]~10_combout\ : std_logic;
SIGNAL \u_rx|byte[2]~feeder_combout\ : std_logic;
SIGNAL \byte_r_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[1]~11_combout\ : std_logic;
SIGNAL \u_rx|byte[1]~feeder_combout\ : std_logic;
SIGNAL \byte_r_tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \dezena_r_tmp[0]~2_cout\ : std_logic;
SIGNAL \dezena_r_tmp[0]~4_cout\ : std_logic;
SIGNAL \dezena_r_tmp[0]~6_cout\ : std_logic;
SIGNAL \dezena_r_tmp[0]~8_cout\ : std_logic;
SIGNAL \dezena_r_tmp[0]~9_combout\ : std_logic;
SIGNAL \dezena_r_tmp[2]~12_combout\ : std_logic;
SIGNAL \dezena_r_tmp[1]~13_combout\ : std_logic;
SIGNAL \display_dezena_r|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena_r|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena_r|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_r|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena_r|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena_r|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_r|out_display[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ : std_logic;
SIGNAL \u_rx|Equal2~1_combout\ : std_logic;
SIGNAL \u_rx|byte_lido[0]~12_combout\ : std_logic;
SIGNAL \u_rx|byte[0]~feeder_combout\ : std_logic;
SIGNAL \byte_r_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \unidade_r_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \display_unidade_r|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade_r|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade_r|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_r|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade_r|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade_r|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_r|out_display[6]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \dezena_t_tmp[0]~2_cout\ : std_logic;
SIGNAL \dezena_t_tmp[0]~4_cout\ : std_logic;
SIGNAL \dezena_t_tmp[0]~6_cout\ : std_logic;
SIGNAL \dezena_t_tmp[0]~8_cout\ : std_logic;
SIGNAL \dezena_t_tmp[0]~9_combout\ : std_logic;
SIGNAL \dezena_t_tmp[2]~12_combout\ : std_logic;
SIGNAL \dezena_t_tmp[1]~13_combout\ : std_logic;
SIGNAL \dezena_t_tmp[3]~11_combout\ : std_logic;
SIGNAL \display_dezena_t|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena_t|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena_t|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_t|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena_t|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena_t|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_t|out_display[6]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\ : std_logic;
SIGNAL \unidade_t_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ : std_logic;
SIGNAL \display_unidade_t|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade_t|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade_t|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_t|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade_t|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade_t|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_t|out_display[6]~6_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL dezena_r_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL dezena_t_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL unidade_r_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL unidade_t_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_rx|byte_lido\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_tx|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL update_display : std_logic_vector(17 DOWNTO 0);
SIGNAL \u_rx|byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_rx|pulsos_tempo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL byte_t : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_rx|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_tx|pulsos_tempo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL byte_r_tmp : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rx~input_o\ : std_logic;
SIGNAL \ALT_INV_btn_menos~input_o\ : std_logic;
SIGNAL \ALT_INV_btn_mais~input_o\ : std_logic;
SIGNAL \u_rx|ALT_INV_reset~q\ : std_logic;
SIGNAL \ALT_INV_reset_menos~q\ : std_logic;
SIGNAL \ALT_INV_reset_mais~q\ : std_logic;
SIGNAL \divisor_50x|ALT_INV_reset_out_clk_tmp~q\ : std_logic;
SIGNAL \u_tx|ALT_INV_reset~q\ : std_logic;
SIGNAL \display_unidade_t|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_t|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_t|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_t|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_r|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_r|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_r|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_r|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \u_tx|ALT_INV_tx_out_tmp~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_rx <= rx;
ww_funcao <= funcao;
ww_btn_mais <= btn_mais;
ww_btn_menos <= btn_menos;
tx <= ww_tx;
dezena_r <= ww_dezena_r;
unidade_r <= ww_unidade_r;
dezena_t <= ww_dezena_t;
unidade_t <= ww_unidade_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u_rx|byte_recebido_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_rx|byte_recebido_tmp~q\);

\divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_50x|out_clk_tmp~q\);

\clk_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHZ~input_o\);
\ALT_INV_clk_50MHZ~inputclkctrl_outclk\ <= NOT \clk_50MHZ~inputclkctrl_outclk\;
\ALT_INV_rx~input_o\ <= NOT \rx~input_o\;
\ALT_INV_btn_menos~input_o\ <= NOT \btn_menos~input_o\;
\ALT_INV_btn_mais~input_o\ <= NOT \btn_mais~input_o\;
\u_rx|ALT_INV_reset~q\ <= NOT \u_rx|reset~q\;
\ALT_INV_reset_menos~q\ <= NOT \reset_menos~q\;
\ALT_INV_reset_mais~q\ <= NOT \reset_mais~q\;
\divisor_50x|ALT_INV_reset_out_clk_tmp~q\ <= NOT \divisor_50x|reset_out_clk_tmp~q\;
\u_tx|ALT_INV_reset~q\ <= NOT \u_tx|reset~q\;
\display_unidade_t|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade_t|out_display[5]~5_combout\;
\display_unidade_t|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade_t|out_display[2]~2_combout\;
\display_dezena_t|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena_t|out_display[5]~5_combout\;
\display_dezena_t|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena_t|out_display[2]~2_combout\;
\display_unidade_r|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade_r|out_display[5]~5_combout\;
\display_unidade_r|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade_r|out_display[2]~2_combout\;
\display_dezena_r|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena_r|out_display[5]~5_combout\;
\display_dezena_r|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena_r|out_display[2]~2_combout\;
\u_tx|ALT_INV_tx_out_tmp~q\ <= NOT \u_tx|tx_out_tmp~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y0_N30
\tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_tx|ALT_INV_tx_out_tmp~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\dezena_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_r|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \dezena_r[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\dezena_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_r|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \dezena_r[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\dezena_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_r|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \dezena_r[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\dezena_r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_r|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \dezena_r[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\dezena_r[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_r|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \dezena_r[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\dezena_r[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_r|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \dezena_r[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\dezena_r[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_r|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \dezena_r[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\unidade_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_r|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \unidade_r[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\unidade_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_r|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \unidade_r[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\unidade_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_r|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \unidade_r[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\unidade_r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_r|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \unidade_r[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\unidade_r[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_r|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \unidade_r[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\unidade_r[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_r|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \unidade_r[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\unidade_r[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_r|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \unidade_r[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\dezena_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_t|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \dezena_t[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\dezena_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_t|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \dezena_t[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\dezena_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_t|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \dezena_t[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\dezena_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_t|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \dezena_t[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\dezena_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_t|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \dezena_t[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\dezena_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_t|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \dezena_t[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\dezena_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_t|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \dezena_t[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\unidade_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_t|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \unidade_t[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\unidade_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_t|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \unidade_t[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\unidade_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_t|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \unidade_t[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\unidade_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_t|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \unidade_t[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\unidade_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_t|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \unidade_t[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\unidade_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_t|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \unidade_t[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\unidade_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_t|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \unidade_t[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk_50MHZ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHZ,
	o => \clk_50MHZ~input_o\);

-- Location: CLKCTRL_G19
\clk_50MHZ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHZ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHZ~inputclkctrl_outclk\);

-- Location: FF_X46_Y17_N25
\divisor_50x|count_tmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(25));

-- Location: LCCOMB_X46_Y18_N6
\divisor_50x|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~0_combout\ = \divisor_50x|count_tmp\(0) $ (VCC)
-- \divisor_50x|Add0~1\ = CARRY(\divisor_50x|count_tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(0),
	datad => VCC,
	combout => \divisor_50x|Add0~0_combout\,
	cout => \divisor_50x|Add0~1\);

-- Location: FF_X46_Y18_N7
\divisor_50x|count_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(0));

-- Location: LCCOMB_X46_Y18_N8
\divisor_50x|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~2_combout\ = (\divisor_50x|count_tmp\(1) & (!\divisor_50x|Add0~1\)) # (!\divisor_50x|count_tmp\(1) & ((\divisor_50x|Add0~1\) # (GND)))
-- \divisor_50x|Add0~3\ = CARRY((!\divisor_50x|Add0~1\) # (!\divisor_50x|count_tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(1),
	datad => VCC,
	cin => \divisor_50x|Add0~1\,
	combout => \divisor_50x|Add0~2_combout\,
	cout => \divisor_50x|Add0~3\);

-- Location: LCCOMB_X47_Y18_N6
\divisor_50x|count_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~2_combout\ = (\divisor_50x|Add0~2_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|Add0~2_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~2_combout\);

-- Location: FF_X47_Y18_N7
\divisor_50x|count_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|count_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(1));

-- Location: LCCOMB_X46_Y18_N10
\divisor_50x|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~4_combout\ = (\divisor_50x|count_tmp\(2) & (\divisor_50x|Add0~3\ $ (GND))) # (!\divisor_50x|count_tmp\(2) & (!\divisor_50x|Add0~3\ & VCC))
-- \divisor_50x|Add0~5\ = CARRY((\divisor_50x|count_tmp\(2) & !\divisor_50x|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(2),
	datad => VCC,
	cin => \divisor_50x|Add0~3\,
	combout => \divisor_50x|Add0~4_combout\,
	cout => \divisor_50x|Add0~5\);

-- Location: FF_X46_Y18_N11
\divisor_50x|count_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(2));

-- Location: LCCOMB_X46_Y18_N12
\divisor_50x|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~6_combout\ = (\divisor_50x|count_tmp\(3) & (!\divisor_50x|Add0~5\)) # (!\divisor_50x|count_tmp\(3) & ((\divisor_50x|Add0~5\) # (GND)))
-- \divisor_50x|Add0~7\ = CARRY((!\divisor_50x|Add0~5\) # (!\divisor_50x|count_tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(3),
	datad => VCC,
	cin => \divisor_50x|Add0~5\,
	combout => \divisor_50x|Add0~6_combout\,
	cout => \divisor_50x|Add0~7\);

-- Location: FF_X46_Y18_N13
\divisor_50x|count_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(3));

-- Location: LCCOMB_X46_Y18_N14
\divisor_50x|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~8_combout\ = (\divisor_50x|count_tmp\(4) & (\divisor_50x|Add0~7\ $ (GND))) # (!\divisor_50x|count_tmp\(4) & (!\divisor_50x|Add0~7\ & VCC))
-- \divisor_50x|Add0~9\ = CARRY((\divisor_50x|count_tmp\(4) & !\divisor_50x|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(4),
	datad => VCC,
	cin => \divisor_50x|Add0~7\,
	combout => \divisor_50x|Add0~8_combout\,
	cout => \divisor_50x|Add0~9\);

-- Location: LCCOMB_X47_Y18_N24
\divisor_50x|count_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~1_combout\ = (\divisor_50x|Add0~8_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~8_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~1_combout\);

-- Location: FF_X47_Y18_N25
\divisor_50x|count_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|count_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(4));

-- Location: LCCOMB_X46_Y18_N16
\divisor_50x|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~10_combout\ = (\divisor_50x|count_tmp\(5) & (!\divisor_50x|Add0~9\)) # (!\divisor_50x|count_tmp\(5) & ((\divisor_50x|Add0~9\) # (GND)))
-- \divisor_50x|Add0~11\ = CARRY((!\divisor_50x|Add0~9\) # (!\divisor_50x|count_tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(5),
	datad => VCC,
	cin => \divisor_50x|Add0~9\,
	combout => \divisor_50x|Add0~10_combout\,
	cout => \divisor_50x|Add0~11\);

-- Location: LCCOMB_X47_Y18_N16
\divisor_50x|count_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~0_combout\ = (\divisor_50x|Add0~10_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|Add0~10_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~0_combout\);

-- Location: FF_X47_Y18_N17
\divisor_50x|count_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|count_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(5));

-- Location: LCCOMB_X46_Y18_N18
\divisor_50x|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~12_combout\ = (\divisor_50x|count_tmp\(6) & (\divisor_50x|Add0~11\ $ (GND))) # (!\divisor_50x|count_tmp\(6) & (!\divisor_50x|Add0~11\ & VCC))
-- \divisor_50x|Add0~13\ = CARRY((\divisor_50x|count_tmp\(6) & !\divisor_50x|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(6),
	datad => VCC,
	cin => \divisor_50x|Add0~11\,
	combout => \divisor_50x|Add0~12_combout\,
	cout => \divisor_50x|Add0~13\);

-- Location: FF_X46_Y18_N19
\divisor_50x|count_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(6));

-- Location: LCCOMB_X46_Y18_N20
\divisor_50x|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~14_combout\ = (\divisor_50x|count_tmp\(7) & (!\divisor_50x|Add0~13\)) # (!\divisor_50x|count_tmp\(7) & ((\divisor_50x|Add0~13\) # (GND)))
-- \divisor_50x|Add0~15\ = CARRY((!\divisor_50x|Add0~13\) # (!\divisor_50x|count_tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(7),
	datad => VCC,
	cin => \divisor_50x|Add0~13\,
	combout => \divisor_50x|Add0~14_combout\,
	cout => \divisor_50x|Add0~15\);

-- Location: FF_X46_Y18_N21
\divisor_50x|count_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(7));

-- Location: LCCOMB_X46_Y18_N22
\divisor_50x|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~16_combout\ = (\divisor_50x|count_tmp\(8) & (\divisor_50x|Add0~15\ $ (GND))) # (!\divisor_50x|count_tmp\(8) & (!\divisor_50x|Add0~15\ & VCC))
-- \divisor_50x|Add0~17\ = CARRY((\divisor_50x|count_tmp\(8) & !\divisor_50x|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(8),
	datad => VCC,
	cin => \divisor_50x|Add0~15\,
	combout => \divisor_50x|Add0~16_combout\,
	cout => \divisor_50x|Add0~17\);

-- Location: FF_X46_Y18_N23
\divisor_50x|count_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(8));

-- Location: LCCOMB_X46_Y18_N24
\divisor_50x|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~18_combout\ = (\divisor_50x|count_tmp\(9) & (!\divisor_50x|Add0~17\)) # (!\divisor_50x|count_tmp\(9) & ((\divisor_50x|Add0~17\) # (GND)))
-- \divisor_50x|Add0~19\ = CARRY((!\divisor_50x|Add0~17\) # (!\divisor_50x|count_tmp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(9),
	datad => VCC,
	cin => \divisor_50x|Add0~17\,
	combout => \divisor_50x|Add0~18_combout\,
	cout => \divisor_50x|Add0~19\);

-- Location: FF_X46_Y18_N25
\divisor_50x|count_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(9));

-- Location: LCCOMB_X46_Y18_N26
\divisor_50x|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~20_combout\ = (\divisor_50x|count_tmp\(10) & (\divisor_50x|Add0~19\ $ (GND))) # (!\divisor_50x|count_tmp\(10) & (!\divisor_50x|Add0~19\ & VCC))
-- \divisor_50x|Add0~21\ = CARRY((\divisor_50x|count_tmp\(10) & !\divisor_50x|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(10),
	datad => VCC,
	cin => \divisor_50x|Add0~19\,
	combout => \divisor_50x|Add0~20_combout\,
	cout => \divisor_50x|Add0~21\);

-- Location: FF_X46_Y18_N27
\divisor_50x|count_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(10));

-- Location: LCCOMB_X46_Y18_N28
\divisor_50x|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~22_combout\ = (\divisor_50x|count_tmp\(11) & (!\divisor_50x|Add0~21\)) # (!\divisor_50x|count_tmp\(11) & ((\divisor_50x|Add0~21\) # (GND)))
-- \divisor_50x|Add0~23\ = CARRY((!\divisor_50x|Add0~21\) # (!\divisor_50x|count_tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(11),
	datad => VCC,
	cin => \divisor_50x|Add0~21\,
	combout => \divisor_50x|Add0~22_combout\,
	cout => \divisor_50x|Add0~23\);

-- Location: FF_X46_Y18_N29
\divisor_50x|count_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(11));

-- Location: LCCOMB_X46_Y18_N30
\divisor_50x|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~24_combout\ = (\divisor_50x|count_tmp\(12) & (\divisor_50x|Add0~23\ $ (GND))) # (!\divisor_50x|count_tmp\(12) & (!\divisor_50x|Add0~23\ & VCC))
-- \divisor_50x|Add0~25\ = CARRY((\divisor_50x|count_tmp\(12) & !\divisor_50x|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(12),
	datad => VCC,
	cin => \divisor_50x|Add0~23\,
	combout => \divisor_50x|Add0~24_combout\,
	cout => \divisor_50x|Add0~25\);

-- Location: FF_X46_Y18_N31
\divisor_50x|count_tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(12));

-- Location: LCCOMB_X46_Y17_N0
\divisor_50x|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~26_combout\ = (\divisor_50x|count_tmp\(13) & (!\divisor_50x|Add0~25\)) # (!\divisor_50x|count_tmp\(13) & ((\divisor_50x|Add0~25\) # (GND)))
-- \divisor_50x|Add0~27\ = CARRY((!\divisor_50x|Add0~25\) # (!\divisor_50x|count_tmp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(13),
	datad => VCC,
	cin => \divisor_50x|Add0~25\,
	combout => \divisor_50x|Add0~26_combout\,
	cout => \divisor_50x|Add0~27\);

-- Location: FF_X46_Y17_N1
\divisor_50x|count_tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(13));

-- Location: LCCOMB_X46_Y17_N2
\divisor_50x|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~28_combout\ = (\divisor_50x|count_tmp\(14) & (\divisor_50x|Add0~27\ $ (GND))) # (!\divisor_50x|count_tmp\(14) & (!\divisor_50x|Add0~27\ & VCC))
-- \divisor_50x|Add0~29\ = CARRY((\divisor_50x|count_tmp\(14) & !\divisor_50x|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(14),
	datad => VCC,
	cin => \divisor_50x|Add0~27\,
	combout => \divisor_50x|Add0~28_combout\,
	cout => \divisor_50x|Add0~29\);

-- Location: FF_X46_Y17_N3
\divisor_50x|count_tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(14));

-- Location: LCCOMB_X46_Y17_N4
\divisor_50x|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~30_combout\ = (\divisor_50x|count_tmp\(15) & (!\divisor_50x|Add0~29\)) # (!\divisor_50x|count_tmp\(15) & ((\divisor_50x|Add0~29\) # (GND)))
-- \divisor_50x|Add0~31\ = CARRY((!\divisor_50x|Add0~29\) # (!\divisor_50x|count_tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(15),
	datad => VCC,
	cin => \divisor_50x|Add0~29\,
	combout => \divisor_50x|Add0~30_combout\,
	cout => \divisor_50x|Add0~31\);

-- Location: FF_X46_Y17_N5
\divisor_50x|count_tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(15));

-- Location: LCCOMB_X46_Y17_N6
\divisor_50x|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~32_combout\ = (\divisor_50x|count_tmp\(16) & (\divisor_50x|Add0~31\ $ (GND))) # (!\divisor_50x|count_tmp\(16) & (!\divisor_50x|Add0~31\ & VCC))
-- \divisor_50x|Add0~33\ = CARRY((\divisor_50x|count_tmp\(16) & !\divisor_50x|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(16),
	datad => VCC,
	cin => \divisor_50x|Add0~31\,
	combout => \divisor_50x|Add0~32_combout\,
	cout => \divisor_50x|Add0~33\);

-- Location: FF_X46_Y17_N7
\divisor_50x|count_tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(16));

-- Location: LCCOMB_X46_Y17_N8
\divisor_50x|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~34_combout\ = (\divisor_50x|count_tmp\(17) & (!\divisor_50x|Add0~33\)) # (!\divisor_50x|count_tmp\(17) & ((\divisor_50x|Add0~33\) # (GND)))
-- \divisor_50x|Add0~35\ = CARRY((!\divisor_50x|Add0~33\) # (!\divisor_50x|count_tmp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(17),
	datad => VCC,
	cin => \divisor_50x|Add0~33\,
	combout => \divisor_50x|Add0~34_combout\,
	cout => \divisor_50x|Add0~35\);

-- Location: FF_X46_Y17_N9
\divisor_50x|count_tmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(17));

-- Location: LCCOMB_X46_Y17_N10
\divisor_50x|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~36_combout\ = (\divisor_50x|count_tmp\(18) & (\divisor_50x|Add0~35\ $ (GND))) # (!\divisor_50x|count_tmp\(18) & (!\divisor_50x|Add0~35\ & VCC))
-- \divisor_50x|Add0~37\ = CARRY((\divisor_50x|count_tmp\(18) & !\divisor_50x|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(18),
	datad => VCC,
	cin => \divisor_50x|Add0~35\,
	combout => \divisor_50x|Add0~36_combout\,
	cout => \divisor_50x|Add0~37\);

-- Location: FF_X46_Y17_N11
\divisor_50x|count_tmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(18));

-- Location: LCCOMB_X46_Y17_N12
\divisor_50x|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~38_combout\ = (\divisor_50x|count_tmp\(19) & (!\divisor_50x|Add0~37\)) # (!\divisor_50x|count_tmp\(19) & ((\divisor_50x|Add0~37\) # (GND)))
-- \divisor_50x|Add0~39\ = CARRY((!\divisor_50x|Add0~37\) # (!\divisor_50x|count_tmp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(19),
	datad => VCC,
	cin => \divisor_50x|Add0~37\,
	combout => \divisor_50x|Add0~38_combout\,
	cout => \divisor_50x|Add0~39\);

-- Location: FF_X46_Y17_N13
\divisor_50x|count_tmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(19));

-- Location: LCCOMB_X46_Y17_N14
\divisor_50x|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~40_combout\ = (\divisor_50x|count_tmp\(20) & (\divisor_50x|Add0~39\ $ (GND))) # (!\divisor_50x|count_tmp\(20) & (!\divisor_50x|Add0~39\ & VCC))
-- \divisor_50x|Add0~41\ = CARRY((\divisor_50x|count_tmp\(20) & !\divisor_50x|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(20),
	datad => VCC,
	cin => \divisor_50x|Add0~39\,
	combout => \divisor_50x|Add0~40_combout\,
	cout => \divisor_50x|Add0~41\);

-- Location: FF_X46_Y17_N15
\divisor_50x|count_tmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(20));

-- Location: LCCOMB_X46_Y17_N16
\divisor_50x|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~42_combout\ = (\divisor_50x|count_tmp\(21) & (!\divisor_50x|Add0~41\)) # (!\divisor_50x|count_tmp\(21) & ((\divisor_50x|Add0~41\) # (GND)))
-- \divisor_50x|Add0~43\ = CARRY((!\divisor_50x|Add0~41\) # (!\divisor_50x|count_tmp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(21),
	datad => VCC,
	cin => \divisor_50x|Add0~41\,
	combout => \divisor_50x|Add0~42_combout\,
	cout => \divisor_50x|Add0~43\);

-- Location: FF_X46_Y17_N17
\divisor_50x|count_tmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(21));

-- Location: LCCOMB_X46_Y17_N18
\divisor_50x|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~44_combout\ = (\divisor_50x|count_tmp\(22) & (\divisor_50x|Add0~43\ $ (GND))) # (!\divisor_50x|count_tmp\(22) & (!\divisor_50x|Add0~43\ & VCC))
-- \divisor_50x|Add0~45\ = CARRY((\divisor_50x|count_tmp\(22) & !\divisor_50x|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(22),
	datad => VCC,
	cin => \divisor_50x|Add0~43\,
	combout => \divisor_50x|Add0~44_combout\,
	cout => \divisor_50x|Add0~45\);

-- Location: FF_X46_Y17_N19
\divisor_50x|count_tmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(22));

-- Location: LCCOMB_X46_Y17_N20
\divisor_50x|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~46_combout\ = (\divisor_50x|count_tmp\(23) & (!\divisor_50x|Add0~45\)) # (!\divisor_50x|count_tmp\(23) & ((\divisor_50x|Add0~45\) # (GND)))
-- \divisor_50x|Add0~47\ = CARRY((!\divisor_50x|Add0~45\) # (!\divisor_50x|count_tmp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(23),
	datad => VCC,
	cin => \divisor_50x|Add0~45\,
	combout => \divisor_50x|Add0~46_combout\,
	cout => \divisor_50x|Add0~47\);

-- Location: FF_X46_Y17_N21
\divisor_50x|count_tmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(23));

-- Location: LCCOMB_X46_Y17_N22
\divisor_50x|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~48_combout\ = (\divisor_50x|count_tmp\(24) & (\divisor_50x|Add0~47\ $ (GND))) # (!\divisor_50x|count_tmp\(24) & (!\divisor_50x|Add0~47\ & VCC))
-- \divisor_50x|Add0~49\ = CARRY((\divisor_50x|count_tmp\(24) & !\divisor_50x|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(24),
	datad => VCC,
	cin => \divisor_50x|Add0~47\,
	combout => \divisor_50x|Add0~48_combout\,
	cout => \divisor_50x|Add0~49\);

-- Location: FF_X46_Y17_N23
\divisor_50x|count_tmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(24));

-- Location: LCCOMB_X46_Y17_N24
\divisor_50x|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~50_combout\ = \divisor_50x|Add0~49\ $ (\divisor_50x|count_tmp\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor_50x|count_tmp\(25),
	cin => \divisor_50x|Add0~49\,
	combout => \divisor_50x|Add0~50_combout\);

-- Location: LCCOMB_X46_Y18_N2
\divisor_50x|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~1_combout\ = (!\divisor_50x|Add0~12_combout\ & (\divisor_50x|Add0~10_combout\ & (\divisor_50x|Add0~8_combout\ & !\divisor_50x|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~12_combout\,
	datab => \divisor_50x|Add0~10_combout\,
	datac => \divisor_50x|Add0~8_combout\,
	datad => \divisor_50x|Add0~14_combout\,
	combout => \divisor_50x|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y18_N4
\divisor_50x|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~2_combout\ = (!\divisor_50x|Add0~16_combout\ & (!\divisor_50x|Add0~18_combout\ & (!\divisor_50x|Add0~20_combout\ & !\divisor_50x|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~16_combout\,
	datab => \divisor_50x|Add0~18_combout\,
	datac => \divisor_50x|Add0~20_combout\,
	datad => \divisor_50x|Add0~22_combout\,
	combout => \divisor_50x|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y18_N0
\divisor_50x|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~0_combout\ = (\divisor_50x|Add0~2_combout\ & (!\divisor_50x|Add0~0_combout\ & (!\divisor_50x|Add0~4_combout\ & !\divisor_50x|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~2_combout\,
	datab => \divisor_50x|Add0~0_combout\,
	datac => \divisor_50x|Add0~4_combout\,
	datad => \divisor_50x|Add0~6_combout\,
	combout => \divisor_50x|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y18_N28
\divisor_50x|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~3_combout\ = (!\divisor_50x|Add0~28_combout\ & (!\divisor_50x|Add0~26_combout\ & (!\divisor_50x|Add0~30_combout\ & !\divisor_50x|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~28_combout\,
	datab => \divisor_50x|Add0~26_combout\,
	datac => \divisor_50x|Add0~30_combout\,
	datad => \divisor_50x|Add0~24_combout\,
	combout => \divisor_50x|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y18_N18
\divisor_50x|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~4_combout\ = (\divisor_50x|Equal0~1_combout\ & (\divisor_50x|Equal0~2_combout\ & (\divisor_50x|Equal0~0_combout\ & \divisor_50x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Equal0~1_combout\,
	datab => \divisor_50x|Equal0~2_combout\,
	datac => \divisor_50x|Equal0~0_combout\,
	datad => \divisor_50x|Equal0~3_combout\,
	combout => \divisor_50x|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y18_N10
\divisor_50x|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~5_combout\ = (!\divisor_50x|Add0~34_combout\ & (!\divisor_50x|Add0~32_combout\ & (!\divisor_50x|Add0~36_combout\ & \divisor_50x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~34_combout\,
	datab => \divisor_50x|Add0~32_combout\,
	datac => \divisor_50x|Add0~36_combout\,
	datad => \divisor_50x|Equal0~4_combout\,
	combout => \divisor_50x|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y18_N20
\divisor_50x|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~6_combout\ = (!\divisor_50x|Add0~38_combout\ & (!\divisor_50x|Add0~40_combout\ & (!\divisor_50x|Add0~42_combout\ & \divisor_50x|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~38_combout\,
	datab => \divisor_50x|Add0~40_combout\,
	datac => \divisor_50x|Add0~42_combout\,
	datad => \divisor_50x|Equal0~5_combout\,
	combout => \divisor_50x|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y18_N2
\divisor_50x|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~7_combout\ = (!\divisor_50x|Add0~44_combout\ & \divisor_50x|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|Add0~44_combout\,
	datad => \divisor_50x|Equal0~6_combout\,
	combout => \divisor_50x|Equal0~7_combout\);

-- Location: LCCOMB_X47_Y18_N12
\divisor_50x|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~8_combout\ = (!\divisor_50x|Add0~50_combout\ & (!\divisor_50x|Add0~46_combout\ & (!\divisor_50x|Add0~48_combout\ & \divisor_50x|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~50_combout\,
	datab => \divisor_50x|Add0~46_combout\,
	datac => \divisor_50x|Add0~48_combout\,
	datad => \divisor_50x|Equal0~7_combout\,
	combout => \divisor_50x|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y18_N30
\divisor_50x|out_clk_tmp_up~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|out_clk_tmp_up~feeder_combout\ = \divisor_50x|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|out_clk_tmp_up~feeder_combout\);

-- Location: FF_X47_Y18_N31
\divisor_50x|out_clk_tmp_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|out_clk_tmp_up~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|out_clk_tmp_up~q\);

-- Location: LCCOMB_X44_Y1_N12
\divisor_50x|out_clk_tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|out_clk_tmp~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \divisor_50x|out_clk_tmp~feeder_combout\);

-- Location: LCCOMB_X44_Y1_N24
\divisor_50x|reset_out_clk_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|reset_out_clk_tmp~0_combout\ = (\divisor_50x|out_clk_tmp_up~q\ & !\divisor_50x|reset_out_clk_tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|out_clk_tmp_up~q\,
	datad => \divisor_50x|reset_out_clk_tmp~q\,
	combout => \divisor_50x|reset_out_clk_tmp~0_combout\);

-- Location: LCCOMB_X44_Y1_N20
\divisor_50x|reset_out_clk_tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|reset_out_clk_tmp~feeder_combout\ = \divisor_50x|reset_out_clk_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|reset_out_clk_tmp~0_combout\,
	combout => \divisor_50x|reset_out_clk_tmp~feeder_combout\);

-- Location: FF_X44_Y1_N21
\divisor_50x|reset_out_clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|reset_out_clk_tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|reset_out_clk_tmp~q\);

-- Location: FF_X44_Y1_N13
\divisor_50x|out_clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp_up~q\,
	d => \divisor_50x|out_clk_tmp~feeder_combout\,
	clrn => \divisor_50x|ALT_INV_reset_out_clk_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|out_clk_tmp~q\);

-- Location: CLKCTRL_G18
\divisor_50x|out_clk_tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor_50x|out_clk_tmp~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y49_N14
\u_tx|pulsos_tempo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|pulsos_tempo~0_combout\ = (\u_tx|Add0~0_combout\ & \u_tx|start_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|Add0~0_combout\,
	datad => \u_tx|start_bit~q\,
	combout => \u_tx|pulsos_tempo~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\btn_mais~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_mais,
	o => \btn_mais~input_o\);

-- Location: LCCOMB_X55_Y50_N30
\rising_mais~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rising_mais~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rising_mais~feeder_combout\);

-- Location: LCCOMB_X54_Y50_N16
\reset_mais~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_mais~feeder_combout\ = \rising_mais~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rising_mais~q\,
	combout => \reset_mais~feeder_combout\);

-- Location: FF_X54_Y50_N17
reset_mais : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \reset_mais~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_mais~q\);

-- Location: FF_X55_Y50_N31
rising_mais : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_btn_mais~input_o\,
	d => \rising_mais~feeder_combout\,
	clrn => \ALT_INV_reset_mais~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising_mais~q\);

-- Location: IOIBUF_X51_Y54_N29
\funcao~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funcao,
	o => \funcao~input_o\);

-- Location: LCCOMB_X54_Y50_N30
\iniciar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \iniciar~0_combout\ = (\rising_mais~q\ & \funcao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rising_mais~q\,
	datad => \funcao~input_o\,
	combout => \iniciar~0_combout\);

-- Location: FF_X54_Y50_N31
iniciar : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \iniciar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iniciar~q\);

-- Location: LCCOMB_X55_Y49_N12
\u_tx|transmissao_inciada~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|transmissao_inciada~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_tx|transmissao_inciada~feeder_combout\);

-- Location: LCCOMB_X55_Y49_N6
\u_tx|pulsos_tempo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|pulsos_tempo~5_combout\ = (\u_tx|start_bit~q\ & (\u_tx|Add0~10_combout\ & ((\u_tx|Equal0~2_combout\) # (\u_tx|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal0~2_combout\,
	datab => \u_tx|start_bit~q\,
	datac => \u_tx|Add0~10_combout\,
	datad => \u_tx|Equal0~0_combout\,
	combout => \u_tx|pulsos_tempo~5_combout\);

-- Location: FF_X55_Y49_N7
\u_tx|pulsos_tempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|pulsos_tempo~5_combout\,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|pulsos_tempo\(5));

-- Location: LCCOMB_X56_Y49_N10
\u_tx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add0~0_combout\ = \u_tx|pulsos_tempo\(0) $ (VCC)
-- \u_tx|Add0~1\ = CARRY(\u_tx|pulsos_tempo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|pulsos_tempo\(0),
	datad => VCC,
	combout => \u_tx|Add0~0_combout\,
	cout => \u_tx|Add0~1\);

-- Location: LCCOMB_X56_Y49_N12
\u_tx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add0~2_combout\ = (\u_tx|pulsos_tempo\(1) & (!\u_tx|Add0~1\)) # (!\u_tx|pulsos_tempo\(1) & ((\u_tx|Add0~1\) # (GND)))
-- \u_tx|Add0~3\ = CARRY((!\u_tx|Add0~1\) # (!\u_tx|pulsos_tempo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|pulsos_tempo\(1),
	datad => VCC,
	cin => \u_tx|Add0~1\,
	combout => \u_tx|Add0~2_combout\,
	cout => \u_tx|Add0~3\);

-- Location: LCCOMB_X55_Y49_N26
\u_tx|pulsos_tempo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|pulsos_tempo~1_combout\ = (\u_tx|Add0~2_combout\ & \u_tx|start_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|Add0~2_combout\,
	datad => \u_tx|start_bit~q\,
	combout => \u_tx|pulsos_tempo~1_combout\);

-- Location: FF_X56_Y49_N11
\u_tx|pulsos_tempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \u_tx|pulsos_tempo~1_combout\,
	sload => VCC,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|pulsos_tempo\(1));

-- Location: LCCOMB_X56_Y49_N14
\u_tx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add0~4_combout\ = (\u_tx|pulsos_tempo\(2) & (\u_tx|Add0~3\ $ (GND))) # (!\u_tx|pulsos_tempo\(2) & (!\u_tx|Add0~3\ & VCC))
-- \u_tx|Add0~5\ = CARRY((\u_tx|pulsos_tempo\(2) & !\u_tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|pulsos_tempo\(2),
	datad => VCC,
	cin => \u_tx|Add0~3\,
	combout => \u_tx|Add0~4_combout\,
	cout => \u_tx|Add0~5\);

-- Location: LCCOMB_X55_Y49_N4
\u_tx|pulsos_tempo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|pulsos_tempo~2_combout\ = (\u_tx|Add0~4_combout\ & \u_tx|start_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|Add0~4_combout\,
	datad => \u_tx|start_bit~q\,
	combout => \u_tx|pulsos_tempo~2_combout\);

-- Location: FF_X56_Y49_N13
\u_tx|pulsos_tempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \u_tx|pulsos_tempo~2_combout\,
	sload => VCC,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|pulsos_tempo\(2));

-- Location: LCCOMB_X56_Y49_N16
\u_tx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add0~6_combout\ = (\u_tx|pulsos_tempo\(3) & (!\u_tx|Add0~5\)) # (!\u_tx|pulsos_tempo\(3) & ((\u_tx|Add0~5\) # (GND)))
-- \u_tx|Add0~7\ = CARRY((!\u_tx|Add0~5\) # (!\u_tx|pulsos_tempo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|pulsos_tempo\(3),
	datad => VCC,
	cin => \u_tx|Add0~5\,
	combout => \u_tx|Add0~6_combout\,
	cout => \u_tx|Add0~7\);

-- Location: LCCOMB_X55_Y49_N8
\u_tx|pulsos_tempo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|pulsos_tempo~3_combout\ = (\u_tx|start_bit~q\ & (\u_tx|Add0~6_combout\ & ((\u_tx|Equal0~0_combout\) # (\u_tx|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal0~0_combout\,
	datab => \u_tx|start_bit~q\,
	datac => \u_tx|Equal0~2_combout\,
	datad => \u_tx|Add0~6_combout\,
	combout => \u_tx|pulsos_tempo~3_combout\);

-- Location: FF_X55_Y49_N9
\u_tx|pulsos_tempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|pulsos_tempo~3_combout\,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|pulsos_tempo\(3));

-- Location: LCCOMB_X56_Y49_N18
\u_tx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add0~8_combout\ = (\u_tx|pulsos_tempo\(4) & (\u_tx|Add0~7\ $ (GND))) # (!\u_tx|pulsos_tempo\(4) & (!\u_tx|Add0~7\ & VCC))
-- \u_tx|Add0~9\ = CARRY((\u_tx|pulsos_tempo\(4) & !\u_tx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|pulsos_tempo\(4),
	datad => VCC,
	cin => \u_tx|Add0~7\,
	combout => \u_tx|Add0~8_combout\,
	cout => \u_tx|Add0~9\);

-- Location: LCCOMB_X55_Y49_N16
\u_tx|pulsos_tempo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|pulsos_tempo~4_combout\ = (\u_tx|start_bit~q\ & \u_tx|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|start_bit~q\,
	datad => \u_tx|Add0~8_combout\,
	combout => \u_tx|pulsos_tempo~4_combout\);

-- Location: FF_X55_Y49_N17
\u_tx|pulsos_tempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|pulsos_tempo~4_combout\,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|pulsos_tempo\(4));

-- Location: LCCOMB_X56_Y49_N20
\u_tx|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add0~10_combout\ = (\u_tx|pulsos_tempo\(5) & (!\u_tx|Add0~9\)) # (!\u_tx|pulsos_tempo\(5) & ((\u_tx|Add0~9\) # (GND)))
-- \u_tx|Add0~11\ = CARRY((!\u_tx|Add0~9\) # (!\u_tx|pulsos_tempo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|pulsos_tempo\(5),
	datad => VCC,
	cin => \u_tx|Add0~9\,
	combout => \u_tx|Add0~10_combout\,
	cout => \u_tx|Add0~11\);

-- Location: LCCOMB_X55_Y49_N18
\u_tx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~1_combout\ = (\u_tx|Equal0~0_combout\) # (((\u_tx|Add0~8_combout\) # (!\u_tx|Add0~10_combout\)) # (!\u_tx|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal0~0_combout\,
	datab => \u_tx|Add0~12_combout\,
	datac => \u_tx|Add0~10_combout\,
	datad => \u_tx|Add0~8_combout\,
	combout => \u_tx|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y49_N16
\u_tx|reset~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|reset~1_combout\ = (\u_tx|transmissao_inciada~q\ & (\u_tx|start_bit~q\ & (\u_tx|Equal1~0_combout\ & !\u_tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|transmissao_inciada~q\,
	datab => \u_tx|start_bit~q\,
	datac => \u_tx|Equal1~0_combout\,
	datad => \u_tx|Equal0~1_combout\,
	combout => \u_tx|reset~1_combout\);

-- Location: FF_X54_Y49_N17
\u_tx|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|reset~q\);

-- Location: FF_X55_Y49_N13
\u_tx|transmissao_inciada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iniciar~q\,
	d => \u_tx|transmissao_inciada~feeder_combout\,
	clrn => \u_tx|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|transmissao_inciada~q\);

-- Location: FF_X55_Y49_N15
\u_tx|pulsos_tempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|pulsos_tempo~0_combout\,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|pulsos_tempo\(0));

-- Location: LCCOMB_X55_Y49_N10
\u_tx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~0_combout\ = (\u_tx|Add0~0_combout\) # ((\u_tx|Add0~4_combout\) # ((\u_tx|Add0~2_combout\) # (!\u_tx|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Add0~0_combout\,
	datab => \u_tx|Add0~4_combout\,
	datac => \u_tx|Add0~2_combout\,
	datad => \u_tx|Add0~6_combout\,
	combout => \u_tx|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y49_N24
\u_tx|pulsos_tempo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|pulsos_tempo~6_combout\ = (\u_tx|start_bit~q\ & (\u_tx|Add0~12_combout\ & ((\u_tx|Equal0~0_combout\) # (\u_tx|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal0~0_combout\,
	datab => \u_tx|start_bit~q\,
	datac => \u_tx|Equal0~2_combout\,
	datad => \u_tx|Add0~12_combout\,
	combout => \u_tx|pulsos_tempo~6_combout\);

-- Location: FF_X55_Y49_N25
\u_tx|pulsos_tempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|pulsos_tempo~6_combout\,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|pulsos_tempo\(6));

-- Location: LCCOMB_X56_Y49_N22
\u_tx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add0~12_combout\ = \u_tx|Add0~11\ $ (!\u_tx|pulsos_tempo\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_tx|pulsos_tempo\(6),
	cin => \u_tx|Add0~11\,
	combout => \u_tx|Add0~12_combout\);

-- Location: LCCOMB_X55_Y49_N30
\u_tx|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~2_combout\ = ((\u_tx|Add0~8_combout\) # (!\u_tx|Add0~10_combout\)) # (!\u_tx|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|Add0~12_combout\,
	datac => \u_tx|Add0~10_combout\,
	datad => \u_tx|Add0~8_combout\,
	combout => \u_tx|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y49_N28
\u_tx|reset~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|reset~0_combout\ = (\u_tx|Equal0~2_combout\) # (((\u_tx|Equal0~0_combout\) # (!\u_tx|start_bit~q\)) # (!\u_tx|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal0~2_combout\,
	datab => \u_tx|Equal1~0_combout\,
	datac => \u_tx|start_bit~q\,
	datad => \u_tx|Equal0~0_combout\,
	combout => \u_tx|reset~0_combout\);

-- Location: FF_X55_Y49_N29
\u_tx|start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|reset~0_combout\,
	ena => \u_tx|transmissao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|start_bit~q\);

-- Location: LCCOMB_X54_Y49_N10
\u_tx|index~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|index~0_combout\ = (!\u_tx|index\(0) & ((!\u_tx|start_bit~q\) # (!\u_tx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|Equal1~0_combout\,
	datac => \u_tx|index\(0),
	datad => \u_tx|start_bit~q\,
	combout => \u_tx|index~0_combout\);

-- Location: LCCOMB_X55_Y49_N20
\u_tx|index[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|index[3]~1_combout\ = (\u_tx|transmissao_inciada~q\ & (((!\u_tx|Equal0~2_combout\ & !\u_tx|Equal0~0_combout\)) # (!\u_tx|start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|start_bit~q\,
	datab => \u_tx|transmissao_inciada~q\,
	datac => \u_tx|Equal0~2_combout\,
	datad => \u_tx|Equal0~0_combout\,
	combout => \u_tx|index[3]~1_combout\);

-- Location: FF_X54_Y49_N11
\u_tx|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|index~0_combout\,
	ena => \u_tx|index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|index\(0));

-- Location: LCCOMB_X54_Y49_N0
\u_tx|index~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|index~3_combout\ = (\u_tx|Equal1~0_combout\ & (!\u_tx|start_bit~q\ & (\u_tx|index\(0) $ (\u_tx|index\(1))))) # (!\u_tx|Equal1~0_combout\ & (\u_tx|index\(0) $ ((\u_tx|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|index\(0),
	datab => \u_tx|Equal1~0_combout\,
	datac => \u_tx|index\(1),
	datad => \u_tx|start_bit~q\,
	combout => \u_tx|index~3_combout\);

-- Location: FF_X54_Y49_N1
\u_tx|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|index~3_combout\,
	ena => \u_tx|index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|index\(1));

-- Location: LCCOMB_X54_Y49_N22
\u_tx|index[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|index[2]~4_combout\ = \u_tx|index\(2) $ (((\u_tx|index\(0) & (\u_tx|index[3]~1_combout\ & \u_tx|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|index\(0),
	datab => \u_tx|index[3]~1_combout\,
	datac => \u_tx|index\(2),
	datad => \u_tx|index\(1),
	combout => \u_tx|index[2]~4_combout\);

-- Location: FF_X54_Y49_N23
\u_tx|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|index[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|index\(2));

-- Location: LCCOMB_X54_Y49_N18
\u_tx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Add1~0_combout\ = \u_tx|index\(3) $ (((\u_tx|index\(0) & (\u_tx|index\(2) & \u_tx|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|index\(0),
	datab => \u_tx|index\(3),
	datac => \u_tx|index\(2),
	datad => \u_tx|index\(1),
	combout => \u_tx|Add1~0_combout\);

-- Location: LCCOMB_X54_Y49_N8
\u_tx|index~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|index~2_combout\ = (\u_tx|Add1~0_combout\ & ((!\u_tx|start_bit~q\) # (!\u_tx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|Add1~0_combout\,
	datac => \u_tx|Equal1~0_combout\,
	datad => \u_tx|start_bit~q\,
	combout => \u_tx|index~2_combout\);

-- Location: FF_X54_Y49_N9
\u_tx|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|index~2_combout\,
	ena => \u_tx|index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|index\(3));

-- Location: LCCOMB_X54_Y49_N14
\u_tx|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Equal1~0_combout\ = (!\u_tx|index\(0) & (\u_tx|index\(3) & (!\u_tx|index\(2) & \u_tx|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|index\(0),
	datab => \u_tx|index\(3),
	datac => \u_tx|index\(2),
	datad => \u_tx|index\(1),
	combout => \u_tx|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y49_N4
\u_tx|tx_out_tmp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|tx_out_tmp~4_combout\ = (\u_tx|transmissao_inciada~q\ & (((!\u_tx|Equal1~0_combout\ & !\u_tx|Equal0~1_combout\)) # (!\u_tx|start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal1~0_combout\,
	datab => \u_tx|start_bit~q\,
	datac => \u_tx|Equal0~1_combout\,
	datad => \u_tx|transmissao_inciada~q\,
	combout => \u_tx|tx_out_tmp~4_combout\);

-- Location: LCCOMB_X54_Y50_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = byte_t(0) $ (VCC)
-- \Add1~1\ = CARRY(byte_t(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_t(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X56_Y50_N14
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = byte_t(0) $ (VCC)
-- \Add0~2\ = CARRY(byte_t(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(0),
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X55_Y50_N26
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\rising_mais~q\ & ((\Add0~1_combout\))) # (!\rising_mais~q\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add0~1_combout\,
	datad => \rising_mais~q\,
	combout => \Add0~18_combout\);

-- Location: IOIBUF_X49_Y54_N29
\btn_menos~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_menos,
	o => \btn_menos~input_o\);

-- Location: LCCOMB_X54_Y50_N28
\rising_menos~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rising_menos~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rising_menos~feeder_combout\);

-- Location: LCCOMB_X54_Y50_N18
\reset_menos~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_menos~0_combout\ = (!\rising_mais~q\ & \rising_menos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rising_mais~q\,
	datad => \rising_menos~q\,
	combout => \reset_menos~0_combout\);

-- Location: FF_X54_Y50_N19
reset_menos : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \reset_menos~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_menos~q\);

-- Location: FF_X54_Y50_N29
rising_menos : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_btn_menos~input_o\,
	d => \rising_menos~feeder_combout\,
	clrn => \ALT_INV_reset_menos~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising_menos~q\);

-- Location: LCCOMB_X55_Y50_N6
\byte_t~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_t~0_combout\ = (\rising_mais~q\ & (!\funcao~input_o\)) # (!\rising_mais~q\ & ((\rising_menos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funcao~input_o\,
	datac => \rising_mais~q\,
	datad => \rising_menos~q\,
	combout => \byte_t~0_combout\);

-- Location: FF_X55_Y50_N27
\byte_t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(0));

-- Location: LCCOMB_X54_Y50_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (byte_t(1) & (\Add1~1\ & VCC)) # (!byte_t(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!byte_t(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X56_Y50_N16
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (byte_t(1) & (!\Add0~2\)) # (!byte_t(1) & ((\Add0~2\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~2\) # (!byte_t(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(1),
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X55_Y50_N22
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\rising_mais~q\ & ((\Add0~3_combout\))) # (!\rising_mais~q\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \rising_mais~q\,
	datad => \Add0~3_combout\,
	combout => \Add0~19_combout\);

-- Location: FF_X55_Y50_N23
\byte_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~19_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(1));

-- Location: LCCOMB_X54_Y50_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (byte_t(2) & ((GND) # (!\Add1~3\))) # (!byte_t(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((byte_t(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X56_Y50_N18
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (byte_t(2) & (\Add0~4\ $ (GND))) # (!byte_t(2) & (!\Add0~4\ & VCC))
-- \Add0~6\ = CARRY((byte_t(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X55_Y50_N4
\byte_t~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_t~1_combout\ = (\Add0~5_combout\ & \rising_mais~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~5_combout\,
	datad => \rising_mais~q\,
	combout => \byte_t~1_combout\);

-- Location: LCCOMB_X56_Y50_N20
\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (byte_t(3) & (!\Add0~6\)) # (!byte_t(3) & ((\Add0~6\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~6\) # (!byte_t(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(3),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X56_Y50_N22
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (byte_t(4) & (\Add0~8\ $ (GND))) # (!byte_t(4) & (!\Add0~8\ & VCC))
-- \Add0~10\ = CARRY((byte_t(4) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(4),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X56_Y50_N24
\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (byte_t(5) & (!\Add0~10\)) # (!byte_t(5) & ((\Add0~10\) # (GND)))
-- \Add0~12\ = CARRY((!\Add0~10\) # (!byte_t(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(5),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X56_Y50_N26
\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (byte_t(6) & (\Add0~12\ $ (GND))) # (!byte_t(6) & (!\Add0~12\ & VCC))
-- \Add0~14\ = CARRY((byte_t(6) & !\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(6),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X54_Y50_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (byte_t(5) & (\Add1~9\ & VCC)) # (!byte_t(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!byte_t(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X54_Y50_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (byte_t(6) & ((GND) # (!\Add1~11\))) # (!byte_t(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((byte_t(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X56_Y50_N2
\byte_t~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_t~6_combout\ = (!\byte_t[2]~3_combout\ & ((\rising_mais~q\ & (\Add0~13_combout\)) # (!\rising_mais~q\ & ((\Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \Add1~12_combout\,
	datac => \rising_mais~q\,
	datad => \byte_t[2]~3_combout\,
	combout => \byte_t~6_combout\);

-- Location: FF_X56_Y50_N3
\byte_t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \byte_t~6_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(6));

-- Location: LCCOMB_X54_Y50_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (!byte_t(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => byte_t(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X56_Y50_N28
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = byte_t(7) $ (\Add0~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(7),
	cin => \Add0~14\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X55_Y50_N14
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!byte_t(1) & (!byte_t(6) & (!byte_t(0) & !byte_t(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(1),
	datab => byte_t(6),
	datac => byte_t(0),
	datad => byte_t(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X55_Y50_N12
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (!\rising_mais~q\ & ((!\Equal1~0_combout\) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X55_Y50_N28
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add1~14_combout\ & ((\Add0~0_combout\) # ((\Add0~15_combout\ & \rising_mais~q\)))) # (!\Add1~14_combout\ & (\Add0~15_combout\ & (\rising_mais~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add0~15_combout\,
	datac => \rising_mais~q\,
	datad => \Add0~0_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X55_Y50_N29
\byte_t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~17_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(7));

-- Location: LCCOMB_X55_Y50_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!byte_t(2) & (!byte_t(4) & (!byte_t(7) & !byte_t(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(2),
	datab => byte_t(4),
	datac => byte_t(7),
	datad => byte_t(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X55_Y50_N18
\byte_t[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_t[2]~2_combout\ = (byte_t(5) & (byte_t(1) & (byte_t(0) & \rising_mais~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(5),
	datab => byte_t(1),
	datac => byte_t(0),
	datad => \rising_mais~q\,
	combout => \byte_t[2]~2_combout\);

-- Location: LCCOMB_X55_Y50_N8
\byte_t[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_t[2]~3_combout\ = (byte_t(6) & (\Equal1~0_combout\ & \byte_t[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_t(6),
	datac => \Equal1~0_combout\,
	datad => \byte_t[2]~2_combout\,
	combout => \byte_t[2]~3_combout\);

-- Location: LCCOMB_X55_Y50_N0
\byte_t~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_t~4_combout\ = (!\byte_t[2]~3_combout\ & ((\byte_t~1_combout\) # ((\Add1~4_combout\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \byte_t~1_combout\,
	datac => \byte_t[2]~3_combout\,
	datad => \Add0~0_combout\,
	combout => \byte_t~4_combout\);

-- Location: FF_X55_Y50_N1
\byte_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \byte_t~4_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(2));

-- Location: LCCOMB_X54_Y50_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (byte_t(3) & (\Add1~5\ & VCC)) # (!byte_t(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!byte_t(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X55_Y50_N10
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~7_combout\ & ((\rising_mais~q\) # ((\Add1~6_combout\ & \Add0~0_combout\)))) # (!\Add0~7_combout\ & (\Add1~6_combout\ & ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add1~6_combout\,
	datac => \rising_mais~q\,
	datad => \Add0~0_combout\,
	combout => \Add0~21_combout\);

-- Location: FF_X55_Y50_N11
\byte_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~21_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(3));

-- Location: LCCOMB_X54_Y50_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (byte_t(4) & ((GND) # (!\Add1~7\))) # (!byte_t(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((byte_t(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X55_Y50_N16
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add1~8_combout\ & ((\Add0~0_combout\) # ((\Add0~9_combout\ & \rising_mais~q\)))) # (!\Add1~8_combout\ & (\Add0~9_combout\ & (\rising_mais~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add0~9_combout\,
	datac => \rising_mais~q\,
	datad => \Add0~0_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X55_Y50_N17
\byte_t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(4));

-- Location: LCCOMB_X56_Y50_N0
\byte_t~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_t~5_combout\ = (!\byte_t[2]~3_combout\ & ((\rising_mais~q\ & ((\Add0~11_combout\))) # (!\rising_mais~q\ & (\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add0~11_combout\,
	datac => \rising_mais~q\,
	datad => \byte_t[2]~3_combout\,
	combout => \byte_t~5_combout\);

-- Location: FF_X56_Y50_N1
\byte_t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \byte_t~5_combout\,
	ena => \byte_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_t(5));

-- Location: LCCOMB_X54_Y49_N2
\u_tx|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Mux0~0_combout\ = (\u_tx|index\(0) & (((byte_t(4)) # (\u_tx|index\(1))))) # (!\u_tx|index\(0) & (byte_t(3) & ((!\u_tx|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|index\(0),
	datab => byte_t(3),
	datac => byte_t(4),
	datad => \u_tx|index\(1),
	combout => \u_tx|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y49_N12
\u_tx|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|Mux0~1_combout\ = (\u_tx|Mux0~0_combout\ & (((byte_t(6)) # (!\u_tx|index\(1))))) # (!\u_tx|Mux0~0_combout\ & (byte_t(5) & ((\u_tx|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(5),
	datab => \u_tx|Mux0~0_combout\,
	datac => byte_t(6),
	datad => \u_tx|index\(1),
	combout => \u_tx|Mux0~1_combout\);

-- Location: LCCOMB_X54_Y49_N26
\u_tx|tx_out_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|tx_out_tmp~0_combout\ = (\u_tx|index\(3) & ((byte_t(7)) # ((\u_tx|index\(0))))) # (!\u_tx|index\(3) & (((byte_t(0) & \u_tx|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(7),
	datab => byte_t(0),
	datac => \u_tx|index\(3),
	datad => \u_tx|index\(0),
	combout => \u_tx|tx_out_tmp~0_combout\);

-- Location: LCCOMB_X54_Y49_N30
\u_tx|tx_out_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|tx_out_tmp~1_combout\ = (\u_tx|index\(1) & ((\u_tx|index\(0) & (byte_t(2))) # (!\u_tx|index\(0) & ((byte_t(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|index\(0),
	datab => \u_tx|index\(1),
	datac => byte_t(2),
	datad => byte_t(1),
	combout => \u_tx|tx_out_tmp~1_combout\);

-- Location: LCCOMB_X54_Y49_N24
\u_tx|tx_out_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|tx_out_tmp~2_combout\ = (\u_tx|tx_out_tmp~0_combout\ & (((!\u_tx|index\(3) & \u_tx|tx_out_tmp~1_combout\)) # (!\u_tx|index\(1)))) # (!\u_tx|tx_out_tmp~0_combout\ & (!\u_tx|index\(3) & (\u_tx|tx_out_tmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|tx_out_tmp~0_combout\,
	datab => \u_tx|index\(3),
	datac => \u_tx|tx_out_tmp~1_combout\,
	datad => \u_tx|index\(1),
	combout => \u_tx|tx_out_tmp~2_combout\);

-- Location: LCCOMB_X54_Y49_N28
\u_tx|tx_out_tmp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|tx_out_tmp~3_combout\ = (\u_tx|index\(2) & (\u_tx|Mux0~1_combout\ & (!\u_tx|index\(3)))) # (!\u_tx|index\(2) & (((\u_tx|tx_out_tmp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Mux0~1_combout\,
	datab => \u_tx|index\(3),
	datac => \u_tx|index\(2),
	datad => \u_tx|tx_out_tmp~2_combout\,
	combout => \u_tx|tx_out_tmp~3_combout\);

-- Location: LCCOMB_X54_Y49_N20
\u_tx|tx_out_tmp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_tx|tx_out_tmp~5_combout\ = (\u_tx|tx_out_tmp~4_combout\ & ((!\u_tx|tx_out_tmp~3_combout\))) # (!\u_tx|tx_out_tmp~4_combout\ & (\u_tx|tx_out_tmp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|tx_out_tmp~4_combout\,
	datac => \u_tx|tx_out_tmp~q\,
	datad => \u_tx|tx_out_tmp~3_combout\,
	combout => \u_tx|tx_out_tmp~5_combout\);

-- Location: FF_X54_Y49_N21
\u_tx|tx_out_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_tx|tx_out_tmp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|tx_out_tmp~q\);

-- Location: IOIBUF_X31_Y0_N22
\rx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X44_Y12_N16
\u_rx|recepcao_inciada~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|recepcao_inciada~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_rx|recepcao_inciada~feeder_combout\);

-- Location: FF_X44_Y12_N9
\u_rx|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \u_rx|byte_recebido_tmp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|reset~q\);

-- Location: FF_X44_Y12_N17
\u_rx|recepcao_inciada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rx~input_o\,
	d => \u_rx|recepcao_inciada~feeder_combout\,
	clrn => \u_rx|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|recepcao_inciada~q\);

-- Location: LCCOMB_X45_Y12_N26
\u_rx|pulsos_tempo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|pulsos_tempo~0_combout\ = (\u_rx|Add0~6_combout\ & (!\u_rx|process_0~2_combout\ & ((\u_rx|Equal2~0_combout\) # (!\u_rx|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add0~6_combout\,
	datab => \u_rx|Equal1~1_combout\,
	datac => \u_rx|Equal2~0_combout\,
	datad => \u_rx|process_0~2_combout\,
	combout => \u_rx|pulsos_tempo~0_combout\);

-- Location: FF_X45_Y12_N27
\u_rx|pulsos_tempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|pulsos_tempo~0_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|pulsos_tempo\(3));

-- Location: LCCOMB_X45_Y12_N0
\u_rx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add0~0_combout\ = \u_rx|pulsos_tempo\(0) $ (VCC)
-- \u_rx|Add0~1\ = CARRY(\u_rx|pulsos_tempo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|pulsos_tempo\(0),
	datad => VCC,
	combout => \u_rx|Add0~0_combout\,
	cout => \u_rx|Add0~1\);

-- Location: LCCOMB_X45_Y12_N2
\u_rx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add0~2_combout\ = (\u_rx|pulsos_tempo\(1) & (!\u_rx|Add0~1\)) # (!\u_rx|pulsos_tempo\(1) & ((\u_rx|Add0~1\) # (GND)))
-- \u_rx|Add0~3\ = CARRY((!\u_rx|Add0~1\) # (!\u_rx|pulsos_tempo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|pulsos_tempo\(1),
	datad => VCC,
	cin => \u_rx|Add0~1\,
	combout => \u_rx|Add0~2_combout\,
	cout => \u_rx|Add0~3\);

-- Location: LCCOMB_X45_Y12_N20
\u_rx|pulsos_tempo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|pulsos_tempo~1_combout\ = (\u_rx|Add0~2_combout\ & (!\u_rx|process_0~2_combout\ & ((\u_rx|Equal2~0_combout\) # (!\u_rx|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal2~0_combout\,
	datab => \u_rx|Add0~2_combout\,
	datac => \u_rx|Equal1~1_combout\,
	datad => \u_rx|process_0~2_combout\,
	combout => \u_rx|pulsos_tempo~1_combout\);

-- Location: FF_X45_Y12_N21
\u_rx|pulsos_tempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|pulsos_tempo~1_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|pulsos_tempo\(1));

-- Location: LCCOMB_X45_Y12_N4
\u_rx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add0~4_combout\ = (\u_rx|pulsos_tempo\(2) & (\u_rx|Add0~3\ $ (GND))) # (!\u_rx|pulsos_tempo\(2) & (!\u_rx|Add0~3\ & VCC))
-- \u_rx|Add0~5\ = CARRY((\u_rx|pulsos_tempo\(2) & !\u_rx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|pulsos_tempo\(2),
	datad => VCC,
	cin => \u_rx|Add0~3\,
	combout => \u_rx|Add0~4_combout\,
	cout => \u_rx|Add0~5\);

-- Location: FF_X45_Y12_N5
\u_rx|pulsos_tempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|Add0~4_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|pulsos_tempo\(2));

-- Location: LCCOMB_X45_Y12_N6
\u_rx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add0~6_combout\ = (\u_rx|pulsos_tempo\(3) & (!\u_rx|Add0~5\)) # (!\u_rx|pulsos_tempo\(3) & ((\u_rx|Add0~5\) # (GND)))
-- \u_rx|Add0~7\ = CARRY((!\u_rx|Add0~5\) # (!\u_rx|pulsos_tempo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|pulsos_tempo\(3),
	datad => VCC,
	cin => \u_rx|Add0~5\,
	combout => \u_rx|Add0~6_combout\,
	cout => \u_rx|Add0~7\);

-- Location: LCCOMB_X45_Y12_N16
\u_rx|pulsos_tempo~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|pulsos_tempo~4_combout\ = (!\u_rx|process_0~2_combout\ & (\u_rx|Add0~8_combout\ & ((\u_rx|Equal2~0_combout\) # (!\u_rx|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal2~0_combout\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|Add0~8_combout\,
	datad => \u_rx|Equal1~1_combout\,
	combout => \u_rx|pulsos_tempo~4_combout\);

-- Location: FF_X45_Y12_N17
\u_rx|pulsos_tempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|pulsos_tempo~4_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|pulsos_tempo\(4));

-- Location: LCCOMB_X45_Y12_N8
\u_rx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add0~8_combout\ = (\u_rx|pulsos_tempo\(4) & (\u_rx|Add0~7\ $ (GND))) # (!\u_rx|pulsos_tempo\(4) & (!\u_rx|Add0~7\ & VCC))
-- \u_rx|Add0~9\ = CARRY((\u_rx|pulsos_tempo\(4) & !\u_rx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|pulsos_tempo\(4),
	datad => VCC,
	cin => \u_rx|Add0~7\,
	combout => \u_rx|Add0~8_combout\,
	cout => \u_rx|Add0~9\);

-- Location: LCCOMB_X45_Y12_N24
\u_rx|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Equal1~1_combout\ = (\u_rx|Add0~6_combout\ & (!\u_rx|Add0~8_combout\ & (\u_rx|Equal1~0_combout\ & \u_rx|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add0~6_combout\,
	datab => \u_rx|Add0~8_combout\,
	datac => \u_rx|Equal1~0_combout\,
	datad => \u_rx|Add0~12_combout\,
	combout => \u_rx|Equal1~1_combout\);

-- Location: LCCOMB_X46_Y12_N28
\u_rx|pulsos_tempo~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|pulsos_tempo~5_combout\ = (\u_rx|Add0~12_combout\ & (!\u_rx|process_0~2_combout\ & ((\u_rx|Equal2~0_combout\) # (!\u_rx|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add0~12_combout\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|Equal2~0_combout\,
	datad => \u_rx|Equal1~1_combout\,
	combout => \u_rx|pulsos_tempo~5_combout\);

-- Location: FF_X46_Y12_N29
\u_rx|pulsos_tempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|pulsos_tempo~5_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|pulsos_tempo\(6));

-- Location: LCCOMB_X45_Y12_N10
\u_rx|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add0~10_combout\ = (\u_rx|pulsos_tempo\(5) & (!\u_rx|Add0~9\)) # (!\u_rx|pulsos_tempo\(5) & ((\u_rx|Add0~9\) # (GND)))
-- \u_rx|Add0~11\ = CARRY((!\u_rx|Add0~9\) # (!\u_rx|pulsos_tempo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|pulsos_tempo\(5),
	datad => VCC,
	cin => \u_rx|Add0~9\,
	combout => \u_rx|Add0~10_combout\,
	cout => \u_rx|Add0~11\);

-- Location: LCCOMB_X46_Y12_N2
\u_rx|pulsos_tempo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|pulsos_tempo~3_combout\ = (\u_rx|Add0~10_combout\ & (!\u_rx|process_0~2_combout\ & ((\u_rx|Equal2~0_combout\) # (!\u_rx|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add0~10_combout\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|Equal2~0_combout\,
	datad => \u_rx|Equal1~1_combout\,
	combout => \u_rx|pulsos_tempo~3_combout\);

-- Location: FF_X46_Y12_N3
\u_rx|pulsos_tempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|pulsos_tempo~3_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|pulsos_tempo\(5));

-- Location: LCCOMB_X45_Y12_N12
\u_rx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add0~12_combout\ = \u_rx|Add0~11\ $ (!\u_rx|pulsos_tempo\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|pulsos_tempo\(6),
	cin => \u_rx|Add0~11\,
	combout => \u_rx|Add0~12_combout\);

-- Location: LCCOMB_X46_Y12_N6
\u_rx|start_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|start_bit~0_combout\ = (\u_rx|process_0~2_combout\) # ((\u_rx|start_bit~q\ & ((!\u_rx|Equal1~1_combout\) # (!\u_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal2~0_combout\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|start_bit~q\,
	datad => \u_rx|Equal1~1_combout\,
	combout => \u_rx|start_bit~0_combout\);

-- Location: FF_X46_Y12_N7
\u_rx|start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|start_bit~0_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|start_bit~q\);

-- Location: LCCOMB_X45_Y12_N14
\u_rx|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|process_0~0_combout\ = (!\u_rx|start_bit~q\ & (\u_rx|Add0~0_combout\ & (!\u_rx|Add0~4_combout\ & \u_rx|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|start_bit~q\,
	datab => \u_rx|Add0~0_combout\,
	datac => \u_rx|Add0~4_combout\,
	datad => \u_rx|Add0~10_combout\,
	combout => \u_rx|process_0~0_combout\);

-- Location: LCCOMB_X45_Y12_N28
\u_rx|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|process_0~1_combout\ = (\u_rx|Add0~2_combout\ & !\u_rx|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|Add0~2_combout\,
	datad => \u_rx|Add0~6_combout\,
	combout => \u_rx|process_0~1_combout\);

-- Location: LCCOMB_X45_Y12_N18
\u_rx|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|process_0~2_combout\ = (!\u_rx|Add0~12_combout\ & (\u_rx|Add0~8_combout\ & (\u_rx|process_0~0_combout\ & \u_rx|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add0~12_combout\,
	datab => \u_rx|Add0~8_combout\,
	datac => \u_rx|process_0~0_combout\,
	datad => \u_rx|process_0~1_combout\,
	combout => \u_rx|process_0~2_combout\);

-- Location: LCCOMB_X44_Y12_N4
\u_rx|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Equal1~2_combout\ = (\u_rx|Add0~6_combout\ & (!\u_rx|Add0~8_combout\ & \u_rx|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add0~6_combout\,
	datab => \u_rx|Add0~8_combout\,
	datad => \u_rx|Add0~12_combout\,
	combout => \u_rx|Equal1~2_combout\);

-- Location: LCCOMB_X44_Y12_N24
\u_rx|pulsos_tempo[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|pulsos_tempo[4]~6_combout\ = (!\u_rx|process_0~2_combout\ & (((\u_rx|Equal2~0_combout\) # (!\u_rx|Equal1~2_combout\)) # (!\u_rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal1~0_combout\,
	datab => \u_rx|Equal1~2_combout\,
	datac => \u_rx|Equal2~0_combout\,
	datad => \u_rx|process_0~2_combout\,
	combout => \u_rx|pulsos_tempo[4]~6_combout\);

-- Location: LCCOMB_X44_Y12_N26
\u_rx|index[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|index[0]~4_combout\ = (\u_rx|recepcao_inciada~q\ & ((\u_rx|index\(0) & ((\u_rx|pulsos_tempo[4]~6_combout\))) # (!\u_rx|index\(0) & (!\u_rx|process_0~2_combout\ & !\u_rx|pulsos_tempo[4]~6_combout\)))) # (!\u_rx|recepcao_inciada~q\ & 
-- (((\u_rx|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|recepcao_inciada~q\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|index\(0),
	datad => \u_rx|pulsos_tempo[4]~6_combout\,
	combout => \u_rx|index[0]~4_combout\);

-- Location: FF_X44_Y12_N27
\u_rx|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|index[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|index\(0));

-- Location: LCCOMB_X44_Y12_N10
\u_rx|index[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|index[0]~0_combout\ = (\u_rx|recepcao_inciada~q\ & ((\u_rx|process_0~2_combout\) # ((\u_rx|Equal1~1_combout\ & !\u_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal1~1_combout\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|Equal2~0_combout\,
	datad => \u_rx|recepcao_inciada~q\,
	combout => \u_rx|index[0]~0_combout\);

-- Location: LCCOMB_X44_Y12_N0
\u_rx|index[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|index[1]~2_combout\ = (\u_rx|index[0]~0_combout\ & (!\u_rx|process_0~2_combout\ & (\u_rx|index\(0) $ (\u_rx|index\(1))))) # (!\u_rx|index[0]~0_combout\ & (((\u_rx|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|index\(0),
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|index\(1),
	datad => \u_rx|index[0]~0_combout\,
	combout => \u_rx|index[1]~2_combout\);

-- Location: FF_X44_Y12_N1
\u_rx|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|index[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|index\(1));

-- Location: LCCOMB_X43_Y12_N14
\u_rx|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add1~1_combout\ = \u_rx|index\(2) $ (((\u_rx|index\(0) & \u_rx|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|index\(0),
	datac => \u_rx|index\(1),
	datad => \u_rx|index\(2),
	combout => \u_rx|Add1~1_combout\);

-- Location: LCCOMB_X44_Y12_N12
\u_rx|index[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|index[2]~3_combout\ = (\u_rx|index[0]~0_combout\ & (\u_rx|Add1~1_combout\ & (!\u_rx|process_0~2_combout\))) # (!\u_rx|index[0]~0_combout\ & (((\u_rx|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add1~1_combout\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|index\(2),
	datad => \u_rx|index[0]~0_combout\,
	combout => \u_rx|index[2]~3_combout\);

-- Location: FF_X44_Y12_N13
\u_rx|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|index[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|index\(2));

-- Location: LCCOMB_X43_Y12_N20
\u_rx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Add1~0_combout\ = \u_rx|index\(3) $ (((\u_rx|index\(0) & (\u_rx|index\(2) & \u_rx|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|index\(0),
	datab => \u_rx|index\(3),
	datac => \u_rx|index\(2),
	datad => \u_rx|index\(1),
	combout => \u_rx|Add1~0_combout\);

-- Location: LCCOMB_X44_Y12_N18
\u_rx|index[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|index[3]~1_combout\ = (\u_rx|index[0]~0_combout\ & (\u_rx|Add1~0_combout\ & (!\u_rx|process_0~2_combout\))) # (!\u_rx|index[0]~0_combout\ & (((\u_rx|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add1~0_combout\,
	datab => \u_rx|process_0~2_combout\,
	datac => \u_rx|index\(3),
	datad => \u_rx|index[0]~0_combout\,
	combout => \u_rx|index[3]~1_combout\);

-- Location: FF_X44_Y12_N19
\u_rx|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|index\(3));

-- Location: LCCOMB_X44_Y12_N20
\u_rx|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Equal2~0_combout\ = (!\u_rx|index\(0) & (\u_rx|index\(3) & (!\u_rx|index\(1) & !\u_rx|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|index\(0),
	datab => \u_rx|index\(3),
	datac => \u_rx|index\(1),
	datad => \u_rx|index\(2),
	combout => \u_rx|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y12_N22
\u_rx|pulsos_tempo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|pulsos_tempo~2_combout\ = (\u_rx|Add0~0_combout\ & (!\u_rx|process_0~2_combout\ & ((\u_rx|Equal2~0_combout\) # (!\u_rx|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal2~0_combout\,
	datab => \u_rx|Add0~0_combout\,
	datac => \u_rx|Equal1~1_combout\,
	datad => \u_rx|process_0~2_combout\,
	combout => \u_rx|pulsos_tempo~2_combout\);

-- Location: FF_X45_Y12_N23
\u_rx|pulsos_tempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|pulsos_tempo~2_combout\,
	ena => \u_rx|recepcao_inciada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|pulsos_tempo\(0));

-- Location: LCCOMB_X45_Y12_N30
\u_rx|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Equal1~0_combout\ = (!\u_rx|Add0~0_combout\ & (!\u_rx|Add0~2_combout\ & (!\u_rx|Add0~4_combout\ & \u_rx|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Add0~0_combout\,
	datab => \u_rx|Add0~2_combout\,
	datac => \u_rx|Add0~4_combout\,
	datad => \u_rx|Add0~10_combout\,
	combout => \u_rx|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y12_N22
\u_rx|byte_recebido_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_recebido_tmp~0_combout\ = (\u_rx|Equal1~0_combout\ & (\u_rx|Equal2~0_combout\ & (\u_rx|Equal1~2_combout\ & \u_rx|recepcao_inciada~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal1~0_combout\,
	datab => \u_rx|Equal2~0_combout\,
	datac => \u_rx|Equal1~2_combout\,
	datad => \u_rx|recepcao_inciada~q\,
	combout => \u_rx|byte_recebido_tmp~0_combout\);

-- Location: FF_X44_Y12_N5
\u_rx|byte_recebido_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \u_rx|byte_recebido_tmp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_recebido_tmp~q\);

-- Location: CLKCTRL_G17
\u_rx|byte_recebido_tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_rx|byte_recebido_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_rx|byte_recebido_tmp~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y12_N26
\u_rx|byte_lido[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[6]~1_combout\ = (\u_rx|index\(1) & \u_rx|index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx|index\(1),
	datad => \u_rx|index\(2),
	combout => \u_rx|byte_lido[6]~1_combout\);

-- Location: LCCOMB_X44_Y12_N6
\u_rx|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~0_combout\ = (\u_rx|Equal1~0_combout\ & (!\u_rx|Equal2~0_combout\ & (\u_rx|Equal1~2_combout\ & \u_rx|recepcao_inciada~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal1~0_combout\,
	datab => \u_rx|Equal2~0_combout\,
	datac => \u_rx|Equal1~2_combout\,
	datad => \u_rx|recepcao_inciada~q\,
	combout => \u_rx|Decoder0~0_combout\);

-- Location: LCCOMB_X44_Y12_N8
\u_rx|byte_lido[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[2]~0_combout\ = (\u_rx|Decoder0~0_combout\ & (!\u_rx|index\(0) & !\u_rx|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Decoder0~0_combout\,
	datab => \u_rx|index\(0),
	datad => \u_rx|process_0~2_combout\,
	combout => \u_rx|byte_lido[2]~0_combout\);

-- Location: LCCOMB_X44_Y12_N14
\u_rx|byte_lido[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[6]~2_combout\ = (\u_rx|byte_lido[6]~1_combout\ & ((\u_rx|byte_lido[2]~0_combout\ & (\rx~input_o\)) # (!\u_rx|byte_lido[2]~0_combout\ & ((\u_rx|byte_lido\(6)))))) # (!\u_rx|byte_lido[6]~1_combout\ & (((\u_rx|byte_lido\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|byte_lido[6]~1_combout\,
	datab => \rx~input_o\,
	datac => \u_rx|byte_lido\(6),
	datad => \u_rx|byte_lido[2]~0_combout\,
	combout => \u_rx|byte_lido[6]~2_combout\);

-- Location: FF_X44_Y12_N15
\u_rx|byte_lido[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte_lido[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_lido\(6));

-- Location: LCCOMB_X46_Y12_N20
\u_rx|byte[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[6]~feeder_combout\ = \u_rx|byte_lido\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|byte_lido\(6),
	combout => \u_rx|byte[6]~feeder_combout\);

-- Location: LCCOMB_X46_Y12_N16
\u_rx|byte[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[6]~0_combout\ = (\u_rx|Equal2~0_combout\ & (\u_rx|Equal1~1_combout\ & (\u_rx|recepcao_inciada~q\ & !\u_rx|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal2~0_combout\,
	datab => \u_rx|Equal1~1_combout\,
	datac => \u_rx|recepcao_inciada~q\,
	datad => \u_rx|process_0~2_combout\,
	combout => \u_rx|byte[6]~0_combout\);

-- Location: FF_X46_Y12_N21
\u_rx|byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte[6]~feeder_combout\,
	ena => \u_rx|byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte\(6));

-- Location: FF_X47_Y13_N13
\byte_r_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_rx|byte_recebido_tmp~clkctrl_outclk\,
	asdata => \u_rx|byte\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_r_tmp(6));

-- Location: LCCOMB_X43_Y12_N4
\u_rx|byte_lido[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[4]~3_combout\ = (!\u_rx|index\(1) & \u_rx|index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx|index\(1),
	datad => \u_rx|index\(2),
	combout => \u_rx|byte_lido[4]~3_combout\);

-- Location: LCCOMB_X43_Y12_N18
\u_rx|byte_lido[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[5]~4_combout\ = (\u_rx|index\(0) & (\u_rx|byte_lido[4]~3_combout\ & (!\u_rx|process_0~2_combout\ & \u_rx|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|index\(0),
	datab => \u_rx|byte_lido[4]~3_combout\,
	datac => \u_rx|process_0~2_combout\,
	datad => \u_rx|Decoder0~0_combout\,
	combout => \u_rx|byte_lido[5]~4_combout\);

-- Location: LCCOMB_X43_Y12_N28
\u_rx|byte_lido[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[5]~5_combout\ = (\u_rx|byte_lido[5]~4_combout\ & (\rx~input_o\)) # (!\u_rx|byte_lido[5]~4_combout\ & ((\u_rx|byte_lido\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \u_rx|byte_lido\(5),
	datad => \u_rx|byte_lido[5]~4_combout\,
	combout => \u_rx|byte_lido[5]~5_combout\);

-- Location: FF_X43_Y12_N29
\u_rx|byte_lido[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte_lido[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_lido\(5));

-- Location: LCCOMB_X46_Y12_N26
\u_rx|byte[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[5]~feeder_combout\ = \u_rx|byte_lido\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|byte_lido\(5),
	combout => \u_rx|byte[5]~feeder_combout\);

-- Location: FF_X46_Y12_N27
\u_rx|byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte[5]~feeder_combout\,
	ena => \u_rx|byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte\(5));

-- Location: FF_X47_Y13_N1
\byte_r_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_rx|byte_recebido_tmp~clkctrl_outclk\,
	asdata => \u_rx|byte\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_r_tmp(5));

-- Location: LCCOMB_X44_Y12_N30
\u_rx|byte_lido[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[4]~6_combout\ = (\u_rx|byte_lido[4]~3_combout\ & ((\u_rx|byte_lido[2]~0_combout\ & (\rx~input_o\)) # (!\u_rx|byte_lido[2]~0_combout\ & ((\u_rx|byte_lido\(4)))))) # (!\u_rx|byte_lido[4]~3_combout\ & (((\u_rx|byte_lido\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|byte_lido[4]~3_combout\,
	datab => \rx~input_o\,
	datac => \u_rx|byte_lido\(4),
	datad => \u_rx|byte_lido[2]~0_combout\,
	combout => \u_rx|byte_lido[4]~6_combout\);

-- Location: FF_X44_Y12_N31
\u_rx|byte_lido[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte_lido[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_lido\(4));

-- Location: LCCOMB_X46_Y12_N4
\u_rx|byte[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[4]~feeder_combout\ = \u_rx|byte_lido\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|byte_lido\(4),
	combout => \u_rx|byte[4]~feeder_combout\);

-- Location: FF_X46_Y12_N5
\u_rx|byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte[4]~feeder_combout\,
	ena => \u_rx|byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte\(4));

-- Location: FF_X47_Y13_N31
\byte_r_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_rx|byte_recebido_tmp~clkctrl_outclk\,
	asdata => \u_rx|byte\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_r_tmp(4));

-- Location: LCCOMB_X52_Y13_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = byte_r_tmp(4) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(byte_r_tmp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(4),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X52_Y13_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (byte_r_tmp(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!byte_r_tmp(5) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!byte_r_tmp(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_r_tmp(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X52_Y13_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (byte_r_tmp(6) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!byte_r_tmp(6) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((byte_r_tmp(6) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_r_tmp(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X52_Y13_N28
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X50_Y13_N30
\dezena_r_tmp[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[3]~11_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \dezena_r_tmp[3]~11_combout\);

-- Location: FF_X50_Y37_N29
\update_display[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(7));

-- Location: LCCOMB_X50_Y37_N14
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = update_display(0) $ (VCC)
-- \Add2~1\ = CARRY(update_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => update_display(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: FF_X50_Y37_N15
\update_display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(0));

-- Location: LCCOMB_X50_Y37_N16
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (update_display(1) & (!\Add2~1\)) # (!update_display(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!update_display(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X50_Y37_N17
\update_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(1));

-- Location: LCCOMB_X50_Y37_N18
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (update_display(2) & (\Add2~3\ $ (GND))) # (!update_display(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((update_display(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X50_Y37_N19
\update_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(2));

-- Location: LCCOMB_X50_Y37_N20
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (update_display(3) & (!\Add2~5\)) # (!update_display(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!update_display(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X50_Y37_N21
\update_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(3));

-- Location: LCCOMB_X50_Y37_N22
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (update_display(4) & (\Add2~7\ $ (GND))) # (!update_display(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((update_display(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X50_Y37_N23
\update_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(4));

-- Location: LCCOMB_X50_Y37_N24
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (update_display(5) & (!\Add2~9\)) # (!update_display(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!update_display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X50_Y37_N25
\update_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(5));

-- Location: LCCOMB_X50_Y37_N26
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (update_display(6) & (\Add2~11\ $ (GND))) # (!update_display(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((update_display(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X50_Y37_N10
\update_display~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~4_combout\ = (\Add2~12_combout\ & (((!\Add2~32_combout\) # (!\Equal2~4_combout\)) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~34_combout\,
	datac => \Equal2~4_combout\,
	datad => \Add2~32_combout\,
	combout => \update_display~4_combout\);

-- Location: FF_X50_Y37_N11
\update_display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(6));

-- Location: LCCOMB_X50_Y37_N28
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (update_display(7) & (!\Add2~13\)) # (!update_display(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!update_display(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X50_Y37_N6
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\Add2~14_combout\ & (!\Add2~8_combout\ & (\Add2~12_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~10_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X50_Y37_N12
\update_display~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~3_combout\ = (\Add2~16_combout\ & (((!\Add2~32_combout\) # (!\Equal2~4_combout\)) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~34_combout\,
	datac => \Equal2~4_combout\,
	datad => \Add2~32_combout\,
	combout => \update_display~3_combout\);

-- Location: FF_X50_Y37_N13
\update_display[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(8));

-- Location: LCCOMB_X50_Y37_N30
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (update_display(8) & (\Add2~15\ $ (GND))) # (!update_display(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((update_display(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X50_Y36_N1
\update_display[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(9));

-- Location: LCCOMB_X50_Y36_N0
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (update_display(9) & (!\Add2~17\)) # (!update_display(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!update_display(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X50_Y36_N20
\update_display~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~1_combout\ = (\Add2~22_combout\ & (((!\Equal2~4_combout\) # (!\Add2~32_combout\)) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Add2~34_combout\,
	datac => \Add2~32_combout\,
	datad => \Equal2~4_combout\,
	combout => \update_display~1_combout\);

-- Location: FF_X50_Y36_N21
\update_display[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(11));

-- Location: LCCOMB_X50_Y36_N2
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (update_display(10) & (\Add2~19\ $ (GND))) # (!update_display(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((update_display(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X50_Y36_N30
\update_display~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~2_combout\ = (\Add2~20_combout\ & (((!\Equal2~4_combout\) # (!\Add2~32_combout\)) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Add2~20_combout\,
	datac => \Add2~32_combout\,
	datad => \Equal2~4_combout\,
	combout => \update_display~2_combout\);

-- Location: FF_X50_Y36_N31
\update_display[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(10));

-- Location: LCCOMB_X50_Y36_N4
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (update_display(11) & (!\Add2~21\)) # (!update_display(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!update_display(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X50_Y36_N18
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Add2~16_combout\ & (!\Add2~18_combout\ & (\Add2~22_combout\ & \Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~22_combout\,
	datad => \Add2~20_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X50_Y37_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\Add2~2_combout\ & (!\Add2~0_combout\ & (!\Add2~4_combout\ & !\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~6_combout\,
	combout => \Equal2~0_combout\);

-- Location: FF_X50_Y36_N13
\update_display[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(15));

-- Location: LCCOMB_X50_Y36_N6
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (update_display(12) & (\Add2~23\ $ (GND))) # (!update_display(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((update_display(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X50_Y36_N7
\update_display[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(12));

-- Location: LCCOMB_X50_Y36_N8
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (update_display(13) & (!\Add2~25\)) # (!update_display(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!update_display(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X50_Y36_N9
\update_display[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(13));

-- Location: LCCOMB_X50_Y36_N10
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (update_display(14) & (\Add2~27\ $ (GND))) # (!update_display(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((update_display(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X50_Y36_N11
\update_display[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(14));

-- Location: LCCOMB_X50_Y36_N12
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (update_display(15) & (!\Add2~29\)) # (!update_display(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!update_display(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X50_Y36_N24
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\Add2~30_combout\ & (!\Add2~28_combout\ & (!\Add2~26_combout\ & !\Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \Add2~28_combout\,
	datac => \Add2~26_combout\,
	datad => \Add2~24_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X50_Y37_N4
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\ & (\Equal2~2_combout\ & (\Equal2~0_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X50_Y36_N26
\update_display~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~0_combout\ = (\Add2~32_combout\ & ((!\Equal2~4_combout\) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~34_combout\,
	datac => \Add2~32_combout\,
	datad => \Equal2~4_combout\,
	combout => \update_display~0_combout\);

-- Location: FF_X50_Y36_N27
\update_display[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(16));

-- Location: LCCOMB_X50_Y36_N14
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (update_display(16) & (\Add2~31\ $ (GND))) # (!update_display(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((update_display(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X50_Y36_N28
\update_display~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~5_combout\ = (\Add2~34_combout\ & ((!\Equal2~4_combout\) # (!\Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~34_combout\,
	datac => \Add2~32_combout\,
	datad => \Equal2~4_combout\,
	combout => \update_display~5_combout\);

-- Location: FF_X50_Y36_N29
\update_display[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(17));

-- Location: LCCOMB_X50_Y36_N16
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = \Add2~33\ $ (update_display(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => update_display(17),
	cin => \Add2~33\,
	combout => \Add2~34_combout\);

-- Location: LCCOMB_X50_Y36_N22
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Add2~34_combout\ & (\Add2~32_combout\ & \Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~34_combout\,
	datac => \Add2~32_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~5_combout\);

-- Location: FF_X50_Y13_N31
\dezena_r_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_r_tmp[3]~11_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_r_tmp(3));

-- Location: LCCOMB_X52_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[18]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X52_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[18]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (byte_r_tmp(6) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X51_Y13_N14
\Div0|auto_generated|divider|divider|StageOut[17]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X52_Y13_N8
\Div0|auto_generated|divider|divider|StageOut[17]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (byte_r_tmp(5) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X52_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[16]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (byte_r_tmp(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X52_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[16]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X43_Y12_N16
\u_rx|byte_lido[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[3]~7_combout\ = (\u_rx|index\(0) & (!\u_rx|index\(2) & (!\u_rx|process_0~2_combout\ & \u_rx|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|index\(0),
	datab => \u_rx|index\(2),
	datac => \u_rx|process_0~2_combout\,
	datad => \u_rx|Decoder0~0_combout\,
	combout => \u_rx|byte_lido[3]~7_combout\);

-- Location: LCCOMB_X43_Y12_N22
\u_rx|byte_lido[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[3]~8_combout\ = (\u_rx|index\(1) & ((\u_rx|byte_lido[3]~7_combout\ & (\rx~input_o\)) # (!\u_rx|byte_lido[3]~7_combout\ & ((\u_rx|byte_lido\(3)))))) # (!\u_rx|index\(1) & (((\u_rx|byte_lido\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \u_rx|index\(1),
	datac => \u_rx|byte_lido\(3),
	datad => \u_rx|byte_lido[3]~7_combout\,
	combout => \u_rx|byte_lido[3]~8_combout\);

-- Location: FF_X43_Y12_N23
\u_rx|byte_lido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte_lido[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_lido\(3));

-- Location: LCCOMB_X46_Y12_N22
\u_rx|byte[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[3]~feeder_combout\ = \u_rx|byte_lido\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|byte_lido\(3),
	combout => \u_rx|byte[3]~feeder_combout\);

-- Location: FF_X46_Y12_N23
\u_rx|byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte[3]~feeder_combout\,
	ena => \u_rx|byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte\(3));

-- Location: FF_X47_Y13_N25
\byte_r_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_rx|byte_recebido_tmp~clkctrl_outclk\,
	asdata => \u_rx|byte\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_r_tmp(3));

-- Location: LCCOMB_X52_Y13_N20
\Div0|auto_generated|divider|divider|StageOut[15]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (byte_r_tmp(3) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X52_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[15]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (byte_r_tmp(3) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X52_Y13_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~33_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X52_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X52_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X52_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X52_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X51_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[22]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (byte_r_tmp(4))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(4),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X51_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[22]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X51_Y13_N26
\Div0|auto_generated|divider|divider|StageOut[21]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X51_Y13_N8
\Div0|auto_generated|divider|divider|StageOut[21]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (byte_r_tmp(3) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_r_tmp(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X43_Y12_N10
\u_rx|byte_lido[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[2]~9_combout\ = (\u_rx|index\(1) & !\u_rx|index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx|index\(1),
	datad => \u_rx|index\(2),
	combout => \u_rx|byte_lido[2]~9_combout\);

-- Location: LCCOMB_X44_Y12_N2
\u_rx|byte_lido[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[2]~10_combout\ = (\u_rx|byte_lido[2]~9_combout\ & ((\u_rx|byte_lido[2]~0_combout\ & (\rx~input_o\)) # (!\u_rx|byte_lido[2]~0_combout\ & ((\u_rx|byte_lido\(2)))))) # (!\u_rx|byte_lido[2]~9_combout\ & (((\u_rx|byte_lido\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|byte_lido[2]~9_combout\,
	datab => \rx~input_o\,
	datac => \u_rx|byte_lido\(2),
	datad => \u_rx|byte_lido[2]~0_combout\,
	combout => \u_rx|byte_lido[2]~10_combout\);

-- Location: FF_X44_Y12_N3
\u_rx|byte_lido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte_lido[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_lido\(2));

-- Location: LCCOMB_X46_Y12_N0
\u_rx|byte[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[2]~feeder_combout\ = \u_rx|byte_lido\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|byte_lido\(2),
	combout => \u_rx|byte[2]~feeder_combout\);

-- Location: FF_X46_Y12_N1
\u_rx|byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte[2]~feeder_combout\,
	ena => \u_rx|byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte\(2));

-- Location: LCCOMB_X47_Y12_N2
\byte_r_tmp[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_r_tmp[2]~feeder_combout\ = \u_rx|byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|byte\(2),
	combout => \byte_r_tmp[2]~feeder_combout\);

-- Location: FF_X47_Y12_N3
\byte_r_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_rx|byte_recebido_tmp~clkctrl_outclk\,
	d => \byte_r_tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_r_tmp(2));

-- Location: LCCOMB_X51_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[20]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (byte_r_tmp(2) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X51_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[20]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (byte_r_tmp(2) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X51_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X51_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X51_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X51_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[23]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X51_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[23]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (byte_r_tmp(5))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(5),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X51_Y13_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X51_Y13_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X50_Y13_N22
\Div0|auto_generated|divider|divider|StageOut[28]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X50_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[28]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X50_Y13_N26
\Div0|auto_generated|divider|divider|StageOut[27]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (byte_r_tmp(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(3),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X51_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[27]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X50_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (byte_r_tmp(2) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X50_Y13_N14
\Div0|auto_generated|divider|divider|StageOut[26]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X43_Y12_N24
\u_rx|byte_lido[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[1]~11_combout\ = (\u_rx|index\(1) & (((\u_rx|byte_lido\(1))))) # (!\u_rx|index\(1) & ((\u_rx|byte_lido[3]~7_combout\ & (\rx~input_o\)) # (!\u_rx|byte_lido[3]~7_combout\ & ((\u_rx|byte_lido\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \u_rx|index\(1),
	datac => \u_rx|byte_lido\(1),
	datad => \u_rx|byte_lido[3]~7_combout\,
	combout => \u_rx|byte_lido[1]~11_combout\);

-- Location: FF_X43_Y12_N25
\u_rx|byte_lido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte_lido[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_lido\(1));

-- Location: LCCOMB_X46_Y12_N30
\u_rx|byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[1]~feeder_combout\ = \u_rx|byte_lido\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|byte_lido\(1),
	combout => \u_rx|byte[1]~feeder_combout\);

-- Location: FF_X46_Y12_N31
\u_rx|byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte[1]~feeder_combout\,
	ena => \u_rx|byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte\(1));

-- Location: LCCOMB_X47_Y12_N0
\byte_r_tmp[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_r_tmp[1]~feeder_combout\ = \u_rx|byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|byte\(1),
	combout => \byte_r_tmp[1]~feeder_combout\);

-- Location: FF_X47_Y12_N1
\byte_r_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_rx|byte_recebido_tmp~clkctrl_outclk\,
	d => \byte_r_tmp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_r_tmp(1));

-- Location: LCCOMB_X50_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[25]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (byte_r_tmp(1) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X50_Y13_N16
\Div0|auto_generated|divider|divider|StageOut[25]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (byte_r_tmp(1) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X50_Y13_N0
\dezena_r_tmp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[0]~2_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~45_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datad => VCC,
	cout => \dezena_r_tmp[0]~2_cout\);

-- Location: LCCOMB_X50_Y13_N2
\dezena_r_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[0]~4_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & !\dezena_r_tmp[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \dezena_r_tmp[0]~2_cout\,
	cout => \dezena_r_tmp[0]~4_cout\);

-- Location: LCCOMB_X50_Y13_N4
\dezena_r_tmp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[0]~6_cout\ = CARRY((!\dezena_r_tmp[0]~4_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # (\Div0|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \dezena_r_tmp[0]~4_cout\,
	cout => \dezena_r_tmp[0]~6_cout\);

-- Location: LCCOMB_X50_Y13_N6
\dezena_r_tmp[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[0]~8_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & !\dezena_r_tmp[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datad => VCC,
	cin => \dezena_r_tmp[0]~6_cout\,
	cout => \dezena_r_tmp[0]~8_cout\);

-- Location: LCCOMB_X50_Y13_N8
\dezena_r_tmp[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[0]~9_combout\ = !\dezena_r_tmp[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dezena_r_tmp[0]~8_cout\,
	combout => \dezena_r_tmp[0]~9_combout\);

-- Location: FF_X50_Y13_N9
\dezena_r_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_r_tmp[0]~9_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_r_tmp(0));

-- Location: LCCOMB_X50_Y13_N24
\dezena_r_tmp[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[2]~12_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezena_r_tmp[2]~12_combout\);

-- Location: FF_X50_Y13_N25
\dezena_r_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_r_tmp[2]~12_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_r_tmp(2));

-- Location: LCCOMB_X51_Y13_N0
\dezena_r_tmp[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_r_tmp[1]~13_combout\ = !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \dezena_r_tmp[1]~13_combout\);

-- Location: FF_X51_Y13_N1
\dezena_r_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_r_tmp[1]~13_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_r_tmp(1));

-- Location: LCCOMB_X77_Y34_N20
\display_dezena_r|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_r|out_display[0]~0_combout\ = (dezena_r_tmp(1) & (dezena_r_tmp(3))) # (!dezena_r_tmp(1) & (dezena_r_tmp(2) $ (((!dezena_r_tmp(3) & dezena_r_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_r_tmp(3),
	datab => dezena_r_tmp(0),
	datac => dezena_r_tmp(2),
	datad => dezena_r_tmp(1),
	combout => \display_dezena_r|out_display[0]~0_combout\);

-- Location: LCCOMB_X77_Y34_N2
\display_dezena_r|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_r|out_display[1]~1_combout\ = (dezena_r_tmp(3) & (((dezena_r_tmp(2)) # (dezena_r_tmp(1))))) # (!dezena_r_tmp(3) & (dezena_r_tmp(2) & (dezena_r_tmp(0) $ (dezena_r_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_r_tmp(3),
	datab => dezena_r_tmp(0),
	datac => dezena_r_tmp(2),
	datad => dezena_r_tmp(1),
	combout => \display_dezena_r|out_display[1]~1_combout\);

-- Location: LCCOMB_X77_Y34_N12
\display_dezena_r|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_r|out_display[2]~2_combout\ = (dezena_r_tmp(2) & (!dezena_r_tmp(3))) # (!dezena_r_tmp(2) & (((!dezena_r_tmp(3) & dezena_r_tmp(0))) # (!dezena_r_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_r_tmp(3),
	datab => dezena_r_tmp(0),
	datac => dezena_r_tmp(2),
	datad => dezena_r_tmp(1),
	combout => \display_dezena_r|out_display[2]~2_combout\);

-- Location: LCCOMB_X77_Y34_N14
\display_dezena_r|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_r|out_display[3]~3_combout\ = (dezena_r_tmp(1) & ((dezena_r_tmp(3)) # ((dezena_r_tmp(0) & dezena_r_tmp(2))))) # (!dezena_r_tmp(1) & (dezena_r_tmp(2) $ (((!dezena_r_tmp(3) & dezena_r_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_r_tmp(3),
	datab => dezena_r_tmp(0),
	datac => dezena_r_tmp(2),
	datad => dezena_r_tmp(1),
	combout => \display_dezena_r|out_display[3]~3_combout\);

-- Location: LCCOMB_X77_Y34_N16
\display_dezena_r|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_r|out_display[4]~4_combout\ = (dezena_r_tmp(0)) # ((dezena_r_tmp(1) & (dezena_r_tmp(3))) # (!dezena_r_tmp(1) & ((dezena_r_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_r_tmp(3),
	datab => dezena_r_tmp(0),
	datac => dezena_r_tmp(2),
	datad => dezena_r_tmp(1),
	combout => \display_dezena_r|out_display[4]~4_combout\);

-- Location: LCCOMB_X77_Y34_N10
\display_dezena_r|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_r|out_display[5]~5_combout\ = (dezena_r_tmp(0) & (!dezena_r_tmp(1) & (dezena_r_tmp(3) $ (dezena_r_tmp(2))))) # (!dezena_r_tmp(0) & ((dezena_r_tmp(2) & (!dezena_r_tmp(3))) # (!dezena_r_tmp(2) & ((!dezena_r_tmp(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_r_tmp(3),
	datab => dezena_r_tmp(0),
	datac => dezena_r_tmp(2),
	datad => dezena_r_tmp(1),
	combout => \display_dezena_r|out_display[5]~5_combout\);

-- Location: LCCOMB_X77_Y34_N4
\display_dezena_r|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_r|out_display[6]~6_combout\ = (dezena_r_tmp(2) & ((dezena_r_tmp(3)) # ((dezena_r_tmp(0) & dezena_r_tmp(1))))) # (!dezena_r_tmp(2) & (dezena_r_tmp(3) $ (((!dezena_r_tmp(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_r_tmp(3),
	datab => dezena_r_tmp(0),
	datac => dezena_r_tmp(2),
	datad => dezena_r_tmp(1),
	combout => \display_dezena_r|out_display[6]~6_combout\);

-- Location: LCCOMB_X47_Y13_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = byte_r_tmp(4) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(byte_r_tmp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(4),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X47_Y13_N16
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (byte_r_tmp(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!byte_r_tmp(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!byte_r_tmp(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_r_tmp(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X47_Y13_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (byte_r_tmp(6) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!byte_r_tmp(6) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((byte_r_tmp(6) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X47_Y13_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X47_Y13_N22
\Mod0|auto_generated|divider|divider|StageOut[24]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X47_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[24]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (byte_r_tmp(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_r_tmp(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X47_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[23]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X47_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (byte_r_tmp(5) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_r_tmp(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X47_Y13_N0
\Mod0|auto_generated|divider|divider|StageOut[22]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (byte_r_tmp(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X46_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[22]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X47_Y13_N12
\Mod0|auto_generated|divider|divider|StageOut[21]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (byte_r_tmp(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X47_Y13_N30
\Mod0|auto_generated|divider|divider|StageOut[21]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (byte_r_tmp(3) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X47_Y13_N2
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X47_Y13_N4
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X47_Y13_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X47_Y13_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X47_Y13_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X46_Y13_N20
\Mod0|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (byte_r_tmp(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => byte_r_tmp(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X46_Y13_N18
\Mod0|auto_generated|divider|divider|StageOut[32]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X46_Y13_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (byte_r_tmp(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => byte_r_tmp(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X46_Y13_N16
\Mod0|auto_generated|divider|divider|StageOut[31]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X46_Y13_N22
\Mod0|auto_generated|divider|divider|StageOut[30]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X45_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[30]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((byte_r_tmp(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => byte_r_tmp(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X45_Y13_N16
\Mod0|auto_generated|divider|divider|StageOut[29]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (byte_r_tmp(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X46_Y13_N0
\Mod0|auto_generated|divider|divider|StageOut[29]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X46_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[28]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & byte_r_tmp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => byte_r_tmp(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X46_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[28]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & byte_r_tmp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => byte_r_tmp(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X46_Y13_N2
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X46_Y13_N4
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X46_Y13_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X46_Y13_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X46_Y13_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X46_Y13_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X50_Y13_N20
\Mod0|auto_generated|divider|divider|StageOut[35]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\ = (byte_r_tmp(1) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_r_tmp(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\);

-- Location: LCCOMB_X49_Y13_N2
\Mod0|auto_generated|divider|divider|StageOut[35]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\ = (byte_r_tmp(1) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\);

-- Location: LCCOMB_X49_Y13_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~56_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X46_Y13_N14
\Mod0|auto_generated|divider|divider|StageOut[40]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X45_Y13_N2
\Mod0|auto_generated|divider|divider|StageOut[40]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X49_Y13_N4
\Mod0|auto_generated|divider|divider|StageOut[39]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\);

-- Location: LCCOMB_X45_Y13_N4
\Mod0|auto_generated|divider|divider|StageOut[39]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X49_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[38]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X50_Y13_N18
\Mod0|auto_generated|divider|divider|StageOut[38]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\);

-- Location: LCCOMB_X49_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[37]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\);

-- Location: LCCOMB_X45_Y13_N20
\Mod0|auto_generated|divider|divider|StageOut[37]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (byte_r_tmp(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X49_Y13_N30
\Mod0|auto_generated|divider|divider|StageOut[36]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & byte_r_tmp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => byte_r_tmp(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\);

-- Location: LCCOMB_X49_Y13_N0
\Mod0|auto_generated|divider|divider|StageOut[36]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\);

-- Location: LCCOMB_X49_Y13_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X49_Y13_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X49_Y13_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~60_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X49_Y13_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[39]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X49_Y13_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X49_Y13_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X49_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[43]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (byte_r_tmp(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_r_tmp(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\);

-- Location: FF_X49_Y13_N29
\unidade_r_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[43]~63_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_r_tmp(1));

-- Location: LCCOMB_X43_Y12_N12
\u_rx|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|Equal2~1_combout\ = (!\u_rx|index\(1) & !\u_rx|index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx|index\(1),
	datad => \u_rx|index\(2),
	combout => \u_rx|Equal2~1_combout\);

-- Location: LCCOMB_X44_Y12_N28
\u_rx|byte_lido[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte_lido[0]~12_combout\ = (\u_rx|Equal2~1_combout\ & ((\u_rx|byte_lido[2]~0_combout\ & (\rx~input_o\)) # (!\u_rx|byte_lido[2]~0_combout\ & ((\u_rx|byte_lido\(0)))))) # (!\u_rx|Equal2~1_combout\ & (((\u_rx|byte_lido\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal2~1_combout\,
	datab => \rx~input_o\,
	datac => \u_rx|byte_lido\(0),
	datad => \u_rx|byte_lido[2]~0_combout\,
	combout => \u_rx|byte_lido[0]~12_combout\);

-- Location: FF_X44_Y12_N29
\u_rx|byte_lido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte_lido[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte_lido\(0));

-- Location: LCCOMB_X46_Y12_N12
\u_rx|byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rx|byte[0]~feeder_combout\ = \u_rx|byte_lido\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|byte_lido\(0),
	combout => \u_rx|byte[0]~feeder_combout\);

-- Location: FF_X46_Y12_N13
\u_rx|byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \u_rx|byte[0]~feeder_combout\,
	ena => \u_rx|byte[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|byte\(0));

-- Location: LCCOMB_X47_Y12_N18
\byte_r_tmp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \byte_r_tmp[0]~feeder_combout\ = \u_rx|byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|byte\(0),
	combout => \byte_r_tmp[0]~feeder_combout\);

-- Location: FF_X47_Y12_N19
\byte_r_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_rx|byte_recebido_tmp~clkctrl_outclk\,
	d => \byte_r_tmp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_r_tmp(0));

-- Location: LCCOMB_X47_Y12_N24
\unidade_r_tmp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_r_tmp[0]~feeder_combout\ = byte_r_tmp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => byte_r_tmp(0),
	combout => \unidade_r_tmp[0]~feeder_combout\);

-- Location: FF_X47_Y12_N25
\unidade_r_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \unidade_r_tmp[0]~feeder_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_r_tmp(0));

-- Location: LCCOMB_X49_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[45]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[37]~53_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\);

-- Location: FF_X49_Y13_N25
\unidade_r_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[45]~61_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_r_tmp(3));

-- Location: LCCOMB_X49_Y13_N22
\Mod0|auto_generated|divider|divider|StageOut[44]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~55_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: FF_X49_Y13_N23
\unidade_r_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_r_tmp(2));

-- Location: LCCOMB_X50_Y16_N24
\display_unidade_r|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_r|out_display[0]~0_combout\ = (unidade_r_tmp(1) & (((unidade_r_tmp(3))))) # (!unidade_r_tmp(1) & (unidade_r_tmp(2) $ (((unidade_r_tmp(0) & !unidade_r_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_r_tmp(1),
	datab => unidade_r_tmp(0),
	datac => unidade_r_tmp(3),
	datad => unidade_r_tmp(2),
	combout => \display_unidade_r|out_display[0]~0_combout\);

-- Location: LCCOMB_X50_Y16_N30
\display_unidade_r|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_r|out_display[1]~1_combout\ = (unidade_r_tmp(3) & ((unidade_r_tmp(1)) # ((unidade_r_tmp(2))))) # (!unidade_r_tmp(3) & (unidade_r_tmp(2) & (unidade_r_tmp(1) $ (unidade_r_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_r_tmp(1),
	datab => unidade_r_tmp(0),
	datac => unidade_r_tmp(3),
	datad => unidade_r_tmp(2),
	combout => \display_unidade_r|out_display[1]~1_combout\);

-- Location: LCCOMB_X50_Y16_N4
\display_unidade_r|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_r|out_display[2]~2_combout\ = (unidade_r_tmp(2) & (((!unidade_r_tmp(3))))) # (!unidade_r_tmp(2) & (((unidade_r_tmp(0) & !unidade_r_tmp(3))) # (!unidade_r_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_r_tmp(1),
	datab => unidade_r_tmp(0),
	datac => unidade_r_tmp(3),
	datad => unidade_r_tmp(2),
	combout => \display_unidade_r|out_display[2]~2_combout\);

-- Location: LCCOMB_X50_Y16_N10
\display_unidade_r|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_r|out_display[3]~3_combout\ = (unidade_r_tmp(1) & ((unidade_r_tmp(3)) # ((unidade_r_tmp(0) & unidade_r_tmp(2))))) # (!unidade_r_tmp(1) & (unidade_r_tmp(2) $ (((unidade_r_tmp(0) & !unidade_r_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_r_tmp(1),
	datab => unidade_r_tmp(0),
	datac => unidade_r_tmp(3),
	datad => unidade_r_tmp(2),
	combout => \display_unidade_r|out_display[3]~3_combout\);

-- Location: LCCOMB_X50_Y16_N12
\display_unidade_r|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_r|out_display[4]~4_combout\ = (unidade_r_tmp(0)) # ((unidade_r_tmp(1) & (unidade_r_tmp(3))) # (!unidade_r_tmp(1) & ((unidade_r_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_r_tmp(1),
	datab => unidade_r_tmp(0),
	datac => unidade_r_tmp(3),
	datad => unidade_r_tmp(2),
	combout => \display_unidade_r|out_display[4]~4_combout\);

-- Location: LCCOMB_X50_Y16_N18
\display_unidade_r|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_r|out_display[5]~5_combout\ = (unidade_r_tmp(0) & (!unidade_r_tmp(1) & (unidade_r_tmp(3) $ (unidade_r_tmp(2))))) # (!unidade_r_tmp(0) & ((unidade_r_tmp(2) & ((!unidade_r_tmp(3)))) # (!unidade_r_tmp(2) & (!unidade_r_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_r_tmp(1),
	datab => unidade_r_tmp(0),
	datac => unidade_r_tmp(3),
	datad => unidade_r_tmp(2),
	combout => \display_unidade_r|out_display[5]~5_combout\);

-- Location: LCCOMB_X50_Y16_N8
\display_unidade_r|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_r|out_display[6]~6_combout\ = (unidade_r_tmp(1) & ((unidade_r_tmp(3)) # ((unidade_r_tmp(0) & unidade_r_tmp(2))))) # (!unidade_r_tmp(1) & ((unidade_r_tmp(3) $ (!unidade_r_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_r_tmp(1),
	datab => unidade_r_tmp(0),
	datac => unidade_r_tmp(3),
	datad => unidade_r_tmp(2),
	combout => \display_unidade_r|out_display[6]~6_combout\);

-- Location: LCCOMB_X56_Y50_N4
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = byte_t(4) $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(byte_t(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(4),
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X56_Y50_N6
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (byte_t(5) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!byte_t(5) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!byte_t(5) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(5),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X56_Y50_N8
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (byte_t(6) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!byte_t(6) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((byte_t(6) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(6),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X56_Y50_N10
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X56_Y50_N30
\Div1|auto_generated|divider|divider|StageOut[18]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X56_Y50_N12
\Div1|auto_generated|divider|divider|StageOut[18]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~26_combout\ = (byte_t(6) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_t(6),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X56_Y47_N10
\Div1|auto_generated|divider|divider|StageOut[17]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~29_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X56_Y47_N0
\Div1|auto_generated|divider|divider|StageOut[17]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & byte_t(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => byte_t(5),
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X55_Y50_N20
\Div1|auto_generated|divider|divider|StageOut[16]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & byte_t(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => byte_t(4),
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X56_Y47_N28
\Div1|auto_generated|divider|divider|StageOut[16]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~31_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X56_Y47_N30
\Div1|auto_generated|divider|divider|StageOut[15]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & byte_t(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => byte_t(3),
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X56_Y47_N8
\Div1|auto_generated|divider|divider|StageOut[15]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~33_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & byte_t(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => byte_t(3),
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X56_Y47_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~33_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X56_Y47_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~30_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~31_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~31_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X56_Y47_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X56_Y47_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~27_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X56_Y47_N24
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X54_Y47_N12
\Div1|auto_generated|divider|divider|StageOut[22]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((byte_t(4)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => byte_t(4),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X56_Y47_N12
\Div1|auto_generated|divider|divider|StageOut[22]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X56_Y47_N6
\Div1|auto_generated|divider|divider|StageOut[21]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~36_combout\ = (byte_t(3) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X56_Y47_N14
\Div1|auto_generated|divider|divider|StageOut[21]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X56_Y47_N4
\Div1|auto_generated|divider|divider|StageOut[20]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~39_combout\ = (byte_t(2) & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_t(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X54_Y47_N6
\Div1|auto_generated|divider|divider|StageOut[20]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~38_combout\ = (byte_t(2) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_t(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X55_Y47_N4
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X55_Y47_N6
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~36_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~37_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~37_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~36_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X55_Y47_N8
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~35_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~35_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X56_Y47_N2
\Div1|auto_generated|divider|divider|StageOut[23]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~34_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X56_Y47_N26
\Div1|auto_generated|divider|divider|StageOut[23]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((byte_t(5)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => byte_t(5),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X55_Y47_N10
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~34_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~47_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X55_Y47_N12
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X55_Y47_N0
\Div1|auto_generated|divider|divider|StageOut[28]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X55_Y47_N2
\Div1|auto_generated|divider|divider|StageOut[28]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X55_Y47_N30
\Div1|auto_generated|divider|divider|StageOut[27]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X55_Y47_N14
\Div1|auto_generated|divider|divider|StageOut[27]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (byte_t(3))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(3),
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X55_Y47_N18
\Div1|auto_generated|divider|divider|StageOut[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~42_combout\ = (byte_t(2) & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X55_Y47_N16
\Div1|auto_generated|divider|divider|StageOut[26]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X54_Y47_N14
\Div1|auto_generated|divider|divider|StageOut[25]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~45_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & byte_t(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => byte_t(1),
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X54_Y47_N28
\Div1|auto_generated|divider|divider|StageOut[25]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & byte_t(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => byte_t(1),
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X55_Y47_N20
\dezena_t_tmp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[0]~2_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~45_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datad => VCC,
	cout => \dezena_t_tmp[0]~2_cout\);

-- Location: LCCOMB_X55_Y47_N22
\dezena_t_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[0]~4_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~42_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~43_combout\ & !\dezena_t_tmp[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \dezena_t_tmp[0]~2_cout\,
	cout => \dezena_t_tmp[0]~4_cout\);

-- Location: LCCOMB_X55_Y47_N24
\dezena_t_tmp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[0]~6_cout\ = CARRY((!\dezena_t_tmp[0]~4_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~41_combout\) # (\Div1|auto_generated|divider|divider|StageOut[27]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => VCC,
	cin => \dezena_t_tmp[0]~4_cout\,
	cout => \dezena_t_tmp[0]~6_cout\);

-- Location: LCCOMB_X55_Y47_N26
\dezena_t_tmp[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[0]~8_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~40_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~46_combout\ & !\dezena_t_tmp[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datad => VCC,
	cin => \dezena_t_tmp[0]~6_cout\,
	cout => \dezena_t_tmp[0]~8_cout\);

-- Location: LCCOMB_X55_Y47_N28
\dezena_t_tmp[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[0]~9_combout\ = !\dezena_t_tmp[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dezena_t_tmp[0]~8_cout\,
	combout => \dezena_t_tmp[0]~9_combout\);

-- Location: FF_X55_Y47_N29
\dezena_t_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_t_tmp[0]~9_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_t_tmp(0));

-- Location: LCCOMB_X56_Y49_N26
\dezena_t_tmp[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[2]~12_combout\ = !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezena_t_tmp[2]~12_combout\);

-- Location: FF_X56_Y49_N27
\dezena_t_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_t_tmp[2]~12_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_t_tmp(2));

-- Location: LCCOMB_X54_Y47_N24
\dezena_t_tmp[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[1]~13_combout\ = !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \dezena_t_tmp[1]~13_combout\);

-- Location: FF_X54_Y47_N25
\dezena_t_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_t_tmp[1]~13_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_t_tmp(1));

-- Location: LCCOMB_X56_Y49_N0
\dezena_t_tmp[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_t_tmp[3]~11_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \dezena_t_tmp[3]~11_combout\);

-- Location: FF_X56_Y49_N1
\dezena_t_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_t_tmp[3]~11_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_t_tmp(3));

-- Location: LCCOMB_X62_Y50_N4
\display_dezena_t|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_t|out_display[0]~0_combout\ = (dezena_t_tmp(1) & (((dezena_t_tmp(3))))) # (!dezena_t_tmp(1) & (dezena_t_tmp(2) $ (((dezena_t_tmp(0) & !dezena_t_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_t_tmp(0),
	datab => dezena_t_tmp(2),
	datac => dezena_t_tmp(1),
	datad => dezena_t_tmp(3),
	combout => \display_dezena_t|out_display[0]~0_combout\);

-- Location: LCCOMB_X62_Y50_N30
\display_dezena_t|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_t|out_display[1]~1_combout\ = (dezena_t_tmp(2) & ((dezena_t_tmp(3)) # (dezena_t_tmp(0) $ (dezena_t_tmp(1))))) # (!dezena_t_tmp(2) & (((dezena_t_tmp(1) & dezena_t_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_t_tmp(0),
	datab => dezena_t_tmp(2),
	datac => dezena_t_tmp(1),
	datad => dezena_t_tmp(3),
	combout => \display_dezena_t|out_display[1]~1_combout\);

-- Location: LCCOMB_X62_Y50_N8
\display_dezena_t|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_t|out_display[2]~2_combout\ = (dezena_t_tmp(2) & (((!dezena_t_tmp(3))))) # (!dezena_t_tmp(2) & (((dezena_t_tmp(0) & !dezena_t_tmp(3))) # (!dezena_t_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_t_tmp(0),
	datab => dezena_t_tmp(2),
	datac => dezena_t_tmp(1),
	datad => dezena_t_tmp(3),
	combout => \display_dezena_t|out_display[2]~2_combout\);

-- Location: LCCOMB_X62_Y50_N10
\display_dezena_t|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_t|out_display[3]~3_combout\ = (dezena_t_tmp(1) & ((dezena_t_tmp(3)) # ((dezena_t_tmp(0) & dezena_t_tmp(2))))) # (!dezena_t_tmp(1) & (dezena_t_tmp(2) $ (((dezena_t_tmp(0) & !dezena_t_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_t_tmp(0),
	datab => dezena_t_tmp(2),
	datac => dezena_t_tmp(1),
	datad => dezena_t_tmp(3),
	combout => \display_dezena_t|out_display[3]~3_combout\);

-- Location: LCCOMB_X62_Y50_N12
\display_dezena_t|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_t|out_display[4]~4_combout\ = (dezena_t_tmp(0)) # ((dezena_t_tmp(1) & ((dezena_t_tmp(3)))) # (!dezena_t_tmp(1) & (dezena_t_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_t_tmp(0),
	datab => dezena_t_tmp(2),
	datac => dezena_t_tmp(1),
	datad => dezena_t_tmp(3),
	combout => \display_dezena_t|out_display[4]~4_combout\);

-- Location: LCCOMB_X62_Y50_N22
\display_dezena_t|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_t|out_display[5]~5_combout\ = (dezena_t_tmp(0) & (!dezena_t_tmp(1) & (dezena_t_tmp(2) $ (dezena_t_tmp(3))))) # (!dezena_t_tmp(0) & ((dezena_t_tmp(2) & ((!dezena_t_tmp(3)))) # (!dezena_t_tmp(2) & (!dezena_t_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_t_tmp(0),
	datab => dezena_t_tmp(2),
	datac => dezena_t_tmp(1),
	datad => dezena_t_tmp(3),
	combout => \display_dezena_t|out_display[5]~5_combout\);

-- Location: LCCOMB_X62_Y50_N24
\display_dezena_t|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_t|out_display[6]~6_combout\ = (dezena_t_tmp(2) & ((dezena_t_tmp(3)) # ((dezena_t_tmp(0) & dezena_t_tmp(1))))) # (!dezena_t_tmp(2) & ((dezena_t_tmp(1) $ (!dezena_t_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_t_tmp(0),
	datab => dezena_t_tmp(2),
	datac => dezena_t_tmp(1),
	datad => dezena_t_tmp(3),
	combout => \display_dezena_t|out_display[6]~6_combout\);

-- Location: LCCOMB_X56_Y52_N20
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = byte_t(4) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(byte_t(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_t(4),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X56_Y52_N22
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (byte_t(5) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!byte_t(5) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!byte_t(5) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_t(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X56_Y52_N24
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (byte_t(6) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!byte_t(6) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((byte_t(6) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(6),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X56_Y52_N26
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X56_Y52_N6
\Mod1|auto_generated|divider|divider|StageOut[24]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X56_Y52_N28
\Mod1|auto_generated|divider|divider|StageOut[24]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & byte_t(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => byte_t(6),
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X56_Y52_N30
\Mod1|auto_generated|divider|divider|StageOut[23]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X56_Y52_N4
\Mod1|auto_generated|divider|divider|StageOut[23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & byte_t(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => byte_t(5),
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X55_Y52_N14
\Mod1|auto_generated|divider|divider|StageOut[22]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\ = (byte_t(4) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_t(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X56_Y52_N18
\Mod1|auto_generated|divider|divider|StageOut[22]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X55_Y52_N16
\Mod1|auto_generated|divider|divider|StageOut[21]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\ = (byte_t(3) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_t(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X56_Y52_N0
\Mod1|auto_generated|divider|divider|StageOut[21]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & byte_t(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => byte_t(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X56_Y52_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X56_Y52_N10
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X56_Y52_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X56_Y52_N14
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X56_Y52_N16
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X56_Y52_N2
\Mod1|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (byte_t(6))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(6),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X57_Y52_N0
\Mod1|auto_generated|divider|divider|StageOut[32]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X55_Y52_N30
\Mod1|auto_generated|divider|divider|StageOut[31]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X57_Y52_N28
\Mod1|auto_generated|divider|divider|StageOut[31]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (byte_t(5))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => byte_t(5),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X57_Y52_N30
\Mod1|auto_generated|divider|divider|StageOut[30]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X57_Y52_N2
\Mod1|auto_generated|divider|divider|StageOut[30]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (byte_t(4))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => byte_t(4),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X57_Y52_N22
\Mod1|auto_generated|divider|divider|StageOut[29]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X57_Y52_N4
\Mod1|auto_generated|divider|divider|StageOut[29]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & byte_t(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => byte_t(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X55_Y52_N20
\Mod1|auto_generated|divider|divider|StageOut[28]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (byte_t(2) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_t(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X57_Y52_N24
\Mod1|auto_generated|divider|divider|StageOut[28]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\ = (byte_t(2) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_t(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X57_Y52_N6
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y52_N8
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y52_N10
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y52_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X57_Y52_N14
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X57_Y52_N16
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X58_Y52_N26
\Mod1|auto_generated|divider|divider|StageOut[36]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & byte_t(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => byte_t(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\);

-- Location: LCCOMB_X58_Y52_N0
\Mod1|auto_generated|divider|divider|StageOut[36]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\);

-- Location: LCCOMB_X58_Y52_N22
\Mod1|auto_generated|divider|divider|StageOut[35]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~56_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & byte_t(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => byte_t(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~56_combout\);

-- Location: LCCOMB_X58_Y52_N20
\Mod1|auto_generated|divider|divider|StageOut[35]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~57_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & byte_t(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => byte_t(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~57_combout\);

-- Location: LCCOMB_X58_Y52_N4
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[35]~56_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~57_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[35]~56_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~56_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~57_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X58_Y52_N6
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X57_Y52_N26
\Mod1|auto_generated|divider|divider|StageOut[40]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X55_Y52_N2
\Mod1|auto_generated|divider|divider|StageOut[40]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X58_Y52_N30
\Mod1|auto_generated|divider|divider|StageOut[39]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~59_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~59_combout\);

-- Location: LCCOMB_X57_Y52_N18
\Mod1|auto_generated|divider|divider|StageOut[39]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X59_Y52_N20
\Mod1|auto_generated|divider|divider|StageOut[38]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X57_Y52_N20
\Mod1|auto_generated|divider|divider|StageOut[38]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~60_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~60_combout\);

-- Location: LCCOMB_X59_Y52_N2
\Mod1|auto_generated|divider|divider|StageOut[37]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((byte_t(3)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => byte_t(3),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X58_Y52_N24
\Mod1|auto_generated|divider|divider|StageOut[37]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\);

-- Location: LCCOMB_X58_Y52_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X58_Y52_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[38]~66_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[38]~60_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~60_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y52_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[39]~59_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[39]~65_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[39]~59_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X58_Y52_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X58_Y52_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X58_Y52_N2
\Mod1|auto_generated|divider|divider|StageOut[44]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~55_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: FF_X58_Y52_N3
\unidade_t_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_t_tmp(2));

-- Location: LCCOMB_X58_Y52_N28
\Mod1|auto_generated|divider|divider|StageOut[45]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~53_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\);

-- Location: FF_X58_Y52_N29
\unidade_t_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_t_tmp(3));

-- Location: LCCOMB_X56_Y49_N4
\unidade_t_tmp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_t_tmp[0]~feeder_combout\ = byte_t(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => byte_t(0),
	combout => \unidade_t_tmp[0]~feeder_combout\);

-- Location: FF_X56_Y49_N5
\unidade_t_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \unidade_t_tmp[0]~feeder_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_t_tmp(0));

-- Location: LCCOMB_X58_Y52_N18
\Mod1|auto_generated|divider|divider|StageOut[43]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (byte_t(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_t(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\);

-- Location: FF_X58_Y52_N19
\unidade_t_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_t_tmp(1));

-- Location: LCCOMB_X59_Y52_N28
\display_unidade_t|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_t|out_display[0]~0_combout\ = (unidade_t_tmp(1) & (((unidade_t_tmp(3))))) # (!unidade_t_tmp(1) & (unidade_t_tmp(2) $ (((!unidade_t_tmp(3) & unidade_t_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_t_tmp(2),
	datab => unidade_t_tmp(3),
	datac => unidade_t_tmp(0),
	datad => unidade_t_tmp(1),
	combout => \display_unidade_t|out_display[0]~0_combout\);

-- Location: LCCOMB_X59_Y52_N6
\display_unidade_t|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_t|out_display[1]~1_combout\ = (unidade_t_tmp(2) & ((unidade_t_tmp(3)) # (unidade_t_tmp(0) $ (unidade_t_tmp(1))))) # (!unidade_t_tmp(2) & (unidade_t_tmp(3) & ((unidade_t_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_t_tmp(2),
	datab => unidade_t_tmp(3),
	datac => unidade_t_tmp(0),
	datad => unidade_t_tmp(1),
	combout => \display_unidade_t|out_display[1]~1_combout\);

-- Location: LCCOMB_X55_Y52_N12
\display_unidade_t|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_t|out_display[2]~2_combout\ = (unidade_t_tmp(2) & (((!unidade_t_tmp(3))))) # (!unidade_t_tmp(2) & (((unidade_t_tmp(0) & !unidade_t_tmp(3))) # (!unidade_t_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_t_tmp(0),
	datab => unidade_t_tmp(1),
	datac => unidade_t_tmp(3),
	datad => unidade_t_tmp(2),
	combout => \display_unidade_t|out_display[2]~2_combout\);

-- Location: LCCOMB_X59_Y52_N12
\display_unidade_t|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_t|out_display[3]~3_combout\ = (unidade_t_tmp(1) & ((unidade_t_tmp(3)) # ((unidade_t_tmp(2) & unidade_t_tmp(0))))) # (!unidade_t_tmp(1) & (unidade_t_tmp(2) $ (((!unidade_t_tmp(3) & unidade_t_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_t_tmp(2),
	datab => unidade_t_tmp(3),
	datac => unidade_t_tmp(0),
	datad => unidade_t_tmp(1),
	combout => \display_unidade_t|out_display[3]~3_combout\);

-- Location: LCCOMB_X59_Y52_N18
\display_unidade_t|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_t|out_display[4]~4_combout\ = (unidade_t_tmp(0)) # ((unidade_t_tmp(1) & ((unidade_t_tmp(3)))) # (!unidade_t_tmp(1) & (unidade_t_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_t_tmp(2),
	datab => unidade_t_tmp(3),
	datac => unidade_t_tmp(0),
	datad => unidade_t_tmp(1),
	combout => \display_unidade_t|out_display[4]~4_combout\);

-- Location: LCCOMB_X59_Y52_N24
\display_unidade_t|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_t|out_display[5]~5_combout\ = (unidade_t_tmp(2) & (!unidade_t_tmp(3) & ((!unidade_t_tmp(1)) # (!unidade_t_tmp(0))))) # (!unidade_t_tmp(2) & (!unidade_t_tmp(1) & ((unidade_t_tmp(3)) # (!unidade_t_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_t_tmp(2),
	datab => unidade_t_tmp(3),
	datac => unidade_t_tmp(0),
	datad => unidade_t_tmp(1),
	combout => \display_unidade_t|out_display[5]~5_combout\);

-- Location: LCCOMB_X59_Y52_N26
\display_unidade_t|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_t|out_display[6]~6_combout\ = (unidade_t_tmp(2) & ((unidade_t_tmp(3)) # ((unidade_t_tmp(0) & unidade_t_tmp(1))))) # (!unidade_t_tmp(2) & (unidade_t_tmp(3) $ (((!unidade_t_tmp(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_t_tmp(2),
	datab => unidade_t_tmp(3),
	datac => unidade_t_tmp(0),
	datad => unidade_t_tmp(1),
	combout => \display_unidade_t|out_display[6]~6_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_tx <= \tx~output_o\;

ww_dezena_r(0) <= \dezena_r[0]~output_o\;

ww_dezena_r(1) <= \dezena_r[1]~output_o\;

ww_dezena_r(2) <= \dezena_r[2]~output_o\;

ww_dezena_r(3) <= \dezena_r[3]~output_o\;

ww_dezena_r(4) <= \dezena_r[4]~output_o\;

ww_dezena_r(5) <= \dezena_r[5]~output_o\;

ww_dezena_r(6) <= \dezena_r[6]~output_o\;

ww_unidade_r(0) <= \unidade_r[0]~output_o\;

ww_unidade_r(1) <= \unidade_r[1]~output_o\;

ww_unidade_r(2) <= \unidade_r[2]~output_o\;

ww_unidade_r(3) <= \unidade_r[3]~output_o\;

ww_unidade_r(4) <= \unidade_r[4]~output_o\;

ww_unidade_r(5) <= \unidade_r[5]~output_o\;

ww_unidade_r(6) <= \unidade_r[6]~output_o\;

ww_dezena_t(0) <= \dezena_t[0]~output_o\;

ww_dezena_t(1) <= \dezena_t[1]~output_o\;

ww_dezena_t(2) <= \dezena_t[2]~output_o\;

ww_dezena_t(3) <= \dezena_t[3]~output_o\;

ww_dezena_t(4) <= \dezena_t[4]~output_o\;

ww_dezena_t(5) <= \dezena_t[5]~output_o\;

ww_dezena_t(6) <= \dezena_t[6]~output_o\;

ww_unidade_t(0) <= \unidade_t[0]~output_o\;

ww_unidade_t(1) <= \unidade_t[1]~output_o\;

ww_unidade_t(2) <= \unidade_t[2]~output_o\;

ww_unidade_t(3) <= \unidade_t[3]~output_o\;

ww_unidade_t(4) <= \unidade_t[4]~output_o\;

ww_unidade_t(5) <= \unidade_t[5]~output_o\;

ww_unidade_t(6) <= \unidade_t[6]~output_o\;
END structure;


