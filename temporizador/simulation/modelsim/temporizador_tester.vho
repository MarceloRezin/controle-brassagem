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

-- DATE "05/15/2020 14:35:39"

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

ENTITY 	temporizador_tester IS
    PORT (
	clk_50MHZ : IN std_logic;
	iniciar : IN std_logic;
	dezena : OUT std_logic_vector(6 DOWNTO 0);
	unidade : OUT std_logic_vector(6 DOWNTO 0);
	alteracao : OUT std_logic;
	fim : OUT std_logic
	);
END temporizador_tester;

-- Design Ports Information
-- dezena[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alteracao	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHZ	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF temporizador_tester IS
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
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_alteracao : std_logic;
SIGNAL ww_fim : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dezena[0]~output_o\ : std_logic;
SIGNAL \dezena[1]~output_o\ : std_logic;
SIGNAL \dezena[2]~output_o\ : std_logic;
SIGNAL \dezena[3]~output_o\ : std_logic;
SIGNAL \dezena[4]~output_o\ : std_logic;
SIGNAL \dezena[5]~output_o\ : std_logic;
SIGNAL \dezena[6]~output_o\ : std_logic;
SIGNAL \unidade[0]~output_o\ : std_logic;
SIGNAL \unidade[1]~output_o\ : std_logic;
SIGNAL \unidade[2]~output_o\ : std_logic;
SIGNAL \unidade[3]~output_o\ : std_logic;
SIGNAL \unidade[4]~output_o\ : std_logic;
SIGNAL \unidade[5]~output_o\ : std_logic;
SIGNAL \unidade[6]~output_o\ : std_logic;
SIGNAL \alteracao~output_o\ : std_logic;
SIGNAL \fim~output_o\ : std_logic;
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
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \update_display[0]~feeder_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \update_display[1]~feeder_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~1\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~3\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~4_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~5\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~6_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~7\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~8_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~9\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~10_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~11\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~12_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp~6_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~13\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~14_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~15\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~16_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~17\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~18_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp~5_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~19\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~20_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~21\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~22_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~23\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~24_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~25\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~26_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~27\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~28_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp~4_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~29\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~30_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~31\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~32_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp~3_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~33\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~34_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp~2_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~35\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~36_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp~1_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~37\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~38_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp~0_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~39\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~40_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~41\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~42_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~43\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~44_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~45\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~46_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~47\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~48_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~49\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~50_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~0_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Add0~2_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~0_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~1_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~3_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~2_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~4_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~5_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~6_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~7_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|Equal0~8_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|out_clk_tmp_up~feeder_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|out_clk_tmp_up~q\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|out_clk_tmp~feeder_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|reset_out_clk_tmp~0_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|reset_out_clk_tmp~feeder_combout\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|reset_out_clk_tmp~q\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|out_clk_tmp~q\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \iniciar_tmp~feeder_combout\ : std_logic;
SIGNAL \iniciar_tmp~q\ : std_logic;
SIGNAL \tmpr|iniciado~feeder_combout\ : std_logic;
SIGNAL \tmpr|Add1~1_combout\ : std_logic;
SIGNAL \tmpr|index[3]~3_combout\ : std_logic;
SIGNAL \tmpr|Equal2~0_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~12_combout\ : std_logic;
SIGNAL \tmpr|Equal0~0_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~8_combout\ : std_logic;
SIGNAL \tmpr|Add0~0_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~11_combout\ : std_logic;
SIGNAL \tmpr|Add0~1\ : std_logic;
SIGNAL \tmpr|Add0~2_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~10_combout\ : std_logic;
SIGNAL \tmpr|Add0~3\ : std_logic;
SIGNAL \tmpr|Add0~4_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~9_combout\ : std_logic;
SIGNAL \tmpr|Add0~5\ : std_logic;
SIGNAL \tmpr|Add0~6_combout\ : std_logic;
SIGNAL \tmpr|tempo_alvo~0_combout\ : std_logic;
SIGNAL \tmpr|tempo_alvo~1_combout\ : std_logic;
SIGNAL \tmpr|Equal0~1_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~6_combout\ : std_logic;
SIGNAL \tmpr|Add0~7\ : std_logic;
SIGNAL \tmpr|Add0~8_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~7_combout\ : std_logic;
SIGNAL \tmpr|Add0~9\ : std_logic;
SIGNAL \tmpr|Add0~10_combout\ : std_logic;
SIGNAL \tmpr|tempo_alvo~2_combout\ : std_logic;
SIGNAL \tmpr|Equal0~2_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~4_combout\ : std_logic;
SIGNAL \tmpr|Add0~11\ : std_logic;
SIGNAL \tmpr|Add0~12_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~5_combout\ : std_logic;
SIGNAL \tmpr|Add0~13\ : std_logic;
SIGNAL \tmpr|Add0~14_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~3_combout\ : std_logic;
SIGNAL \tmpr|Add0~15\ : std_logic;
SIGNAL \tmpr|Add0~16_combout\ : std_logic;
SIGNAL \tmpr|Equal0~4_combout\ : std_logic;
SIGNAL \tmpr|tempo_alvo~3_combout\ : std_logic;
SIGNAL \tmpr|Add0~17\ : std_logic;
SIGNAL \tmpr|Add0~18_combout\ : std_logic;
SIGNAL \tmpr|Equal0~3_combout\ : std_logic;
SIGNAL \tmpr|Equal0~5_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~2_combout\ : std_logic;
SIGNAL \tmpr|Add0~19\ : std_logic;
SIGNAL \tmpr|Add0~20_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~1_combout\ : std_logic;
SIGNAL \tmpr|Add0~21\ : std_logic;
SIGNAL \tmpr|Add0~22_combout\ : std_logic;
SIGNAL \tmpr|tempo_decorrido~0_combout\ : std_logic;
SIGNAL \tmpr|Add0~23\ : std_logic;
SIGNAL \tmpr|Add0~24_combout\ : std_logic;
SIGNAL \tmpr|segundo_zero~3_combout\ : std_logic;
SIGNAL \tmpr|fim_tmp~0_combout\ : std_logic;
SIGNAL \tmpr|fim_tmp~q\ : std_logic;
SIGNAL \tmpr|iniciado~q\ : std_logic;
SIGNAL \tmpr|set_point[5]~3_combout\ : std_logic;
SIGNAL \tmpr|Equal0~6_combout\ : std_logic;
SIGNAL \tmpr|Equal0~7_combout\ : std_logic;
SIGNAL \tmpr|index[0]~2_combout\ : std_logic;
SIGNAL \tmpr|Add1~0_combout\ : std_logic;
SIGNAL \tmpr|index[2]~1_combout\ : std_logic;
SIGNAL \tmpr|Equal1~0_combout\ : std_logic;
SIGNAL \tmpr|segundo_zero~2_combout\ : std_logic;
SIGNAL \tmpr|segundo_zero~q\ : std_logic;
SIGNAL \tmpr|set_point[5]~6_combout\ : std_logic;
SIGNAL \tmpr|index[1]~0_combout\ : std_logic;
SIGNAL \tmpr|set_point~2_combout\ : std_logic;
SIGNAL \tmpr|set_point[5]~feeder_combout\ : std_logic;
SIGNAL \tmpr|set_point[5]~7_combout\ : std_logic;
SIGNAL \tmpr|set_point~4_combout\ : std_logic;
SIGNAL \tmpr|set_point[1]~feeder_combout\ : std_logic;
SIGNAL \tmpr|set_point~5_combout\ : std_logic;
SIGNAL \tmpr|set_point[2]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \dezena_tmp[1]~12_combout\ : std_logic;
SIGNAL \update_display~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \update_display~4_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \update_display~1_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \update_display~2_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \update_display~5_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \update_display~0_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~28_combout\ : std_logic;
SIGNAL \dezena_tmp[0]~2_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~4_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~6_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~8_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~9_combout\ : std_logic;
SIGNAL \dezena_tmp[2]~11_combout\ : std_logic;
SIGNAL \display_dezena|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|out_display[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~43_combout\ : std_logic;
SIGNAL \tmpr|set_point[0]~8_combout\ : std_logic;
SIGNAL \tmpr|set_point[0]~9_combout\ : std_logic;
SIGNAL \tmpr|set_point[0]~feeder_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~44_combout\ : std_logic;
SIGNAL \display_unidade|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|out_display[6]~6_combout\ : std_logic;
SIGNAL \tmpr|alteracao_set_point_tmp~0_combout\ : std_logic;
SIGNAL \tmpr|alteracao_set_point_tmp~q\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|count_tmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \tmpr|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tmpr|tempo_alvo\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \tmpr|tempo_decorrido\ : std_logic_vector(12 DOWNTO 0);
SIGNAL update_display : std_logic_vector(17 DOWNTO 0);
SIGNAL \divisor_50x|count_tmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL unidade_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \tmpr|set_point\ : std_logic_vector(11 DOWNTO 0);
SIGNAL dezena_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor_50x|ALT_INV_out_clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \tmpr|divisor_1Mx|ALT_INV_reset_out_clk_tmp~q\ : std_logic;
SIGNAL \divisor_50x|ALT_INV_reset_out_clk_tmp~q\ : std_logic;
SIGNAL \tmpr|ALT_INV_segundo_zero~q\ : std_logic;
SIGNAL \tmpr|ALT_INV_fim_tmp~q\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_iniciar <= iniciar;
dezena <= ww_dezena;
unidade <= ww_unidade;
alteracao <= ww_alteracao;
fim <= ww_fim;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\tmpr|divisor_1Mx|out_clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tmpr|divisor_1Mx|out_clk_tmp~q\);

\divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_50x|out_clk_tmp~q\);

\clk_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHZ~input_o\);
\ALT_INV_clk_50MHZ~inputclkctrl_outclk\ <= NOT \clk_50MHZ~inputclkctrl_outclk\;
\divisor_50x|ALT_INV_out_clk_tmp~clkctrl_outclk\ <= NOT \divisor_50x|out_clk_tmp~clkctrl_outclk\;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\tmpr|divisor_1Mx|ALT_INV_reset_out_clk_tmp~q\ <= NOT \tmpr|divisor_1Mx|reset_out_clk_tmp~q\;
\divisor_50x|ALT_INV_reset_out_clk_tmp~q\ <= NOT \divisor_50x|reset_out_clk_tmp~q\;
\tmpr|ALT_INV_segundo_zero~q\ <= NOT \tmpr|segundo_zero~q\;
\tmpr|ALT_INV_fim_tmp~q\ <= NOT \tmpr|fim_tmp~q\;
\display_unidade|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade|out_display[5]~5_combout\;
\display_unidade|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade|out_display[2]~2_combout\;
\display_dezena|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena|out_display[5]~5_combout\;
\display_dezena|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena|out_display[2]~2_combout\;
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

-- Location: IOOBUF_X69_Y54_N23
\dezena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \dezena[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\dezena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \dezena[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\dezena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \dezena[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\dezena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \dezena[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\dezena[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \dezena[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\dezena[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \dezena[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\dezena[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \dezena[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\unidade[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \unidade[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\unidade[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \unidade[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\unidade[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \unidade[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\unidade[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \unidade[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\unidade[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \unidade[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\unidade[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \unidade[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\unidade[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \unidade[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\alteracao~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmpr|alteracao_set_point_tmp~q\,
	devoe => ww_devoe,
	o => \alteracao~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\fim~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmpr|fim_tmp~q\,
	devoe => ww_devoe,
	o => \fim~output_o\);

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

-- Location: FF_X50_Y44_N23
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

-- Location: LCCOMB_X50_Y45_N6
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

-- Location: FF_X50_Y45_N7
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

-- Location: LCCOMB_X50_Y45_N8
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

-- Location: LCCOMB_X51_Y45_N30
\divisor_50x|count_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~2_combout\ = (\divisor_50x|Add0~2_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~2_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~2_combout\);

-- Location: FF_X51_Y45_N31
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

-- Location: LCCOMB_X50_Y45_N10
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

-- Location: FF_X50_Y45_N11
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

-- Location: LCCOMB_X50_Y45_N12
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

-- Location: FF_X50_Y45_N13
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

-- Location: LCCOMB_X50_Y45_N14
\divisor_50x|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~8_combout\ = (\divisor_50x|count_tmp\(4) & (\divisor_50x|Add0~7\ $ (GND))) # (!\divisor_50x|count_tmp\(4) & (!\divisor_50x|Add0~7\ & VCC))
-- \divisor_50x|Add0~9\ = CARRY((\divisor_50x|count_tmp\(4) & !\divisor_50x|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(4),
	datad => VCC,
	cin => \divisor_50x|Add0~7\,
	combout => \divisor_50x|Add0~8_combout\,
	cout => \divisor_50x|Add0~9\);

-- Location: LCCOMB_X51_Y45_N6
\divisor_50x|count_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~1_combout\ = (\divisor_50x|Add0~8_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|Add0~8_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~1_combout\);

-- Location: FF_X51_Y45_N7
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

-- Location: LCCOMB_X50_Y45_N16
\divisor_50x|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~10_combout\ = (\divisor_50x|count_tmp\(5) & (!\divisor_50x|Add0~9\)) # (!\divisor_50x|count_tmp\(5) & ((\divisor_50x|Add0~9\) # (GND)))
-- \divisor_50x|Add0~11\ = CARRY((!\divisor_50x|Add0~9\) # (!\divisor_50x|count_tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(5),
	datad => VCC,
	cin => \divisor_50x|Add0~9\,
	combout => \divisor_50x|Add0~10_combout\,
	cout => \divisor_50x|Add0~11\);

-- Location: LCCOMB_X51_Y45_N4
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

-- Location: FF_X51_Y45_N5
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

-- Location: LCCOMB_X50_Y45_N18
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

-- Location: FF_X50_Y45_N19
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

-- Location: LCCOMB_X50_Y45_N20
\divisor_50x|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~14_combout\ = (\divisor_50x|count_tmp\(7) & (!\divisor_50x|Add0~13\)) # (!\divisor_50x|count_tmp\(7) & ((\divisor_50x|Add0~13\) # (GND)))
-- \divisor_50x|Add0~15\ = CARRY((!\divisor_50x|Add0~13\) # (!\divisor_50x|count_tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(7),
	datad => VCC,
	cin => \divisor_50x|Add0~13\,
	combout => \divisor_50x|Add0~14_combout\,
	cout => \divisor_50x|Add0~15\);

-- Location: FF_X50_Y45_N21
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

-- Location: LCCOMB_X50_Y45_N22
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

-- Location: FF_X50_Y45_N23
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

-- Location: LCCOMB_X50_Y45_N24
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

-- Location: FF_X50_Y45_N25
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

-- Location: LCCOMB_X50_Y45_N26
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

-- Location: FF_X50_Y45_N27
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

-- Location: LCCOMB_X50_Y45_N28
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

-- Location: FF_X50_Y45_N29
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

-- Location: LCCOMB_X50_Y45_N30
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

-- Location: FF_X50_Y45_N31
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

-- Location: LCCOMB_X50_Y44_N0
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

-- Location: FF_X50_Y44_N1
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

-- Location: LCCOMB_X50_Y44_N2
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

-- Location: FF_X50_Y44_N3
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

-- Location: LCCOMB_X50_Y44_N4
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

-- Location: FF_X50_Y44_N5
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

-- Location: LCCOMB_X50_Y44_N6
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

-- Location: FF_X50_Y44_N7
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

-- Location: LCCOMB_X50_Y44_N8
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

-- Location: FF_X50_Y44_N9
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

-- Location: LCCOMB_X50_Y44_N10
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

-- Location: FF_X50_Y44_N11
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

-- Location: LCCOMB_X50_Y44_N12
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

-- Location: FF_X50_Y44_N13
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

-- Location: LCCOMB_X50_Y44_N14
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

-- Location: FF_X50_Y44_N15
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

-- Location: LCCOMB_X50_Y44_N16
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

-- Location: FF_X50_Y44_N17
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

-- Location: LCCOMB_X50_Y44_N18
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

-- Location: FF_X50_Y44_N19
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

-- Location: LCCOMB_X50_Y44_N20
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

-- Location: FF_X50_Y44_N21
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

-- Location: LCCOMB_X50_Y44_N22
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

-- Location: FF_X50_Y44_N25
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

-- Location: LCCOMB_X50_Y44_N24
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

-- Location: LCCOMB_X50_Y45_N2
\divisor_50x|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~1_combout\ = (!\divisor_50x|Add0~12_combout\ & (\divisor_50x|Add0~8_combout\ & (!\divisor_50x|Add0~14_combout\ & \divisor_50x|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~12_combout\,
	datab => \divisor_50x|Add0~8_combout\,
	datac => \divisor_50x|Add0~14_combout\,
	datad => \divisor_50x|Add0~10_combout\,
	combout => \divisor_50x|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y45_N4
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

-- Location: LCCOMB_X50_Y45_N0
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

-- Location: LCCOMB_X51_Y45_N20
\divisor_50x|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~3_combout\ = (!\divisor_50x|Add0~26_combout\ & (!\divisor_50x|Add0~24_combout\ & (!\divisor_50x|Add0~28_combout\ & !\divisor_50x|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~26_combout\,
	datab => \divisor_50x|Add0~24_combout\,
	datac => \divisor_50x|Add0~28_combout\,
	datad => \divisor_50x|Add0~30_combout\,
	combout => \divisor_50x|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y45_N2
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

-- Location: LCCOMB_X51_Y45_N18
\divisor_50x|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~5_combout\ = (!\divisor_50x|Add0~36_combout\ & (!\divisor_50x|Add0~34_combout\ & (!\divisor_50x|Add0~38_combout\ & \divisor_50x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~36_combout\,
	datab => \divisor_50x|Add0~34_combout\,
	datac => \divisor_50x|Add0~38_combout\,
	datad => \divisor_50x|Equal0~4_combout\,
	combout => \divisor_50x|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y45_N10
\divisor_50x|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~6_combout\ = (!\divisor_50x|Add0~42_combout\ & (!\divisor_50x|Add0~32_combout\ & (!\divisor_50x|Add0~40_combout\ & \divisor_50x|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~42_combout\,
	datab => \divisor_50x|Add0~32_combout\,
	datac => \divisor_50x|Add0~40_combout\,
	datad => \divisor_50x|Equal0~5_combout\,
	combout => \divisor_50x|Equal0~6_combout\);

-- Location: LCCOMB_X51_Y45_N24
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

-- Location: LCCOMB_X51_Y45_N16
\divisor_50x|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~8_combout\ = (!\divisor_50x|Add0~48_combout\ & (!\divisor_50x|Add0~50_combout\ & (!\divisor_50x|Add0~46_combout\ & \divisor_50x|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~48_combout\,
	datab => \divisor_50x|Add0~50_combout\,
	datac => \divisor_50x|Add0~46_combout\,
	datad => \divisor_50x|Equal0~7_combout\,
	combout => \divisor_50x|Equal0~8_combout\);

-- Location: LCCOMB_X51_Y45_N0
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

-- Location: FF_X51_Y45_N1
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

-- Location: LCCOMB_X51_Y48_N2
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

-- Location: LCCOMB_X51_Y48_N4
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

-- Location: LCCOMB_X51_Y48_N18
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

-- Location: FF_X51_Y48_N19
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

-- Location: FF_X51_Y48_N3
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

-- Location: CLKCTRL_G14
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

-- Location: FF_X59_Y48_N23
\tmpr|divisor_1Mx|count_tmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(24));

-- Location: LCCOMB_X58_Y49_N14
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = update_display(0) $ (VCC)
-- \Add0~1\ = CARRY(update_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => update_display(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X58_Y49_N6
\update_display[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display[0]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \update_display[0]~feeder_combout\);

-- Location: FF_X58_Y49_N7
\update_display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(0));

-- Location: LCCOMB_X58_Y49_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (update_display(1) & (!\Add0~1\)) # (!update_display(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!update_display(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X58_Y49_N12
\update_display[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display[1]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \update_display[1]~feeder_combout\);

-- Location: FF_X58_Y49_N13
\update_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(1));

-- Location: LCCOMB_X59_Y49_N6
\tmpr|divisor_1Mx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~0_combout\ = update_display(0) $ (VCC)
-- \tmpr|divisor_1Mx|Add0~1\ = CARRY(update_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => update_display(0),
	datad => VCC,
	combout => \tmpr|divisor_1Mx|Add0~0_combout\,
	cout => \tmpr|divisor_1Mx|Add0~1\);

-- Location: LCCOMB_X59_Y49_N8
\tmpr|divisor_1Mx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~2_combout\ = (update_display(1) & (!\tmpr|divisor_1Mx|Add0~1\)) # (!update_display(1) & ((\tmpr|divisor_1Mx|Add0~1\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~3\ = CARRY((!\tmpr|divisor_1Mx|Add0~1\) # (!update_display(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(1),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~1\,
	combout => \tmpr|divisor_1Mx|Add0~2_combout\,
	cout => \tmpr|divisor_1Mx|Add0~3\);

-- Location: LCCOMB_X59_Y49_N10
\tmpr|divisor_1Mx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~4_combout\ = (\tmpr|divisor_1Mx|count_tmp\(2) & (\tmpr|divisor_1Mx|Add0~3\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(2) & (!\tmpr|divisor_1Mx|Add0~3\ & VCC))
-- \tmpr|divisor_1Mx|Add0~5\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(2) & !\tmpr|divisor_1Mx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(2),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~3\,
	combout => \tmpr|divisor_1Mx|Add0~4_combout\,
	cout => \tmpr|divisor_1Mx|Add0~5\);

-- Location: FF_X59_Y49_N11
\tmpr|divisor_1Mx|count_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(2));

-- Location: LCCOMB_X59_Y49_N12
\tmpr|divisor_1Mx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~6_combout\ = (\tmpr|divisor_1Mx|count_tmp\(3) & (!\tmpr|divisor_1Mx|Add0~5\)) # (!\tmpr|divisor_1Mx|count_tmp\(3) & ((\tmpr|divisor_1Mx|Add0~5\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~7\ = CARRY((!\tmpr|divisor_1Mx|Add0~5\) # (!\tmpr|divisor_1Mx|count_tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(3),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~5\,
	combout => \tmpr|divisor_1Mx|Add0~6_combout\,
	cout => \tmpr|divisor_1Mx|Add0~7\);

-- Location: FF_X59_Y49_N13
\tmpr|divisor_1Mx|count_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(3));

-- Location: LCCOMB_X59_Y49_N14
\tmpr|divisor_1Mx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~8_combout\ = (\tmpr|divisor_1Mx|count_tmp\(4) & (\tmpr|divisor_1Mx|Add0~7\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(4) & (!\tmpr|divisor_1Mx|Add0~7\ & VCC))
-- \tmpr|divisor_1Mx|Add0~9\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(4) & !\tmpr|divisor_1Mx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(4),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~7\,
	combout => \tmpr|divisor_1Mx|Add0~8_combout\,
	cout => \tmpr|divisor_1Mx|Add0~9\);

-- Location: FF_X59_Y49_N15
\tmpr|divisor_1Mx|count_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(4));

-- Location: LCCOMB_X59_Y49_N16
\tmpr|divisor_1Mx|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~10_combout\ = (\tmpr|divisor_1Mx|count_tmp\(5) & (!\tmpr|divisor_1Mx|Add0~9\)) # (!\tmpr|divisor_1Mx|count_tmp\(5) & ((\tmpr|divisor_1Mx|Add0~9\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~11\ = CARRY((!\tmpr|divisor_1Mx|Add0~9\) # (!\tmpr|divisor_1Mx|count_tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(5),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~9\,
	combout => \tmpr|divisor_1Mx|Add0~10_combout\,
	cout => \tmpr|divisor_1Mx|Add0~11\);

-- Location: FF_X59_Y49_N17
\tmpr|divisor_1Mx|count_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(5));

-- Location: LCCOMB_X59_Y49_N18
\tmpr|divisor_1Mx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~12_combout\ = (\tmpr|divisor_1Mx|count_tmp\(6) & (\tmpr|divisor_1Mx|Add0~11\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(6) & (!\tmpr|divisor_1Mx|Add0~11\ & VCC))
-- \tmpr|divisor_1Mx|Add0~13\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(6) & !\tmpr|divisor_1Mx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(6),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~11\,
	combout => \tmpr|divisor_1Mx|Add0~12_combout\,
	cout => \tmpr|divisor_1Mx|Add0~13\);

-- Location: LCCOMB_X60_Y48_N0
\tmpr|divisor_1Mx|count_tmp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|count_tmp~6_combout\ = (\tmpr|divisor_1Mx|Add0~12_combout\ & !\tmpr|divisor_1Mx|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|divisor_1Mx|Add0~12_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|count_tmp~6_combout\);

-- Location: FF_X60_Y48_N1
\tmpr|divisor_1Mx|count_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|count_tmp~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(6));

-- Location: LCCOMB_X59_Y49_N20
\tmpr|divisor_1Mx|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~14_combout\ = (\tmpr|divisor_1Mx|count_tmp\(7) & (!\tmpr|divisor_1Mx|Add0~13\)) # (!\tmpr|divisor_1Mx|count_tmp\(7) & ((\tmpr|divisor_1Mx|Add0~13\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~15\ = CARRY((!\tmpr|divisor_1Mx|Add0~13\) # (!\tmpr|divisor_1Mx|count_tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(7),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~13\,
	combout => \tmpr|divisor_1Mx|Add0~14_combout\,
	cout => \tmpr|divisor_1Mx|Add0~15\);

-- Location: FF_X59_Y49_N21
\tmpr|divisor_1Mx|count_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(7));

-- Location: LCCOMB_X59_Y49_N22
\tmpr|divisor_1Mx|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~16_combout\ = (\tmpr|divisor_1Mx|count_tmp\(8) & (\tmpr|divisor_1Mx|Add0~15\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(8) & (!\tmpr|divisor_1Mx|Add0~15\ & VCC))
-- \tmpr|divisor_1Mx|Add0~17\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(8) & !\tmpr|divisor_1Mx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(8),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~15\,
	combout => \tmpr|divisor_1Mx|Add0~16_combout\,
	cout => \tmpr|divisor_1Mx|Add0~17\);

-- Location: FF_X59_Y49_N23
\tmpr|divisor_1Mx|count_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(8));

-- Location: LCCOMB_X59_Y49_N24
\tmpr|divisor_1Mx|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~18_combout\ = (\tmpr|divisor_1Mx|count_tmp\(9) & (!\tmpr|divisor_1Mx|Add0~17\)) # (!\tmpr|divisor_1Mx|count_tmp\(9) & ((\tmpr|divisor_1Mx|Add0~17\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~19\ = CARRY((!\tmpr|divisor_1Mx|Add0~17\) # (!\tmpr|divisor_1Mx|count_tmp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(9),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~17\,
	combout => \tmpr|divisor_1Mx|Add0~18_combout\,
	cout => \tmpr|divisor_1Mx|Add0~19\);

-- Location: LCCOMB_X60_Y48_N8
\tmpr|divisor_1Mx|count_tmp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|count_tmp~5_combout\ = (\tmpr|divisor_1Mx|Add0~18_combout\ & !\tmpr|divisor_1Mx|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|divisor_1Mx|Add0~18_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|count_tmp~5_combout\);

-- Location: FF_X60_Y48_N9
\tmpr|divisor_1Mx|count_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|count_tmp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(9));

-- Location: LCCOMB_X59_Y49_N26
\tmpr|divisor_1Mx|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~20_combout\ = (\tmpr|divisor_1Mx|count_tmp\(10) & (\tmpr|divisor_1Mx|Add0~19\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(10) & (!\tmpr|divisor_1Mx|Add0~19\ & VCC))
-- \tmpr|divisor_1Mx|Add0~21\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(10) & !\tmpr|divisor_1Mx|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(10),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~19\,
	combout => \tmpr|divisor_1Mx|Add0~20_combout\,
	cout => \tmpr|divisor_1Mx|Add0~21\);

-- Location: FF_X59_Y49_N27
\tmpr|divisor_1Mx|count_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(10));

-- Location: LCCOMB_X59_Y49_N28
\tmpr|divisor_1Mx|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~22_combout\ = (\tmpr|divisor_1Mx|count_tmp\(11) & (!\tmpr|divisor_1Mx|Add0~21\)) # (!\tmpr|divisor_1Mx|count_tmp\(11) & ((\tmpr|divisor_1Mx|Add0~21\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~23\ = CARRY((!\tmpr|divisor_1Mx|Add0~21\) # (!\tmpr|divisor_1Mx|count_tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(11),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~21\,
	combout => \tmpr|divisor_1Mx|Add0~22_combout\,
	cout => \tmpr|divisor_1Mx|Add0~23\);

-- Location: FF_X59_Y49_N29
\tmpr|divisor_1Mx|count_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(11));

-- Location: LCCOMB_X59_Y49_N30
\tmpr|divisor_1Mx|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~24_combout\ = (\tmpr|divisor_1Mx|count_tmp\(12) & (\tmpr|divisor_1Mx|Add0~23\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(12) & (!\tmpr|divisor_1Mx|Add0~23\ & VCC))
-- \tmpr|divisor_1Mx|Add0~25\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(12) & !\tmpr|divisor_1Mx|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(12),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~23\,
	combout => \tmpr|divisor_1Mx|Add0~24_combout\,
	cout => \tmpr|divisor_1Mx|Add0~25\);

-- Location: FF_X59_Y49_N31
\tmpr|divisor_1Mx|count_tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(12));

-- Location: LCCOMB_X59_Y48_N0
\tmpr|divisor_1Mx|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~26_combout\ = (\tmpr|divisor_1Mx|count_tmp\(13) & (!\tmpr|divisor_1Mx|Add0~25\)) # (!\tmpr|divisor_1Mx|count_tmp\(13) & ((\tmpr|divisor_1Mx|Add0~25\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~27\ = CARRY((!\tmpr|divisor_1Mx|Add0~25\) # (!\tmpr|divisor_1Mx|count_tmp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(13),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~25\,
	combout => \tmpr|divisor_1Mx|Add0~26_combout\,
	cout => \tmpr|divisor_1Mx|Add0~27\);

-- Location: FF_X59_Y48_N1
\tmpr|divisor_1Mx|count_tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(13));

-- Location: LCCOMB_X59_Y48_N2
\tmpr|divisor_1Mx|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~28_combout\ = (\tmpr|divisor_1Mx|count_tmp\(14) & (\tmpr|divisor_1Mx|Add0~27\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(14) & (!\tmpr|divisor_1Mx|Add0~27\ & VCC))
-- \tmpr|divisor_1Mx|Add0~29\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(14) & !\tmpr|divisor_1Mx|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(14),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~27\,
	combout => \tmpr|divisor_1Mx|Add0~28_combout\,
	cout => \tmpr|divisor_1Mx|Add0~29\);

-- Location: LCCOMB_X60_Y48_N22
\tmpr|divisor_1Mx|count_tmp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|count_tmp~4_combout\ = (\tmpr|divisor_1Mx|Add0~28_combout\ & !\tmpr|divisor_1Mx|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~28_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|count_tmp~4_combout\);

-- Location: FF_X60_Y48_N23
\tmpr|divisor_1Mx|count_tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|count_tmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(14));

-- Location: LCCOMB_X59_Y48_N4
\tmpr|divisor_1Mx|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~30_combout\ = (\tmpr|divisor_1Mx|count_tmp\(15) & (!\tmpr|divisor_1Mx|Add0~29\)) # (!\tmpr|divisor_1Mx|count_tmp\(15) & ((\tmpr|divisor_1Mx|Add0~29\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~31\ = CARRY((!\tmpr|divisor_1Mx|Add0~29\) # (!\tmpr|divisor_1Mx|count_tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(15),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~29\,
	combout => \tmpr|divisor_1Mx|Add0~30_combout\,
	cout => \tmpr|divisor_1Mx|Add0~31\);

-- Location: FF_X59_Y48_N5
\tmpr|divisor_1Mx|count_tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(15));

-- Location: LCCOMB_X59_Y48_N6
\tmpr|divisor_1Mx|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~32_combout\ = (\tmpr|divisor_1Mx|count_tmp\(16) & (\tmpr|divisor_1Mx|Add0~31\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(16) & (!\tmpr|divisor_1Mx|Add0~31\ & VCC))
-- \tmpr|divisor_1Mx|Add0~33\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(16) & !\tmpr|divisor_1Mx|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(16),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~31\,
	combout => \tmpr|divisor_1Mx|Add0~32_combout\,
	cout => \tmpr|divisor_1Mx|Add0~33\);

-- Location: LCCOMB_X60_Y48_N18
\tmpr|divisor_1Mx|count_tmp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|count_tmp~3_combout\ = (\tmpr|divisor_1Mx|Add0~32_combout\ & !\tmpr|divisor_1Mx|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|divisor_1Mx|Add0~32_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|count_tmp~3_combout\);

-- Location: FF_X60_Y48_N19
\tmpr|divisor_1Mx|count_tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|count_tmp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(16));

-- Location: LCCOMB_X59_Y48_N8
\tmpr|divisor_1Mx|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~34_combout\ = (\tmpr|divisor_1Mx|count_tmp\(17) & (!\tmpr|divisor_1Mx|Add0~33\)) # (!\tmpr|divisor_1Mx|count_tmp\(17) & ((\tmpr|divisor_1Mx|Add0~33\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~35\ = CARRY((!\tmpr|divisor_1Mx|Add0~33\) # (!\tmpr|divisor_1Mx|count_tmp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(17),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~33\,
	combout => \tmpr|divisor_1Mx|Add0~34_combout\,
	cout => \tmpr|divisor_1Mx|Add0~35\);

-- Location: LCCOMB_X60_Y48_N16
\tmpr|divisor_1Mx|count_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|count_tmp~2_combout\ = (\tmpr|divisor_1Mx|Add0~34_combout\ & !\tmpr|divisor_1Mx|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~34_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|count_tmp~2_combout\);

-- Location: FF_X60_Y48_N17
\tmpr|divisor_1Mx|count_tmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|count_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(17));

-- Location: LCCOMB_X59_Y48_N10
\tmpr|divisor_1Mx|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~36_combout\ = (\tmpr|divisor_1Mx|count_tmp\(18) & (\tmpr|divisor_1Mx|Add0~35\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(18) & (!\tmpr|divisor_1Mx|Add0~35\ & VCC))
-- \tmpr|divisor_1Mx|Add0~37\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(18) & !\tmpr|divisor_1Mx|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(18),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~35\,
	combout => \tmpr|divisor_1Mx|Add0~36_combout\,
	cout => \tmpr|divisor_1Mx|Add0~37\);

-- Location: LCCOMB_X60_Y48_N26
\tmpr|divisor_1Mx|count_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|count_tmp~1_combout\ = (\tmpr|divisor_1Mx|Add0~36_combout\ & !\tmpr|divisor_1Mx|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~36_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|count_tmp~1_combout\);

-- Location: FF_X60_Y48_N27
\tmpr|divisor_1Mx|count_tmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|count_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(18));

-- Location: LCCOMB_X59_Y48_N12
\tmpr|divisor_1Mx|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~38_combout\ = (\tmpr|divisor_1Mx|count_tmp\(19) & (!\tmpr|divisor_1Mx|Add0~37\)) # (!\tmpr|divisor_1Mx|count_tmp\(19) & ((\tmpr|divisor_1Mx|Add0~37\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~39\ = CARRY((!\tmpr|divisor_1Mx|Add0~37\) # (!\tmpr|divisor_1Mx|count_tmp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(19),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~37\,
	combout => \tmpr|divisor_1Mx|Add0~38_combout\,
	cout => \tmpr|divisor_1Mx|Add0~39\);

-- Location: LCCOMB_X60_Y48_N14
\tmpr|divisor_1Mx|count_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|count_tmp~0_combout\ = (\tmpr|divisor_1Mx|Add0~38_combout\ & !\tmpr|divisor_1Mx|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~38_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|count_tmp~0_combout\);

-- Location: FF_X60_Y48_N15
\tmpr|divisor_1Mx|count_tmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|count_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(19));

-- Location: LCCOMB_X59_Y48_N14
\tmpr|divisor_1Mx|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~40_combout\ = (\tmpr|divisor_1Mx|count_tmp\(20) & (\tmpr|divisor_1Mx|Add0~39\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(20) & (!\tmpr|divisor_1Mx|Add0~39\ & VCC))
-- \tmpr|divisor_1Mx|Add0~41\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(20) & !\tmpr|divisor_1Mx|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(20),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~39\,
	combout => \tmpr|divisor_1Mx|Add0~40_combout\,
	cout => \tmpr|divisor_1Mx|Add0~41\);

-- Location: FF_X59_Y48_N15
\tmpr|divisor_1Mx|count_tmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(20));

-- Location: LCCOMB_X59_Y48_N16
\tmpr|divisor_1Mx|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~42_combout\ = (\tmpr|divisor_1Mx|count_tmp\(21) & (!\tmpr|divisor_1Mx|Add0~41\)) # (!\tmpr|divisor_1Mx|count_tmp\(21) & ((\tmpr|divisor_1Mx|Add0~41\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~43\ = CARRY((!\tmpr|divisor_1Mx|Add0~41\) # (!\tmpr|divisor_1Mx|count_tmp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(21),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~41\,
	combout => \tmpr|divisor_1Mx|Add0~42_combout\,
	cout => \tmpr|divisor_1Mx|Add0~43\);

-- Location: FF_X59_Y48_N17
\tmpr|divisor_1Mx|count_tmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(21));

-- Location: LCCOMB_X59_Y48_N18
\tmpr|divisor_1Mx|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~44_combout\ = (\tmpr|divisor_1Mx|count_tmp\(22) & (\tmpr|divisor_1Mx|Add0~43\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(22) & (!\tmpr|divisor_1Mx|Add0~43\ & VCC))
-- \tmpr|divisor_1Mx|Add0~45\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(22) & !\tmpr|divisor_1Mx|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(22),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~43\,
	combout => \tmpr|divisor_1Mx|Add0~44_combout\,
	cout => \tmpr|divisor_1Mx|Add0~45\);

-- Location: FF_X59_Y48_N19
\tmpr|divisor_1Mx|count_tmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(22));

-- Location: LCCOMB_X59_Y48_N20
\tmpr|divisor_1Mx|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~46_combout\ = (\tmpr|divisor_1Mx|count_tmp\(23) & (!\tmpr|divisor_1Mx|Add0~45\)) # (!\tmpr|divisor_1Mx|count_tmp\(23) & ((\tmpr|divisor_1Mx|Add0~45\) # (GND)))
-- \tmpr|divisor_1Mx|Add0~47\ = CARRY((!\tmpr|divisor_1Mx|Add0~45\) # (!\tmpr|divisor_1Mx|count_tmp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|count_tmp\(23),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~45\,
	combout => \tmpr|divisor_1Mx|Add0~46_combout\,
	cout => \tmpr|divisor_1Mx|Add0~47\);

-- Location: FF_X59_Y48_N21
\tmpr|divisor_1Mx|count_tmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(23));

-- Location: LCCOMB_X59_Y48_N22
\tmpr|divisor_1Mx|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~48_combout\ = (\tmpr|divisor_1Mx|count_tmp\(24) & (\tmpr|divisor_1Mx|Add0~47\ $ (GND))) # (!\tmpr|divisor_1Mx|count_tmp\(24) & (!\tmpr|divisor_1Mx|Add0~47\ & VCC))
-- \tmpr|divisor_1Mx|Add0~49\ = CARRY((\tmpr|divisor_1Mx|count_tmp\(24) & !\tmpr|divisor_1Mx|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|count_tmp\(24),
	datad => VCC,
	cin => \tmpr|divisor_1Mx|Add0~47\,
	combout => \tmpr|divisor_1Mx|Add0~48_combout\,
	cout => \tmpr|divisor_1Mx|Add0~49\);

-- Location: FF_X59_Y48_N25
\tmpr|divisor_1Mx|count_tmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|count_tmp\(25));

-- Location: LCCOMB_X59_Y48_N24
\tmpr|divisor_1Mx|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Add0~50_combout\ = \tmpr|divisor_1Mx|Add0~49\ $ (\tmpr|divisor_1Mx|count_tmp\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tmpr|divisor_1Mx|count_tmp\(25),
	cin => \tmpr|divisor_1Mx|Add0~49\,
	combout => \tmpr|divisor_1Mx|Add0~50_combout\);

-- Location: LCCOMB_X59_Y49_N4
\tmpr|divisor_1Mx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~0_combout\ = (!\tmpr|divisor_1Mx|Add0~0_combout\ & (!\tmpr|divisor_1Mx|Add0~2_combout\ & (!\tmpr|divisor_1Mx|Add0~4_combout\ & !\tmpr|divisor_1Mx|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~0_combout\,
	datab => \tmpr|divisor_1Mx|Add0~2_combout\,
	datac => \tmpr|divisor_1Mx|Add0~4_combout\,
	datad => \tmpr|divisor_1Mx|Add0~6_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y49_N2
\tmpr|divisor_1Mx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~1_combout\ = (!\tmpr|divisor_1Mx|Add0~8_combout\ & (!\tmpr|divisor_1Mx|Add0~14_combout\ & (!\tmpr|divisor_1Mx|Add0~10_combout\ & \tmpr|divisor_1Mx|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~8_combout\,
	datab => \tmpr|divisor_1Mx|Add0~14_combout\,
	datac => \tmpr|divisor_1Mx|Add0~10_combout\,
	datad => \tmpr|divisor_1Mx|Add0~12_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y48_N4
\tmpr|divisor_1Mx|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~3_combout\ = (\tmpr|divisor_1Mx|Add0~28_combout\ & (!\tmpr|divisor_1Mx|Add0~30_combout\ & (!\tmpr|divisor_1Mx|Add0~26_combout\ & !\tmpr|divisor_1Mx|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~28_combout\,
	datab => \tmpr|divisor_1Mx|Add0~30_combout\,
	datac => \tmpr|divisor_1Mx|Add0~26_combout\,
	datad => \tmpr|divisor_1Mx|Add0~24_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y49_N0
\tmpr|divisor_1Mx|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~2_combout\ = (!\tmpr|divisor_1Mx|Add0~16_combout\ & (\tmpr|divisor_1Mx|Add0~18_combout\ & (!\tmpr|divisor_1Mx|Add0~20_combout\ & !\tmpr|divisor_1Mx|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~16_combout\,
	datab => \tmpr|divisor_1Mx|Add0~18_combout\,
	datac => \tmpr|divisor_1Mx|Add0~20_combout\,
	datad => \tmpr|divisor_1Mx|Add0~22_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y48_N20
\tmpr|divisor_1Mx|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~4_combout\ = (\tmpr|divisor_1Mx|Equal0~0_combout\ & (\tmpr|divisor_1Mx|Equal0~1_combout\ & (\tmpr|divisor_1Mx|Equal0~3_combout\ & \tmpr|divisor_1Mx|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Equal0~0_combout\,
	datab => \tmpr|divisor_1Mx|Equal0~1_combout\,
	datac => \tmpr|divisor_1Mx|Equal0~3_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~2_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~4_combout\);

-- Location: LCCOMB_X60_Y48_N6
\tmpr|divisor_1Mx|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~5_combout\ = (\tmpr|divisor_1Mx|Add0~36_combout\ & (\tmpr|divisor_1Mx|Add0~34_combout\ & (\tmpr|divisor_1Mx|Add0~38_combout\ & \tmpr|divisor_1Mx|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~36_combout\,
	datab => \tmpr|divisor_1Mx|Add0~34_combout\,
	datac => \tmpr|divisor_1Mx|Add0~38_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~4_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~5_combout\);

-- Location: LCCOMB_X60_Y48_N10
\tmpr|divisor_1Mx|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~6_combout\ = (!\tmpr|divisor_1Mx|Add0~40_combout\ & (\tmpr|divisor_1Mx|Add0~32_combout\ & (!\tmpr|divisor_1Mx|Add0~42_combout\ & \tmpr|divisor_1Mx|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~40_combout\,
	datab => \tmpr|divisor_1Mx|Add0~32_combout\,
	datac => \tmpr|divisor_1Mx|Add0~42_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~5_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~6_combout\);

-- Location: LCCOMB_X60_Y48_N12
\tmpr|divisor_1Mx|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~7_combout\ = (!\tmpr|divisor_1Mx|Add0~44_combout\ & \tmpr|divisor_1Mx|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|Add0~44_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~6_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~7_combout\);

-- Location: LCCOMB_X60_Y48_N24
\tmpr|divisor_1Mx|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|Equal0~8_combout\ = (!\tmpr|divisor_1Mx|Add0~48_combout\ & (!\tmpr|divisor_1Mx|Add0~50_combout\ & (!\tmpr|divisor_1Mx|Add0~46_combout\ & \tmpr|divisor_1Mx|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|divisor_1Mx|Add0~48_combout\,
	datab => \tmpr|divisor_1Mx|Add0~50_combout\,
	datac => \tmpr|divisor_1Mx|Add0~46_combout\,
	datad => \tmpr|divisor_1Mx|Equal0~7_combout\,
	combout => \tmpr|divisor_1Mx|Equal0~8_combout\);

-- Location: LCCOMB_X60_Y48_N28
\tmpr|divisor_1Mx|out_clk_tmp_up~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|out_clk_tmp_up~feeder_combout\ = \tmpr|divisor_1Mx|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tmpr|divisor_1Mx|Equal0~8_combout\,
	combout => \tmpr|divisor_1Mx|out_clk_tmp_up~feeder_combout\);

-- Location: FF_X60_Y48_N29
\tmpr|divisor_1Mx|out_clk_tmp_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|out_clk_tmp_up~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|out_clk_tmp_up~q\);

-- Location: LCCOMB_X55_Y48_N16
\tmpr|divisor_1Mx|out_clk_tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|out_clk_tmp~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \tmpr|divisor_1Mx|out_clk_tmp~feeder_combout\);

-- Location: LCCOMB_X55_Y48_N22
\tmpr|divisor_1Mx|reset_out_clk_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|reset_out_clk_tmp~0_combout\ = (\tmpr|divisor_1Mx|out_clk_tmp_up~q\ & !\tmpr|divisor_1Mx|reset_out_clk_tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|out_clk_tmp_up~q\,
	datad => \tmpr|divisor_1Mx|reset_out_clk_tmp~q\,
	combout => \tmpr|divisor_1Mx|reset_out_clk_tmp~0_combout\);

-- Location: LCCOMB_X55_Y48_N24
\tmpr|divisor_1Mx|reset_out_clk_tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|divisor_1Mx|reset_out_clk_tmp~feeder_combout\ = \tmpr|divisor_1Mx|reset_out_clk_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|divisor_1Mx|reset_out_clk_tmp~0_combout\,
	combout => \tmpr|divisor_1Mx|reset_out_clk_tmp~feeder_combout\);

-- Location: FF_X55_Y48_N25
\tmpr|divisor_1Mx|reset_out_clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|ALT_INV_out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|divisor_1Mx|reset_out_clk_tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|reset_out_clk_tmp~q\);

-- Location: FF_X55_Y48_N17
\tmpr|divisor_1Mx|out_clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp_up~q\,
	d => \tmpr|divisor_1Mx|out_clk_tmp~feeder_combout\,
	clrn => \tmpr|divisor_1Mx|ALT_INV_reset_out_clk_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|divisor_1Mx|out_clk_tmp~q\);

-- Location: CLKCTRL_G10
\tmpr|divisor_1Mx|out_clk_tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\iniciar~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X50_Y50_N24
\iniciar_tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \iniciar_tmp~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \iniciar_tmp~feeder_combout\);

-- Location: FF_X50_Y50_N25
iniciar_tmp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iniciar~input_o\,
	d => \iniciar_tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iniciar_tmp~q\);

-- Location: LCCOMB_X54_Y50_N22
\tmpr|iniciado~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|iniciado~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \tmpr|iniciado~feeder_combout\);

-- Location: LCCOMB_X54_Y50_N24
\tmpr|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add1~1_combout\ = \tmpr|index\(3) $ (((\tmpr|index\(1) & (\tmpr|index\(2) & \tmpr|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(1),
	datab => \tmpr|index\(2),
	datac => \tmpr|index\(0),
	datad => \tmpr|index\(3),
	combout => \tmpr|Add1~1_combout\);

-- Location: LCCOMB_X54_Y50_N12
\tmpr|index[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|index[3]~3_combout\ = (\tmpr|set_point[5]~6_combout\ & (\tmpr|Add1~1_combout\ & (\tmpr|segundo_zero~q\))) # (!\tmpr|set_point[5]~6_combout\ & (((\tmpr|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Add1~1_combout\,
	datab => \tmpr|segundo_zero~q\,
	datac => \tmpr|index\(3),
	datad => \tmpr|set_point[5]~6_combout\,
	combout => \tmpr|index[3]~3_combout\);

-- Location: FF_X54_Y50_N13
\tmpr|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|index[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|index\(3));

-- Location: LCCOMB_X54_Y50_N20
\tmpr|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal2~0_combout\ = (\tmpr|index\(1) & (\tmpr|index\(2) & (\tmpr|index\(0) & \tmpr|index\(3)))) # (!\tmpr|index\(1) & (!\tmpr|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(1),
	datab => \tmpr|index\(2),
	datac => \tmpr|index\(0),
	datad => \tmpr|index\(3),
	combout => \tmpr|Equal2~0_combout\);

-- Location: LCCOMB_X61_Y50_N26
\tmpr|tempo_decorrido~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~12_combout\ = (\tmpr|segundo_zero~q\ & \tmpr|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|segundo_zero~q\,
	datad => \tmpr|Add0~24_combout\,
	combout => \tmpr|tempo_decorrido~12_combout\);

-- Location: FF_X61_Y50_N27
\tmpr|tempo_decorrido[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~12_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(12));

-- Location: LCCOMB_X59_Y50_N14
\tmpr|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~0_combout\ = (!\tmpr|Add0~22_combout\ & !\tmpr|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|Add0~22_combout\,
	datad => \tmpr|Add0~24_combout\,
	combout => \tmpr|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y50_N6
\tmpr|tempo_decorrido~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~8_combout\ = (\tmpr|segundo_zero~q\ & (\tmpr|Add0~6_combout\ & ((!\tmpr|Equal0~5_combout\) # (!\tmpr|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datab => \tmpr|Equal0~0_combout\,
	datac => \tmpr|Add0~6_combout\,
	datad => \tmpr|Equal0~5_combout\,
	combout => \tmpr|tempo_decorrido~8_combout\);

-- Location: FF_X59_Y50_N7
\tmpr|tempo_decorrido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~8_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(3));

-- Location: LCCOMB_X60_Y50_N0
\tmpr|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~0_combout\ = \tmpr|tempo_decorrido\(0) $ (VCC)
-- \tmpr|Add0~1\ = CARRY(\tmpr|tempo_decorrido\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_decorrido\(0),
	datad => VCC,
	combout => \tmpr|Add0~0_combout\,
	cout => \tmpr|Add0~1\);

-- Location: LCCOMB_X60_Y50_N26
\tmpr|tempo_decorrido~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~11_combout\ = (\tmpr|segundo_zero~q\ & \tmpr|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|segundo_zero~q\,
	datad => \tmpr|Add0~0_combout\,
	combout => \tmpr|tempo_decorrido~11_combout\);

-- Location: FF_X60_Y50_N27
\tmpr|tempo_decorrido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~11_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(0));

-- Location: LCCOMB_X60_Y50_N2
\tmpr|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~2_combout\ = (\tmpr|tempo_decorrido\(1) & (!\tmpr|Add0~1\)) # (!\tmpr|tempo_decorrido\(1) & ((\tmpr|Add0~1\) # (GND)))
-- \tmpr|Add0~3\ = CARRY((!\tmpr|Add0~1\) # (!\tmpr|tempo_decorrido\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|tempo_decorrido\(1),
	datad => VCC,
	cin => \tmpr|Add0~1\,
	combout => \tmpr|Add0~2_combout\,
	cout => \tmpr|Add0~3\);

-- Location: LCCOMB_X60_Y50_N28
\tmpr|tempo_decorrido~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~10_combout\ = (\tmpr|segundo_zero~q\ & \tmpr|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|segundo_zero~q\,
	datad => \tmpr|Add0~2_combout\,
	combout => \tmpr|tempo_decorrido~10_combout\);

-- Location: FF_X60_Y50_N29
\tmpr|tempo_decorrido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~10_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(1));

-- Location: LCCOMB_X60_Y50_N4
\tmpr|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~4_combout\ = (\tmpr|tempo_decorrido\(2) & (\tmpr|Add0~3\ $ (GND))) # (!\tmpr|tempo_decorrido\(2) & (!\tmpr|Add0~3\ & VCC))
-- \tmpr|Add0~5\ = CARRY((\tmpr|tempo_decorrido\(2) & !\tmpr|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_decorrido\(2),
	datad => VCC,
	cin => \tmpr|Add0~3\,
	combout => \tmpr|Add0~4_combout\,
	cout => \tmpr|Add0~5\);

-- Location: LCCOMB_X59_Y50_N16
\tmpr|tempo_decorrido~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~9_combout\ = (\tmpr|segundo_zero~q\ & (\tmpr|Add0~4_combout\ & ((!\tmpr|Equal0~5_combout\) # (!\tmpr|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datab => \tmpr|Equal0~0_combout\,
	datac => \tmpr|Add0~4_combout\,
	datad => \tmpr|Equal0~5_combout\,
	combout => \tmpr|tempo_decorrido~9_combout\);

-- Location: FF_X59_Y50_N17
\tmpr|tempo_decorrido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~9_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(2));

-- Location: LCCOMB_X60_Y50_N6
\tmpr|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~6_combout\ = (\tmpr|tempo_decorrido\(3) & (!\tmpr|Add0~5\)) # (!\tmpr|tempo_decorrido\(3) & ((\tmpr|Add0~5\) # (GND)))
-- \tmpr|Add0~7\ = CARRY((!\tmpr|Add0~5\) # (!\tmpr|tempo_decorrido\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|tempo_decorrido\(3),
	datad => VCC,
	cin => \tmpr|Add0~5\,
	combout => \tmpr|Add0~6_combout\,
	cout => \tmpr|Add0~7\);

-- Location: LCCOMB_X59_Y50_N20
\tmpr|tempo_alvo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_alvo~0_combout\ = (!\tmpr|index\(1) & (!\tmpr|index\(2) & \tmpr|segundo_zero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|index\(1),
	datac => \tmpr|index\(2),
	datad => \tmpr|segundo_zero~q\,
	combout => \tmpr|tempo_alvo~0_combout\);

-- Location: FF_X59_Y50_N21
\tmpr|tempo_alvo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_alvo~0_combout\,
	ena => \tmpr|set_point[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_alvo\(3));

-- Location: LCCOMB_X58_Y50_N26
\tmpr|tempo_alvo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_alvo~1_combout\ = (\tmpr|set_point~2_combout\) # (!\tmpr|segundo_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|segundo_zero~q\,
	datad => \tmpr|set_point~2_combout\,
	combout => \tmpr|tempo_alvo~1_combout\);

-- Location: FF_X59_Y50_N11
\tmpr|tempo_alvo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	asdata => \tmpr|tempo_alvo~1_combout\,
	sload => VCC,
	ena => \tmpr|set_point[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_alvo\(2));

-- Location: LCCOMB_X59_Y50_N10
\tmpr|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~1_combout\ = (\tmpr|Add0~6_combout\ & (\tmpr|tempo_alvo\(3) & (\tmpr|tempo_alvo\(2) $ (!\tmpr|Add0~4_combout\)))) # (!\tmpr|Add0~6_combout\ & (!\tmpr|tempo_alvo\(3) & (\tmpr|tempo_alvo\(2) $ (!\tmpr|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Add0~6_combout\,
	datab => \tmpr|tempo_alvo\(3),
	datac => \tmpr|tempo_alvo\(2),
	datad => \tmpr|Add0~4_combout\,
	combout => \tmpr|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y50_N26
\tmpr|tempo_decorrido~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~6_combout\ = (\tmpr|segundo_zero~q\ & (\tmpr|Add0~10_combout\ & ((!\tmpr|Equal0~5_combout\) # (!\tmpr|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datab => \tmpr|Equal0~0_combout\,
	datac => \tmpr|Add0~10_combout\,
	datad => \tmpr|Equal0~5_combout\,
	combout => \tmpr|tempo_decorrido~6_combout\);

-- Location: FF_X59_Y50_N27
\tmpr|tempo_decorrido[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~6_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(5));

-- Location: LCCOMB_X60_Y50_N8
\tmpr|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~8_combout\ = (\tmpr|tempo_decorrido\(4) & (\tmpr|Add0~7\ $ (GND))) # (!\tmpr|tempo_decorrido\(4) & (!\tmpr|Add0~7\ & VCC))
-- \tmpr|Add0~9\ = CARRY((\tmpr|tempo_decorrido\(4) & !\tmpr|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_decorrido\(4),
	datad => VCC,
	cin => \tmpr|Add0~7\,
	combout => \tmpr|Add0~8_combout\,
	cout => \tmpr|Add0~9\);

-- Location: LCCOMB_X59_Y50_N0
\tmpr|tempo_decorrido~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~7_combout\ = (\tmpr|segundo_zero~q\ & (\tmpr|Add0~8_combout\ & ((!\tmpr|Equal0~5_combout\) # (!\tmpr|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datab => \tmpr|Equal0~0_combout\,
	datac => \tmpr|Add0~8_combout\,
	datad => \tmpr|Equal0~5_combout\,
	combout => \tmpr|tempo_decorrido~7_combout\);

-- Location: FF_X59_Y50_N1
\tmpr|tempo_decorrido[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~7_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(4));

-- Location: LCCOMB_X60_Y50_N10
\tmpr|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~10_combout\ = (\tmpr|tempo_decorrido\(5) & (!\tmpr|Add0~9\)) # (!\tmpr|tempo_decorrido\(5) & ((\tmpr|Add0~9\) # (GND)))
-- \tmpr|Add0~11\ = CARRY((!\tmpr|Add0~9\) # (!\tmpr|tempo_decorrido\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_decorrido\(5),
	datad => VCC,
	cin => \tmpr|Add0~9\,
	combout => \tmpr|Add0~10_combout\,
	cout => \tmpr|Add0~11\);

-- Location: LCCOMB_X54_Y50_N4
\tmpr|tempo_alvo~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_alvo~2_combout\ = (!\tmpr|index\(1) & (!\tmpr|index\(2) & (\tmpr|segundo_zero~q\ & !\tmpr|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(1),
	datab => \tmpr|index\(2),
	datac => \tmpr|segundo_zero~q\,
	datad => \tmpr|index\(0),
	combout => \tmpr|tempo_alvo~2_combout\);

-- Location: FF_X59_Y50_N25
\tmpr|tempo_alvo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	asdata => \tmpr|tempo_alvo~2_combout\,
	sload => VCC,
	ena => \tmpr|set_point[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_alvo\(5));

-- Location: LCCOMB_X59_Y50_N24
\tmpr|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~2_combout\ = (\tmpr|tempo_alvo\(3) & (\tmpr|Add0~8_combout\ & (\tmpr|Add0~10_combout\ $ (!\tmpr|tempo_alvo\(5))))) # (!\tmpr|tempo_alvo\(3) & (!\tmpr|Add0~8_combout\ & (\tmpr|Add0~10_combout\ $ (!\tmpr|tempo_alvo\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_alvo\(3),
	datab => \tmpr|Add0~10_combout\,
	datac => \tmpr|tempo_alvo\(5),
	datad => \tmpr|Add0~8_combout\,
	combout => \tmpr|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y50_N30
\tmpr|tempo_decorrido~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~4_combout\ = (\tmpr|Add0~14_combout\ & \tmpr|segundo_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|Add0~14_combout\,
	datad => \tmpr|segundo_zero~q\,
	combout => \tmpr|tempo_decorrido~4_combout\);

-- Location: FF_X60_Y50_N31
\tmpr|tempo_decorrido[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~4_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(7));

-- Location: LCCOMB_X60_Y50_N12
\tmpr|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~12_combout\ = (\tmpr|tempo_decorrido\(6) & (\tmpr|Add0~11\ $ (GND))) # (!\tmpr|tempo_decorrido\(6) & (!\tmpr|Add0~11\ & VCC))
-- \tmpr|Add0~13\ = CARRY((\tmpr|tempo_decorrido\(6) & !\tmpr|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|tempo_decorrido\(6),
	datad => VCC,
	cin => \tmpr|Add0~11\,
	combout => \tmpr|Add0~12_combout\,
	cout => \tmpr|Add0~13\);

-- Location: LCCOMB_X59_Y50_N28
\tmpr|tempo_decorrido~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~5_combout\ = (\tmpr|segundo_zero~q\ & (\tmpr|Add0~12_combout\ & ((!\tmpr|Equal0~5_combout\) # (!\tmpr|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datab => \tmpr|Equal0~0_combout\,
	datac => \tmpr|Add0~12_combout\,
	datad => \tmpr|Equal0~5_combout\,
	combout => \tmpr|tempo_decorrido~5_combout\);

-- Location: FF_X59_Y50_N29
\tmpr|tempo_decorrido[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~5_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(6));

-- Location: LCCOMB_X60_Y50_N14
\tmpr|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~14_combout\ = (\tmpr|tempo_decorrido\(7) & (!\tmpr|Add0~13\)) # (!\tmpr|tempo_decorrido\(7) & ((\tmpr|Add0~13\) # (GND)))
-- \tmpr|Add0~15\ = CARRY((!\tmpr|Add0~13\) # (!\tmpr|tempo_decorrido\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_decorrido\(7),
	datad => VCC,
	cin => \tmpr|Add0~13\,
	combout => \tmpr|Add0~14_combout\,
	cout => \tmpr|Add0~15\);

-- Location: LCCOMB_X61_Y50_N30
\tmpr|tempo_decorrido~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~3_combout\ = (\tmpr|Add0~16_combout\ & \tmpr|segundo_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|Add0~16_combout\,
	datad => \tmpr|segundo_zero~q\,
	combout => \tmpr|tempo_decorrido~3_combout\);

-- Location: FF_X60_Y50_N25
\tmpr|tempo_decorrido[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	asdata => \tmpr|tempo_decorrido~3_combout\,
	sload => VCC,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(8));

-- Location: LCCOMB_X60_Y50_N16
\tmpr|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~16_combout\ = (\tmpr|tempo_decorrido\(8) & (\tmpr|Add0~15\ $ (GND))) # (!\tmpr|tempo_decorrido\(8) & (!\tmpr|Add0~15\ & VCC))
-- \tmpr|Add0~17\ = CARRY((\tmpr|tempo_decorrido\(8) & !\tmpr|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|tempo_decorrido\(8),
	datad => VCC,
	cin => \tmpr|Add0~15\,
	combout => \tmpr|Add0~16_combout\,
	cout => \tmpr|Add0~17\);

-- Location: LCCOMB_X59_Y50_N8
\tmpr|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~4_combout\ = (!\tmpr|Add0~2_combout\ & (!\tmpr|Add0~14_combout\ & (!\tmpr|Add0~20_combout\ & !\tmpr|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Add0~2_combout\,
	datab => \tmpr|Add0~14_combout\,
	datac => \tmpr|Add0~20_combout\,
	datad => \tmpr|Add0~16_combout\,
	combout => \tmpr|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y50_N22
\tmpr|tempo_alvo~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_alvo~3_combout\ = (!\tmpr|index\(2) & (!\tmpr|index\(1) & (\tmpr|index\(0) & \tmpr|segundo_zero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(2),
	datab => \tmpr|index\(1),
	datac => \tmpr|index\(0),
	datad => \tmpr|segundo_zero~q\,
	combout => \tmpr|tempo_alvo~3_combout\);

-- Location: FF_X59_Y50_N23
\tmpr|tempo_alvo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_alvo~3_combout\,
	ena => \tmpr|set_point[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_alvo\(6));

-- Location: LCCOMB_X60_Y50_N18
\tmpr|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~18_combout\ = (\tmpr|tempo_decorrido\(9) & (!\tmpr|Add0~17\)) # (!\tmpr|tempo_decorrido\(9) & ((\tmpr|Add0~17\) # (GND)))
-- \tmpr|Add0~19\ = CARRY((!\tmpr|Add0~17\) # (!\tmpr|tempo_decorrido\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|tempo_decorrido\(9),
	datad => VCC,
	cin => \tmpr|Add0~17\,
	combout => \tmpr|Add0~18_combout\,
	cout => \tmpr|Add0~19\);

-- Location: LCCOMB_X58_Y50_N14
\tmpr|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~3_combout\ = (!\tmpr|Add0~0_combout\ & ((\tmpr|tempo_alvo\(6) & (\tmpr|Add0~12_combout\ & \tmpr|Add0~18_combout\)) # (!\tmpr|tempo_alvo\(6) & (!\tmpr|Add0~12_combout\ & !\tmpr|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_alvo\(6),
	datab => \tmpr|Add0~0_combout\,
	datac => \tmpr|Add0~12_combout\,
	datad => \tmpr|Add0~18_combout\,
	combout => \tmpr|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y50_N2
\tmpr|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~5_combout\ = (\tmpr|Equal0~1_combout\ & (\tmpr|Equal0~2_combout\ & (\tmpr|Equal0~4_combout\ & \tmpr|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Equal0~1_combout\,
	datab => \tmpr|Equal0~2_combout\,
	datac => \tmpr|Equal0~4_combout\,
	datad => \tmpr|Equal0~3_combout\,
	combout => \tmpr|Equal0~5_combout\);

-- Location: LCCOMB_X59_Y50_N30
\tmpr|tempo_decorrido~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~2_combout\ = (\tmpr|segundo_zero~q\ & (\tmpr|Add0~18_combout\ & ((!\tmpr|Equal0~0_combout\) # (!\tmpr|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datab => \tmpr|Equal0~5_combout\,
	datac => \tmpr|Equal0~0_combout\,
	datad => \tmpr|Add0~18_combout\,
	combout => \tmpr|tempo_decorrido~2_combout\);

-- Location: FF_X59_Y50_N31
\tmpr|tempo_decorrido[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~2_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(9));

-- Location: LCCOMB_X60_Y50_N20
\tmpr|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~20_combout\ = (\tmpr|tempo_decorrido\(10) & (\tmpr|Add0~19\ $ (GND))) # (!\tmpr|tempo_decorrido\(10) & (!\tmpr|Add0~19\ & VCC))
-- \tmpr|Add0~21\ = CARRY((\tmpr|tempo_decorrido\(10) & !\tmpr|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|tempo_decorrido\(10),
	datad => VCC,
	cin => \tmpr|Add0~19\,
	combout => \tmpr|Add0~20_combout\,
	cout => \tmpr|Add0~21\);

-- Location: LCCOMB_X61_Y50_N0
\tmpr|tempo_decorrido~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~1_combout\ = (\tmpr|segundo_zero~q\ & \tmpr|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|segundo_zero~q\,
	datad => \tmpr|Add0~20_combout\,
	combout => \tmpr|tempo_decorrido~1_combout\);

-- Location: FF_X60_Y50_N5
\tmpr|tempo_decorrido[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	asdata => \tmpr|tempo_decorrido~1_combout\,
	sload => VCC,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(10));

-- Location: LCCOMB_X60_Y50_N22
\tmpr|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~22_combout\ = (\tmpr|tempo_decorrido\(11) & (!\tmpr|Add0~21\)) # (!\tmpr|tempo_decorrido\(11) & ((\tmpr|Add0~21\) # (GND)))
-- \tmpr|Add0~23\ = CARRY((!\tmpr|Add0~21\) # (!\tmpr|tempo_decorrido\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|tempo_decorrido\(11),
	datad => VCC,
	cin => \tmpr|Add0~21\,
	combout => \tmpr|Add0~22_combout\,
	cout => \tmpr|Add0~23\);

-- Location: LCCOMB_X61_Y50_N4
\tmpr|tempo_decorrido~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|tempo_decorrido~0_combout\ = (\tmpr|segundo_zero~q\ & \tmpr|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|segundo_zero~q\,
	datad => \tmpr|Add0~22_combout\,
	combout => \tmpr|tempo_decorrido~0_combout\);

-- Location: FF_X61_Y50_N5
\tmpr|tempo_decorrido[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|tempo_decorrido~0_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|tempo_decorrido\(11));

-- Location: LCCOMB_X60_Y50_N24
\tmpr|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add0~24_combout\ = \tmpr|Add0~23\ $ (!\tmpr|tempo_decorrido\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tmpr|tempo_decorrido\(12),
	cin => \tmpr|Add0~23\,
	combout => \tmpr|Add0~24_combout\);

-- Location: LCCOMB_X58_Y50_N28
\tmpr|segundo_zero~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|segundo_zero~3_combout\ = (!\tmpr|Add0~24_combout\ & (!\tmpr|Add0~22_combout\ & (\tmpr|segundo_zero~q\ & \tmpr|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Add0~24_combout\,
	datab => \tmpr|Add0~22_combout\,
	datac => \tmpr|segundo_zero~q\,
	datad => \tmpr|Equal0~5_combout\,
	combout => \tmpr|segundo_zero~3_combout\);

-- Location: LCCOMB_X54_Y50_N8
\tmpr|fim_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|fim_tmp~0_combout\ = (\tmpr|iniciado~q\ & (\tmpr|segundo_zero~3_combout\ & ((!\tmpr|Equal2~0_combout\) # (!\tmpr|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Equal1~0_combout\,
	datab => \tmpr|Equal2~0_combout\,
	datac => \tmpr|iniciado~q\,
	datad => \tmpr|segundo_zero~3_combout\,
	combout => \tmpr|fim_tmp~0_combout\);

-- Location: FF_X54_Y50_N9
\tmpr|fim_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|fim_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|fim_tmp~q\);

-- Location: FF_X54_Y50_N23
\tmpr|iniciado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iniciar_tmp~q\,
	d => \tmpr|iniciado~feeder_combout\,
	clrn => \tmpr|ALT_INV_fim_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|iniciado~q\);

-- Location: LCCOMB_X59_Y50_N4
\tmpr|set_point[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[5]~3_combout\ = (\tmpr|iniciado~q\ & ((\tmpr|Equal1~0_combout\) # (!\tmpr|segundo_zero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datac => \tmpr|iniciado~q\,
	datad => \tmpr|Equal1~0_combout\,
	combout => \tmpr|set_point[5]~3_combout\);

-- Location: LCCOMB_X58_Y50_N6
\tmpr|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~6_combout\ = (\tmpr|Equal0~1_combout\ & (\tmpr|Equal0~3_combout\ & \tmpr|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|Equal0~1_combout\,
	datac => \tmpr|Equal0~3_combout\,
	datad => \tmpr|Equal0~2_combout\,
	combout => \tmpr|Equal0~6_combout\);

-- Location: LCCOMB_X58_Y50_N12
\tmpr|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal0~7_combout\ = (!\tmpr|Add0~24_combout\ & (!\tmpr|Add0~22_combout\ & (\tmpr|Equal0~4_combout\ & \tmpr|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Add0~24_combout\,
	datab => \tmpr|Add0~22_combout\,
	datac => \tmpr|Equal0~4_combout\,
	datad => \tmpr|Equal0~6_combout\,
	combout => \tmpr|Equal0~7_combout\);

-- Location: LCCOMB_X58_Y50_N16
\tmpr|index[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|index[0]~2_combout\ = (\tmpr|set_point[5]~3_combout\ & (\tmpr|segundo_zero~q\ & (\tmpr|index\(0) $ (\tmpr|Equal0~7_combout\)))) # (!\tmpr|set_point[5]~3_combout\ & (((\tmpr|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point[5]~3_combout\,
	datab => \tmpr|segundo_zero~q\,
	datac => \tmpr|index\(0),
	datad => \tmpr|Equal0~7_combout\,
	combout => \tmpr|index[0]~2_combout\);

-- Location: FF_X58_Y50_N17
\tmpr|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|index[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|index\(0));

-- Location: LCCOMB_X54_Y50_N14
\tmpr|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Add1~0_combout\ = \tmpr|index\(2) $ (((\tmpr|index\(0) & \tmpr|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(0),
	datac => \tmpr|index\(1),
	datad => \tmpr|index\(2),
	combout => \tmpr|Add1~0_combout\);

-- Location: LCCOMB_X58_Y50_N18
\tmpr|index[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|index[2]~1_combout\ = (\tmpr|set_point[5]~6_combout\ & (\tmpr|segundo_zero~q\ & ((\tmpr|Add1~0_combout\)))) # (!\tmpr|set_point[5]~6_combout\ & (((\tmpr|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point[5]~6_combout\,
	datab => \tmpr|segundo_zero~q\,
	datac => \tmpr|index\(2),
	datad => \tmpr|Add1~0_combout\,
	combout => \tmpr|index[2]~1_combout\);

-- Location: FF_X58_Y50_N19
\tmpr|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|index[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|index\(2));

-- Location: LCCOMB_X54_Y50_N10
\tmpr|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|Equal1~0_combout\ = (\tmpr|index\(1)) # ((\tmpr|index\(2)) # ((!\tmpr|index\(3)) # (!\tmpr|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(1),
	datab => \tmpr|index\(2),
	datac => \tmpr|index\(0),
	datad => \tmpr|index\(3),
	combout => \tmpr|Equal1~0_combout\);

-- Location: LCCOMB_X59_Y50_N12
\tmpr|segundo_zero~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|segundo_zero~2_combout\ = (((\tmpr|Equal1~0_combout\ & \tmpr|Equal2~0_combout\)) # (!\tmpr|Equal0~7_combout\)) # (!\tmpr|segundo_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Equal1~0_combout\,
	datab => \tmpr|Equal2~0_combout\,
	datac => \tmpr|segundo_zero~q\,
	datad => \tmpr|Equal0~7_combout\,
	combout => \tmpr|segundo_zero~2_combout\);

-- Location: FF_X59_Y50_N13
\tmpr|segundo_zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|segundo_zero~2_combout\,
	ena => \tmpr|iniciado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|segundo_zero~q\);

-- Location: LCCOMB_X59_Y50_N18
\tmpr|set_point[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[5]~6_combout\ = (\tmpr|set_point[5]~3_combout\ & (((\tmpr|Equal0~0_combout\ & \tmpr|Equal0~5_combout\)) # (!\tmpr|segundo_zero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|segundo_zero~q\,
	datab => \tmpr|Equal0~0_combout\,
	datac => \tmpr|set_point[5]~3_combout\,
	datad => \tmpr|Equal0~5_combout\,
	combout => \tmpr|set_point[5]~6_combout\);

-- Location: LCCOMB_X58_Y50_N24
\tmpr|index[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|index[1]~0_combout\ = (\tmpr|set_point[5]~6_combout\ & (\tmpr|segundo_zero~q\ & (\tmpr|index\(1) $ (\tmpr|index\(0))))) # (!\tmpr|set_point[5]~6_combout\ & (((\tmpr|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point[5]~6_combout\,
	datab => \tmpr|segundo_zero~q\,
	datac => \tmpr|index\(1),
	datad => \tmpr|index\(0),
	combout => \tmpr|index[1]~0_combout\);

-- Location: FF_X58_Y50_N25
\tmpr|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|index\(1));

-- Location: LCCOMB_X54_Y50_N6
\tmpr|set_point~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point~2_combout\ = (\tmpr|index\(1) & (\tmpr|index\(2) & (\tmpr|index\(0) & \tmpr|index\(3)))) # (!\tmpr|index\(1) & (!\tmpr|index\(2) & (!\tmpr|index\(0) & !\tmpr|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(1),
	datab => \tmpr|index\(2),
	datac => \tmpr|index\(0),
	datad => \tmpr|index\(3),
	combout => \tmpr|set_point~2_combout\);

-- Location: LCCOMB_X58_Y50_N4
\tmpr|set_point[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[5]~feeder_combout\ = \tmpr|set_point~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tmpr|set_point~2_combout\,
	combout => \tmpr|set_point[5]~feeder_combout\);

-- Location: LCCOMB_X58_Y50_N10
\tmpr|set_point[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[5]~7_combout\ = (\tmpr|set_point[5]~3_combout\ & (((\tmpr|Equal2~0_combout\ & \tmpr|Equal0~7_combout\)) # (!\tmpr|segundo_zero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Equal2~0_combout\,
	datab => \tmpr|set_point[5]~3_combout\,
	datac => \tmpr|segundo_zero~q\,
	datad => \tmpr|Equal0~7_combout\,
	combout => \tmpr|set_point[5]~7_combout\);

-- Location: FF_X58_Y50_N5
\tmpr|set_point[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|set_point[5]~feeder_combout\,
	asdata => VCC,
	sload => \tmpr|ALT_INV_segundo_zero~q\,
	ena => \tmpr|set_point[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|set_point\(5));

-- Location: LCCOMB_X54_Y50_N16
\tmpr|set_point~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point~4_combout\ = (\tmpr|index\(1) & (\tmpr|index\(2) & (\tmpr|index\(0) & \tmpr|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(1),
	datab => \tmpr|index\(2),
	datac => \tmpr|index\(0),
	datad => \tmpr|index\(3),
	combout => \tmpr|set_point~4_combout\);

-- Location: LCCOMB_X58_Y50_N2
\tmpr|set_point[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[1]~feeder_combout\ = \tmpr|set_point~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tmpr|set_point~4_combout\,
	combout => \tmpr|set_point[1]~feeder_combout\);

-- Location: FF_X58_Y50_N3
\tmpr|set_point[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|set_point[1]~feeder_combout\,
	asdata => VCC,
	sload => \tmpr|ALT_INV_segundo_zero~q\,
	ena => \tmpr|set_point[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|set_point\(1));

-- Location: LCCOMB_X54_Y50_N26
\tmpr|set_point~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point~5_combout\ = (\tmpr|index\(1) & (\tmpr|index\(2) & (\tmpr|index\(0) & \tmpr|index\(3)))) # (!\tmpr|index\(1) & (!\tmpr|index\(2) & ((!\tmpr|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|index\(1),
	datab => \tmpr|index\(2),
	datac => \tmpr|index\(0),
	datad => \tmpr|index\(3),
	combout => \tmpr|set_point~5_combout\);

-- Location: LCCOMB_X58_Y50_N20
\tmpr|set_point[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[2]~feeder_combout\ = \tmpr|set_point~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tmpr|set_point~5_combout\,
	combout => \tmpr|set_point[2]~feeder_combout\);

-- Location: FF_X58_Y50_N21
\tmpr|set_point[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|set_point[2]~feeder_combout\,
	asdata => VCC,
	sload => \tmpr|ALT_INV_segundo_zero~q\,
	ena => \tmpr|set_point[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|set_point\(2));

-- Location: LCCOMB_X57_Y53_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \tmpr|set_point\(2) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\tmpr|set_point\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(2),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X57_Y53_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\tmpr|set_point\(1) & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\tmpr|set_point\(1) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\tmpr|set_point\(1) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X57_Y53_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\tmpr|set_point\(5) & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\tmpr|set_point\(5) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\tmpr|set_point\(5) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X57_Y53_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y53_N20
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

-- Location: LCCOMB_X57_Y53_N6
\Div0|auto_generated|divider|divider|StageOut[23]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~17_combout\);

-- Location: LCCOMB_X57_Y53_N8
\Div0|auto_generated|divider|divider|StageOut[23]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ = (\tmpr|set_point\(5) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~16_combout\);

-- Location: LCCOMB_X57_Y53_N0
\Div0|auto_generated|divider|divider|StageOut[22]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~19_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~19_combout\);

-- Location: LCCOMB_X58_Y53_N28
\Div0|auto_generated|divider|divider|StageOut[22]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~18_combout\ = (\tmpr|set_point\(1) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~18_combout\);

-- Location: LCCOMB_X57_Y53_N10
\Div0|auto_generated|divider|divider|StageOut[21]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ = (\tmpr|set_point\(2) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~20_combout\);

-- Location: LCCOMB_X57_Y53_N4
\Div0|auto_generated|divider|divider|StageOut[21]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~21_combout\);

-- Location: LCCOMB_X57_Y53_N2
\Div0|auto_generated|divider|divider|StageOut[20]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~22_combout\ = (\tmpr|set_point\(2) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~22_combout\);

-- Location: LCCOMB_X57_Y53_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[21]~20_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~22_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[21]~20_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~22_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y53_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~20_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~21_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~21_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~20_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~21_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~21_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y53_N26
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~18_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~18_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~19_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y53_N28
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~17_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~16_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y53_N30
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

-- Location: LCCOMB_X58_Y53_N18
\dezena_tmp[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[1]~12_combout\ = !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \dezena_tmp[1]~12_combout\);

-- Location: LCCOMB_X58_Y49_N4
\update_display~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~3_combout\ = (\Add0~16_combout\ & (((!\Equal0~4_combout\) # (!\Add0~32_combout\)) # (!\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~16_combout\,
	datad => \Equal0~4_combout\,
	combout => \update_display~3_combout\);

-- Location: FF_X58_Y49_N5
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

-- Location: LCCOMB_X58_Y49_N18
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (update_display(2) & (\Add0~3\ $ (GND))) # (!update_display(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((update_display(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X58_Y49_N19
\update_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(2));

-- Location: LCCOMB_X58_Y49_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (update_display(3) & (!\Add0~5\)) # (!update_display(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!update_display(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X58_Y49_N21
\update_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(3));

-- Location: LCCOMB_X58_Y49_N22
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (update_display(4) & (\Add0~7\ $ (GND))) # (!update_display(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((update_display(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X58_Y49_N23
\update_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(4));

-- Location: LCCOMB_X58_Y49_N24
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (update_display(5) & (!\Add0~9\)) # (!update_display(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!update_display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X58_Y49_N25
\update_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(5));

-- Location: LCCOMB_X58_Y49_N26
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (update_display(6) & (\Add0~11\ $ (GND))) # (!update_display(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((update_display(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X58_Y49_N2
\update_display~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~4_combout\ = (\Add0~12_combout\ & (((!\Equal0~4_combout\) # (!\Add0~32_combout\)) # (!\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~12_combout\,
	datad => \Equal0~4_combout\,
	combout => \update_display~4_combout\);

-- Location: FF_X58_Y49_N3
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

-- Location: LCCOMB_X58_Y49_N28
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (update_display(7) & (!\Add0~13\)) # (!update_display(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!update_display(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X58_Y49_N29
\update_display[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(7));

-- Location: LCCOMB_X58_Y49_N30
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (update_display(8) & (\Add0~15\ $ (GND))) # (!update_display(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((update_display(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X58_Y48_N1
\update_display[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(9));

-- Location: LCCOMB_X58_Y48_N0
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (update_display(9) & (!\Add0~17\)) # (!update_display(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!update_display(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X58_Y48_N30
\update_display~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~1_combout\ = (\Add0~22_combout\ & (((!\Equal0~4_combout\) # (!\Add0~32_combout\)) # (!\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~22_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \update_display~1_combout\);

-- Location: FF_X58_Y48_N31
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

-- Location: LCCOMB_X58_Y48_N2
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (update_display(10) & (\Add0~19\ $ (GND))) # (!update_display(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((update_display(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X58_Y48_N28
\update_display~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~2_combout\ = (\Add0~20_combout\ & (((!\Equal0~4_combout\) # (!\Add0~32_combout\)) # (!\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \update_display~2_combout\);

-- Location: FF_X58_Y48_N29
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

-- Location: LCCOMB_X58_Y48_N4
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (update_display(11) & (!\Add0~21\)) # (!update_display(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!update_display(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X58_Y48_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Add0~16_combout\ & (!\Add0~18_combout\ & (\Add0~22_combout\ & \Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~20_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X58_Y49_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~0_combout\ & (!\Add0~2_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X58_Y49_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add0~12_combout\ & (!\Add0~14_combout\ & (!\Add0~8_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X58_Y48_N13
\update_display[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(15));

-- Location: LCCOMB_X58_Y48_N6
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (update_display(12) & (\Add0~23\ $ (GND))) # (!update_display(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((update_display(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X58_Y48_N7
\update_display[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(12));

-- Location: LCCOMB_X58_Y48_N8
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (update_display(13) & (!\Add0~25\)) # (!update_display(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!update_display(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X58_Y48_N9
\update_display[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(13));

-- Location: LCCOMB_X58_Y48_N10
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (update_display(14) & (\Add0~27\ $ (GND))) # (!update_display(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((update_display(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X58_Y48_N11
\update_display[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(14));

-- Location: LCCOMB_X58_Y48_N12
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (update_display(15) & (!\Add0~29\)) # (!update_display(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!update_display(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X58_Y48_N20
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~30_combout\ & (!\Add0~26_combout\ & (!\Add0~24_combout\ & !\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~28_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X58_Y48_N18
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X57_Y48_N24
\update_display~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~5_combout\ = (\Add0~34_combout\ & ((!\Equal0~4_combout\) # (!\Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \update_display~5_combout\);

-- Location: FF_X57_Y48_N25
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

-- Location: LCCOMB_X58_Y48_N14
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (update_display(16) & (\Add0~31\ $ (GND))) # (!update_display(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((update_display(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X58_Y48_N16
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = \Add0~33\ $ (update_display(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => update_display(17),
	cin => \Add0~33\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X58_Y48_N24
\update_display~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~0_combout\ = (\Add0~32_combout\ & ((!\Equal0~4_combout\) # (!\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \update_display~0_combout\);

-- Location: FF_X58_Y48_N25
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

-- Location: LCCOMB_X58_Y48_N22
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add0~32_combout\ & (\Add0~34_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~34_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X58_Y53_N19
\dezena_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_tmp[1]~12_combout\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(1));

-- Location: LCCOMB_X58_Y53_N10
\Div0|auto_generated|divider|divider|StageOut[28]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~23_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~23_combout\);

-- Location: LCCOMB_X58_Y53_N14
\Div0|auto_generated|divider|divider|StageOut[28]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\tmpr|set_point\(1)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \tmpr|set_point\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\);

-- Location: LCCOMB_X58_Y53_N12
\Div0|auto_generated|divider|divider|StageOut[27]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~24_combout\);

-- Location: LCCOMB_X58_Y53_N20
\Div0|auto_generated|divider|divider|StageOut[27]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\tmpr|set_point\(2))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(2),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~30_combout\);

-- Location: LCCOMB_X58_Y53_N26
\Div0|auto_generated|divider|divider|StageOut[26]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~25_combout\ = (\tmpr|set_point\(2) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|set_point\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~25_combout\);

-- Location: LCCOMB_X58_Y53_N24
\Div0|auto_generated|divider|divider|StageOut[26]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~26_combout\);

-- Location: LCCOMB_X58_Y53_N22
\Div0|auto_generated|divider|divider|StageOut[25]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~27_combout\ = (\tmpr|set_point\(1) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~27_combout\);

-- Location: LCCOMB_X58_Y53_N16
\Div0|auto_generated|divider|divider|StageOut[25]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~28_combout\ = (\tmpr|set_point\(1) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~28_combout\);

-- Location: LCCOMB_X58_Y53_N0
\dezena_tmp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~2_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~27_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~28_combout\,
	datad => VCC,
	cout => \dezena_tmp[0]~2_cout\);

-- Location: LCCOMB_X58_Y53_N2
\dezena_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~4_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~25_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~26_combout\ & !\dezena_tmp[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~25_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~26_combout\,
	datad => VCC,
	cin => \dezena_tmp[0]~2_cout\,
	cout => \dezena_tmp[0]~4_cout\);

-- Location: LCCOMB_X58_Y53_N4
\dezena_tmp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~6_cout\ = CARRY((!\dezena_tmp[0]~4_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~24_combout\) # (\Div0|auto_generated|divider|divider|StageOut[27]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~30_combout\,
	datad => VCC,
	cin => \dezena_tmp[0]~4_cout\,
	cout => \dezena_tmp[0]~6_cout\);

-- Location: LCCOMB_X58_Y53_N6
\dezena_tmp[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~8_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~23_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~29_combout\ & !\dezena_tmp[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~23_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~29_combout\,
	datad => VCC,
	cin => \dezena_tmp[0]~6_cout\,
	cout => \dezena_tmp[0]~8_cout\);

-- Location: LCCOMB_X58_Y53_N8
\dezena_tmp[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~9_combout\ = !\dezena_tmp[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dezena_tmp[0]~8_cout\,
	combout => \dezena_tmp[0]~9_combout\);

-- Location: FF_X58_Y53_N9
\dezena_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_tmp[0]~9_combout\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(0));

-- Location: LCCOMB_X58_Y53_N30
\dezena_tmp[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[2]~11_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezena_tmp[2]~11_combout\);

-- Location: FF_X58_Y48_N17
\dezena_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \dezena_tmp[2]~11_combout\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(2));

-- Location: LCCOMB_X66_Y53_N0
\display_dezena|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[0]~0_combout\ = (!dezena_tmp(1) & (dezena_tmp(0) $ (dezena_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => dezena_tmp(2),
	combout => \display_dezena|out_display[0]~0_combout\);

-- Location: LCCOMB_X66_Y53_N22
\display_dezena|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[1]~1_combout\ = (dezena_tmp(2) & (dezena_tmp(1) $ (dezena_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => dezena_tmp(2),
	combout => \display_dezena|out_display[1]~1_combout\);

-- Location: LCCOMB_X66_Y53_N24
\display_dezena|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[2]~2_combout\ = ((dezena_tmp(0)) # (dezena_tmp(2))) # (!dezena_tmp(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => dezena_tmp(2),
	combout => \display_dezena|out_display[2]~2_combout\);

-- Location: LCCOMB_X66_Y53_N2
\display_dezena|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[3]~3_combout\ = (dezena_tmp(1) & (dezena_tmp(0) & dezena_tmp(2))) # (!dezena_tmp(1) & (dezena_tmp(0) $ (dezena_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => dezena_tmp(2),
	combout => \display_dezena|out_display[3]~3_combout\);

-- Location: LCCOMB_X66_Y53_N20
\display_dezena|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[4]~4_combout\ = (dezena_tmp(0)) # ((!dezena_tmp(1) & dezena_tmp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => dezena_tmp(2),
	combout => \display_dezena|out_display[4]~4_combout\);

-- Location: LCCOMB_X66_Y53_N10
\display_dezena|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[5]~5_combout\ = (dezena_tmp(1) & (!dezena_tmp(0) & dezena_tmp(2))) # (!dezena_tmp(1) & ((dezena_tmp(2)) # (!dezena_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => dezena_tmp(2),
	combout => \display_dezena|out_display[5]~5_combout\);

-- Location: LCCOMB_X66_Y53_N12
\display_dezena|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[6]~6_combout\ = (dezena_tmp(1) & (dezena_tmp(0) & dezena_tmp(2))) # (!dezena_tmp(1) & ((!dezena_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => dezena_tmp(2),
	combout => \display_dezena|out_display[6]~6_combout\);

-- Location: LCCOMB_X57_Y50_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \tmpr|set_point\(2) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\tmpr|set_point\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(2),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X57_Y50_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\tmpr|set_point\(1) & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\tmpr|set_point\(1) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\tmpr|set_point\(1) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(1),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X57_Y50_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\tmpr|set_point\(5) & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\tmpr|set_point\(5) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\tmpr|set_point\(5) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X57_Y50_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X57_Y50_N18
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

-- Location: LCCOMB_X57_Y50_N4
\Mod0|auto_generated|divider|divider|StageOut[32]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~26_combout\);

-- Location: LCCOMB_X57_Y50_N20
\Mod0|auto_generated|divider|divider|StageOut[31]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\);

-- Location: LCCOMB_X57_Y50_N22
\Mod0|auto_generated|divider|divider|StageOut[31]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\ = (\tmpr|set_point\(5) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\);

-- Location: LCCOMB_X56_Y50_N10
\Mod0|auto_generated|divider|divider|StageOut[30]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~30_combout\);

-- Location: LCCOMB_X56_Y50_N28
\Mod0|auto_generated|divider|divider|StageOut[30]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~29_combout\ = (\tmpr|set_point\(1) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~29_combout\);

-- Location: LCCOMB_X56_Y50_N12
\Mod0|auto_generated|divider|divider|StageOut[28]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\ = (\tmpr|set_point\(2) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\);

-- Location: LCCOMB_X57_Y50_N26
\Mod0|auto_generated|divider|divider|StageOut[29]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~32_combout\);

-- Location: LCCOMB_X56_Y50_N2
\Mod0|auto_generated|divider|divider|StageOut[28]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~33_combout\ = (\tmpr|set_point\(2) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~33_combout\);

-- Location: LCCOMB_X56_Y50_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~33_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~33_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X56_Y50_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[29]~32_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[29]~32_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~32_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~31_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[29]~32_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X56_Y50_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[30]~30_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~29_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[30]~30_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~29_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~30_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~29_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X56_Y50_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X56_Y50_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~26_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[32]~26_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~26_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X56_Y50_N26
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

-- Location: LCCOMB_X56_Y50_N4
\Mod0|auto_generated|divider|divider|StageOut[37]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\);

-- Location: LCCOMB_X55_Y50_N28
\Mod0|auto_generated|divider|divider|StageOut[37]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\tmpr|set_point\(2))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(2),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\);

-- Location: LCCOMB_X55_Y50_N30
\Mod0|auto_generated|divider|divider|StageOut[40]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~45_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~45_combout\);

-- Location: LCCOMB_X56_Y50_N8
\Mod0|auto_generated|divider|divider|StageOut[40]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\);

-- Location: LCCOMB_X55_Y50_N6
\Mod0|auto_generated|divider|divider|StageOut[39]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\tmpr|set_point\(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point\(5),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~47_combout\);

-- Location: LCCOMB_X56_Y50_N14
\Mod0|auto_generated|divider|divider|StageOut[39]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~40_combout\);

-- Location: LCCOMB_X56_Y50_N30
\Mod0|auto_generated|divider|divider|StageOut[38]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\tmpr|set_point\(1))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \tmpr|set_point\(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\);

-- Location: LCCOMB_X56_Y50_N0
\Mod0|auto_generated|divider|divider|StageOut[38]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~41_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~41_combout\);

-- Location: LCCOMB_X56_Y50_N6
\Mod0|auto_generated|divider|divider|StageOut[36]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\);

-- Location: LCCOMB_X55_Y50_N2
\Mod0|auto_generated|divider|divider|StageOut[36]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\ = (\tmpr|set_point\(2) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\);

-- Location: LCCOMB_X55_Y50_N4
\Mod0|auto_generated|divider|divider|StageOut[35]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~38_combout\ = (\tmpr|set_point\(1) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~38_combout\);

-- Location: LCCOMB_X55_Y50_N24
\Mod0|auto_generated|divider|divider|StageOut[35]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\ = (\tmpr|set_point\(1) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmpr|set_point\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\);

-- Location: LCCOMB_X55_Y50_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[35]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X55_Y50_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X55_Y50_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X55_Y50_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~41_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~41_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X55_Y50_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[39]~47_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[39]~40_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[39]~47_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[39]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X55_Y50_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[40]~45_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~39_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X55_Y50_N22
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

-- Location: LCCOMB_X55_Y50_N0
\Mod0|auto_generated|divider|divider|StageOut[45]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~42_combout\);

-- Location: FF_X55_Y50_N1
\unidade_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[45]~42_combout\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(3));

-- Location: LCCOMB_X55_Y50_N26
\Mod0|auto_generated|divider|divider|StageOut[44]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~35_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~43_combout\);

-- Location: FF_X55_Y50_N27
\unidade_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[44]~43_combout\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(2));

-- Location: LCCOMB_X58_Y50_N0
\tmpr|set_point[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[0]~8_combout\ = (\tmpr|segundo_zero~q\ & (((!\tmpr|index\(0) & \tmpr|set_point~2_combout\)) # (!\tmpr|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|Equal2~0_combout\,
	datab => \tmpr|segundo_zero~q\,
	datac => \tmpr|index\(0),
	datad => \tmpr|set_point~2_combout\,
	combout => \tmpr|set_point[0]~8_combout\);

-- Location: LCCOMB_X58_Y50_N22
\tmpr|set_point[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[0]~9_combout\ = (\tmpr|set_point[5]~6_combout\ & (\tmpr|set_point[0]~8_combout\ & ((\tmpr|set_point\(0)) # (\tmpr|Equal2~0_combout\)))) # (!\tmpr|set_point[5]~6_combout\ & (\tmpr|set_point\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|set_point[5]~6_combout\,
	datab => \tmpr|set_point\(0),
	datac => \tmpr|Equal2~0_combout\,
	datad => \tmpr|set_point[0]~8_combout\,
	combout => \tmpr|set_point[0]~9_combout\);

-- Location: LCCOMB_X58_Y50_N8
\tmpr|set_point[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|set_point[0]~feeder_combout\ = \tmpr|set_point[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|set_point[0]~9_combout\,
	combout => \tmpr|set_point[0]~feeder_combout\);

-- Location: FF_X58_Y50_N9
\tmpr|set_point[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|set_point[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|set_point\(0));

-- Location: FF_X58_Y48_N23
\unidade_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \tmpr|set_point\(0),
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(0));

-- Location: LCCOMB_X55_Y50_N8
\Mod0|auto_generated|divider|divider|StageOut[43]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\tmpr|set_point\(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmpr|set_point\(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~44_combout\);

-- Location: FF_X55_Y50_N9
\unidade_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[43]~44_combout\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(1));

-- Location: LCCOMB_X59_Y51_N0
\display_unidade|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[0]~0_combout\ = (unidade_tmp(1) & (unidade_tmp(3))) # (!unidade_tmp(1) & (unidade_tmp(2) $ (((!unidade_tmp(3) & unidade_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => unidade_tmp(2),
	datac => unidade_tmp(0),
	datad => unidade_tmp(1),
	combout => \display_unidade|out_display[0]~0_combout\);

-- Location: LCCOMB_X59_Y51_N22
\display_unidade|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[1]~1_combout\ = (unidade_tmp(3) & ((unidade_tmp(2)) # ((unidade_tmp(1))))) # (!unidade_tmp(3) & (unidade_tmp(2) & (unidade_tmp(0) $ (unidade_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => unidade_tmp(2),
	datac => unidade_tmp(0),
	datad => unidade_tmp(1),
	combout => \display_unidade|out_display[1]~1_combout\);

-- Location: LCCOMB_X59_Y51_N12
\display_unidade|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[2]~2_combout\ = (unidade_tmp(2) & (!unidade_tmp(3))) # (!unidade_tmp(2) & (((!unidade_tmp(3) & unidade_tmp(0))) # (!unidade_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => unidade_tmp(2),
	datac => unidade_tmp(0),
	datad => unidade_tmp(1),
	combout => \display_unidade|out_display[2]~2_combout\);

-- Location: LCCOMB_X59_Y51_N2
\display_unidade|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[3]~3_combout\ = (unidade_tmp(1) & ((unidade_tmp(3)) # ((unidade_tmp(2) & unidade_tmp(0))))) # (!unidade_tmp(1) & (unidade_tmp(2) $ (((!unidade_tmp(3) & unidade_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => unidade_tmp(2),
	datac => unidade_tmp(0),
	datad => unidade_tmp(1),
	combout => \display_unidade|out_display[3]~3_combout\);

-- Location: LCCOMB_X59_Y51_N20
\display_unidade|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[4]~4_combout\ = (unidade_tmp(0)) # ((unidade_tmp(1) & (unidade_tmp(3))) # (!unidade_tmp(1) & ((unidade_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => unidade_tmp(2),
	datac => unidade_tmp(0),
	datad => unidade_tmp(1),
	combout => \display_unidade|out_display[4]~4_combout\);

-- Location: LCCOMB_X59_Y51_N6
\display_unidade|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[5]~5_combout\ = (unidade_tmp(2) & (!unidade_tmp(3) & ((!unidade_tmp(1)) # (!unidade_tmp(0))))) # (!unidade_tmp(2) & (!unidade_tmp(1) & ((unidade_tmp(3)) # (!unidade_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => unidade_tmp(2),
	datac => unidade_tmp(0),
	datad => unidade_tmp(1),
	combout => \display_unidade|out_display[5]~5_combout\);

-- Location: LCCOMB_X59_Y51_N24
\display_unidade|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[6]~6_combout\ = (unidade_tmp(2) & ((unidade_tmp(3)) # ((unidade_tmp(0) & unidade_tmp(1))))) # (!unidade_tmp(2) & (unidade_tmp(3) $ (((!unidade_tmp(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => unidade_tmp(2),
	datac => unidade_tmp(0),
	datad => unidade_tmp(1),
	combout => \display_unidade|out_display[6]~6_combout\);

-- Location: LCCOMB_X58_Y50_N30
\tmpr|alteracao_set_point_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tmpr|alteracao_set_point_tmp~0_combout\ = (\tmpr|iniciado~q\ & (\tmpr|Equal1~0_combout\ & (\tmpr|Equal2~0_combout\ & \tmpr|segundo_zero~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmpr|iniciado~q\,
	datab => \tmpr|Equal1~0_combout\,
	datac => \tmpr|Equal2~0_combout\,
	datad => \tmpr|segundo_zero~3_combout\,
	combout => \tmpr|alteracao_set_point_tmp~0_combout\);

-- Location: FF_X58_Y50_N31
\tmpr|alteracao_set_point_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tmpr|divisor_1Mx|out_clk_tmp~clkctrl_outclk\,
	d => \tmpr|alteracao_set_point_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmpr|alteracao_set_point_tmp~q\);

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

ww_dezena(0) <= \dezena[0]~output_o\;

ww_dezena(1) <= \dezena[1]~output_o\;

ww_dezena(2) <= \dezena[2]~output_o\;

ww_dezena(3) <= \dezena[3]~output_o\;

ww_dezena(4) <= \dezena[4]~output_o\;

ww_dezena(5) <= \dezena[5]~output_o\;

ww_dezena(6) <= \dezena[6]~output_o\;

ww_unidade(0) <= \unidade[0]~output_o\;

ww_unidade(1) <= \unidade[1]~output_o\;

ww_unidade(2) <= \unidade[2]~output_o\;

ww_unidade(3) <= \unidade[3]~output_o\;

ww_unidade(4) <= \unidade[4]~output_o\;

ww_unidade(5) <= \unidade[5]~output_o\;

ww_unidade(6) <= \unidade[6]~output_o\;

ww_alteracao <= \alteracao~output_o\;

ww_fim <= \fim~output_o\;
END structure;


