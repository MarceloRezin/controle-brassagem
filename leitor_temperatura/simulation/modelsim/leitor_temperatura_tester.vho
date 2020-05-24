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

-- DATE "05/24/2020 17:15:36"

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

ENTITY 	leitor_temperatura_tester IS
    PORT (
	clk_50MHZ : IN std_logic;
	so : IN std_logic;
	cs : BUFFER std_logic;
	sck : BUFFER std_logic;
	dezena : BUFFER std_logic_vector(6 DOWNTO 0);
	unidade : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END leitor_temperatura_tester;

-- Design Ports Information
-- cs	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sck	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- so	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHZ	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF leitor_temperatura_tester IS
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
SIGNAL ww_so : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_sck : std_logic;
SIGNAL ww_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \leitor|sck_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \sck~output_o\ : std_logic;
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
SIGNAL \divisor_50x|Equal0~0_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~1_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~2_combout\ : std_logic;
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
SIGNAL \leitor|Add0~0_combout\ : std_logic;
SIGNAL \leitor|Add0~1\ : std_logic;
SIGNAL \leitor|Add0~2_combout\ : std_logic;
SIGNAL \leitor|Add0~3\ : std_logic;
SIGNAL \leitor|Add0~4_combout\ : std_logic;
SIGNAL \leitor|Add0~5\ : std_logic;
SIGNAL \leitor|Add0~6_combout\ : std_logic;
SIGNAL \leitor|Add0~7\ : std_logic;
SIGNAL \leitor|Add0~8_combout\ : std_logic;
SIGNAL \leitor|Add0~9\ : std_logic;
SIGNAL \leitor|Add0~10_combout\ : std_logic;
SIGNAL \leitor|Add0~11\ : std_logic;
SIGNAL \leitor|Add0~12_combout\ : std_logic;
SIGNAL \leitor|delay_10s~3_combout\ : std_logic;
SIGNAL \leitor|Add0~13\ : std_logic;
SIGNAL \leitor|Add0~14_combout\ : std_logic;
SIGNAL \leitor|Equal1~2_combout\ : std_logic;
SIGNAL \leitor|Equal1~1_combout\ : std_logic;
SIGNAL \leitor|Add0~15\ : std_logic;
SIGNAL \leitor|Add0~16_combout\ : std_logic;
SIGNAL \leitor|Add0~17\ : std_logic;
SIGNAL \leitor|Add0~18_combout\ : std_logic;
SIGNAL \leitor|delay_10s~2_combout\ : std_logic;
SIGNAL \leitor|Add0~19\ : std_logic;
SIGNAL \leitor|Add0~20_combout\ : std_logic;
SIGNAL \leitor|Add0~21\ : std_logic;
SIGNAL \leitor|Add0~22_combout\ : std_logic;
SIGNAL \leitor|Equal1~4_combout\ : std_logic;
SIGNAL \leitor|Add0~23\ : std_logic;
SIGNAL \leitor|Add0~24_combout\ : std_logic;
SIGNAL \leitor|Add0~25\ : std_logic;
SIGNAL \leitor|Add0~26_combout\ : std_logic;
SIGNAL \leitor|delay_10s~1_combout\ : std_logic;
SIGNAL \leitor|Add0~27\ : std_logic;
SIGNAL \leitor|Add0~28_combout\ : std_logic;
SIGNAL \leitor|Add0~29\ : std_logic;
SIGNAL \leitor|Add0~30_combout\ : std_logic;
SIGNAL \leitor|Equal1~5_combout\ : std_logic;
SIGNAL \leitor|Equal1~7_combout\ : std_logic;
SIGNAL \leitor|delay_10s~0_combout\ : std_logic;
SIGNAL \leitor|Add0~31\ : std_logic;
SIGNAL \leitor|Add0~32_combout\ : std_logic;
SIGNAL \leitor|delay_10s~5_combout\ : std_logic;
SIGNAL \leitor|Add0~33\ : std_logic;
SIGNAL \leitor|Add0~34_combout\ : std_logic;
SIGNAL \leitor|delay_10s~4_combout\ : std_logic;
SIGNAL \leitor|Add0~35\ : std_logic;
SIGNAL \leitor|Add0~36_combout\ : std_logic;
SIGNAL \leitor|delay_10s~6_combout\ : std_logic;
SIGNAL \leitor|Add0~37\ : std_logic;
SIGNAL \leitor|Add0~38_combout\ : std_logic;
SIGNAL \leitor|Equal1~0_combout\ : std_logic;
SIGNAL \leitor|count_bordas~2_combout\ : std_logic;
SIGNAL \leitor|count_bordas[0]~0_combout\ : std_logic;
SIGNAL \leitor|count_bordas[0]~1_combout\ : std_logic;
SIGNAL \leitor|count_bordas~5_combout\ : std_logic;
SIGNAL \leitor|Equal1~3_combout\ : std_logic;
SIGNAL \leitor|Equal1~6_combout\ : std_logic;
SIGNAL \leitor|count_bordas~4_combout\ : std_logic;
SIGNAL \leitor|Add1~1_combout\ : std_logic;
SIGNAL \leitor|count_bordas~3_combout\ : std_logic;
SIGNAL \leitor|Add1~0_combout\ : std_logic;
SIGNAL \leitor|count_bordas~6_combout\ : std_logic;
SIGNAL \leitor|count_bordas~7_combout\ : std_logic;
SIGNAL \leitor|temperatura[11]~0_combout\ : std_logic;
SIGNAL \leitor|temperatura[11]~1_combout\ : std_logic;
SIGNAL \leitor|cs_tmp~0_combout\ : std_logic;
SIGNAL \leitor|cs_tmp~q\ : std_logic;
SIGNAL \leitor|sck_tmp~0_combout\ : std_logic;
SIGNAL \leitor|sck_tmp~q\ : std_logic;
SIGNAL \leitor|sck_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \so~input_o\ : std_logic;
SIGNAL \leitor|bit_recebido[0]~0_combout\ : std_logic;
SIGNAL \leitor|Add3~1_combout\ : std_logic;
SIGNAL \leitor|Add3~2_combout\ : std_logic;
SIGNAL \leitor|Add3~0_combout\ : std_logic;
SIGNAL \leitor|Decoder0~0_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[11]~0_combout\ : std_logic;
SIGNAL \leitor|temperatura[11]~2_combout\ : std_logic;
SIGNAL \leitor|Decoder0~1_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[10]~1_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[10]~feeder_combout\ : std_logic;
SIGNAL \leitor|Decoder0~2_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[9]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \leitor|Decoder0~3_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[8]~3_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[8]~feeder_combout\ : std_logic;
SIGNAL \leitor|temperatura[8]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \leitor|Decoder0~4_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[7]~4_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[7]~feeder_combout\ : std_logic;
SIGNAL \leitor|temperatura[7]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[6]~5_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[6]~feeder_combout\ : std_logic;
SIGNAL \leitor|temperatura[6]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[5]~6_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[5]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \leitor|Decoder0~5_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[4]~7_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[4]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[3]~8_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[3]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \display_dezena|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|out_display[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~93_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~92_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~95_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~94_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~96_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~97_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~99_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~98_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~100_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~101_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~103_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~104_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~106_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~105_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~107_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~112_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~113_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~114_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~115_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~116_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~117_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~118_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~119_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~121_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~120_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~123_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~122_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~124_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~125_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~126_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~127_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~128_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~129_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[71]~130_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[71]~131_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[70]~132_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[70]~133_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~160_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~139_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~161_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~140_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~141_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~163_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~142_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~164_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[83]~144_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[83]~165_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[80]~138_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[80]~137_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[2]~9_combout\ : std_logic;
SIGNAL \leitor|temperatura_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \display_unidade|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|out_display[6]~6_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \leitor|bit_recebido\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leitor|temperatura_tmp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \leitor|delay_10s\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \leitor|count_bordas\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \leitor|temperatura\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor_50x|ALT_INV_reset_out_clk_tmp~q\ : std_logic;
SIGNAL \leitor|ALT_INV_cs_tmp~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_so <= so;
cs <= ww_cs;
sck <= ww_sck;
dezena <= ww_dezena;
unidade <= ww_unidade;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\leitor|sck_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \leitor|sck_tmp~q\);

\divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_50x|out_clk_tmp~q\);

\clk_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHZ~input_o\);
\ALT_INV_clk_50MHZ~inputclkctrl_outclk\ <= NOT \clk_50MHZ~inputclkctrl_outclk\;
\divisor_50x|ALT_INV_reset_out_clk_tmp~q\ <= NOT \divisor_50x|reset_out_clk_tmp~q\;
\leitor|ALT_INV_cs_tmp~q\ <= NOT \leitor|cs_tmp~q\;
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

-- Location: IOOBUF_X22_Y0_N2
\cs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leitor|ALT_INV_cs_tmp~q\,
	devoe => ww_devoe,
	o => \cs~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\sck~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leitor|sck_tmp~q\,
	devoe => ww_devoe,
	o => \sck~output_o\);

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
	i => \display_dezena|out_display[2]~2_combout\,
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
	i => \display_dezena|out_display[5]~5_combout\,
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
	i => \display_unidade|out_display[2]~2_combout\,
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
	i => \display_unidade|out_display[5]~5_combout\,
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

-- Location: FF_X7_Y36_N21
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

-- Location: LCCOMB_X7_Y37_N6
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

-- Location: FF_X7_Y37_N7
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

-- Location: LCCOMB_X7_Y37_N8
\divisor_50x|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~2_combout\ = (\divisor_50x|count_tmp\(1) & (!\divisor_50x|Add0~1\)) # (!\divisor_50x|count_tmp\(1) & ((\divisor_50x|Add0~1\) # (GND)))
-- \divisor_50x|Add0~3\ = CARRY((!\divisor_50x|Add0~1\) # (!\divisor_50x|count_tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(1),
	datad => VCC,
	cin => \divisor_50x|Add0~1\,
	combout => \divisor_50x|Add0~2_combout\,
	cout => \divisor_50x|Add0~3\);

-- Location: LCCOMB_X6_Y37_N6
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

-- Location: FF_X6_Y37_N7
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

-- Location: LCCOMB_X7_Y37_N10
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

-- Location: FF_X7_Y37_N11
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

-- Location: LCCOMB_X7_Y37_N12
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

-- Location: FF_X7_Y37_N13
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

-- Location: LCCOMB_X7_Y37_N14
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

-- Location: LCCOMB_X6_Y37_N24
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

-- Location: FF_X6_Y37_N25
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

-- Location: LCCOMB_X7_Y37_N16
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

-- Location: LCCOMB_X6_Y37_N26
\divisor_50x|count_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~0_combout\ = (\divisor_50x|Add0~10_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|Add0~10_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~0_combout\);

-- Location: FF_X6_Y37_N27
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

-- Location: LCCOMB_X7_Y37_N18
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

-- Location: FF_X7_Y37_N19
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

-- Location: LCCOMB_X7_Y37_N20
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

-- Location: FF_X7_Y37_N21
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

-- Location: LCCOMB_X7_Y37_N22
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

-- Location: FF_X7_Y37_N23
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

-- Location: LCCOMB_X7_Y37_N24
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

-- Location: FF_X7_Y37_N25
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

-- Location: LCCOMB_X7_Y37_N26
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

-- Location: FF_X7_Y37_N27
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

-- Location: LCCOMB_X7_Y37_N28
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

-- Location: FF_X7_Y37_N29
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

-- Location: LCCOMB_X7_Y37_N30
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

-- Location: FF_X7_Y37_N31
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

-- Location: LCCOMB_X7_Y36_N0
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

-- Location: FF_X7_Y36_N1
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

-- Location: LCCOMB_X7_Y36_N2
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

-- Location: FF_X7_Y36_N3
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

-- Location: LCCOMB_X7_Y36_N4
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

-- Location: FF_X7_Y36_N5
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

-- Location: LCCOMB_X7_Y36_N6
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

-- Location: FF_X7_Y36_N7
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

-- Location: LCCOMB_X7_Y36_N8
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

-- Location: FF_X7_Y36_N9
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

-- Location: LCCOMB_X7_Y36_N10
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

-- Location: FF_X7_Y36_N11
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

-- Location: LCCOMB_X7_Y36_N12
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

-- Location: FF_X7_Y36_N13
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

-- Location: LCCOMB_X7_Y36_N14
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

-- Location: FF_X7_Y36_N15
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

-- Location: LCCOMB_X7_Y36_N16
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

-- Location: FF_X7_Y36_N17
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

-- Location: LCCOMB_X7_Y36_N18
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

-- Location: FF_X7_Y36_N19
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

-- Location: LCCOMB_X7_Y36_N20
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

-- Location: FF_X7_Y36_N23
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

-- Location: LCCOMB_X7_Y36_N22
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

-- Location: FF_X7_Y36_N25
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

-- Location: LCCOMB_X7_Y36_N24
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

-- Location: LCCOMB_X7_Y37_N4
\divisor_50x|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~0_combout\ = (!\divisor_50x|Add0~0_combout\ & (!\divisor_50x|Add0~4_combout\ & (!\divisor_50x|Add0~6_combout\ & \divisor_50x|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~0_combout\,
	datab => \divisor_50x|Add0~4_combout\,
	datac => \divisor_50x|Add0~6_combout\,
	datad => \divisor_50x|Add0~2_combout\,
	combout => \divisor_50x|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y37_N2
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

-- Location: LCCOMB_X7_Y37_N0
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

-- Location: LCCOMB_X6_Y37_N2
\divisor_50x|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~3_combout\ = (!\divisor_50x|Add0~28_combout\ & (!\divisor_50x|Add0~26_combout\ & (!\divisor_50x|Add0~24_combout\ & !\divisor_50x|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~28_combout\,
	datab => \divisor_50x|Add0~26_combout\,
	datac => \divisor_50x|Add0~24_combout\,
	datad => \divisor_50x|Add0~30_combout\,
	combout => \divisor_50x|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y37_N0
\divisor_50x|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~4_combout\ = (\divisor_50x|Equal0~0_combout\ & (\divisor_50x|Equal0~1_combout\ & (\divisor_50x|Equal0~2_combout\ & \divisor_50x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Equal0~0_combout\,
	datab => \divisor_50x|Equal0~1_combout\,
	datac => \divisor_50x|Equal0~2_combout\,
	datad => \divisor_50x|Equal0~3_combout\,
	combout => \divisor_50x|Equal0~4_combout\);

-- Location: LCCOMB_X6_Y37_N20
\divisor_50x|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~5_combout\ = (!\divisor_50x|Add0~38_combout\ & (!\divisor_50x|Add0~36_combout\ & (!\divisor_50x|Add0~34_combout\ & \divisor_50x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~38_combout\,
	datab => \divisor_50x|Add0~36_combout\,
	datac => \divisor_50x|Add0~34_combout\,
	datad => \divisor_50x|Equal0~4_combout\,
	combout => \divisor_50x|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y37_N16
\divisor_50x|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~6_combout\ = (!\divisor_50x|Add0~32_combout\ & (!\divisor_50x|Add0~42_combout\ & (!\divisor_50x|Add0~40_combout\ & \divisor_50x|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~32_combout\,
	datab => \divisor_50x|Add0~42_combout\,
	datac => \divisor_50x|Add0~40_combout\,
	datad => \divisor_50x|Equal0~5_combout\,
	combout => \divisor_50x|Equal0~6_combout\);

-- Location: LCCOMB_X6_Y37_N28
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

-- Location: LCCOMB_X6_Y37_N18
\divisor_50x|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~8_combout\ = (!\divisor_50x|Add0~46_combout\ & (!\divisor_50x|Add0~48_combout\ & (!\divisor_50x|Add0~50_combout\ & \divisor_50x|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~46_combout\,
	datab => \divisor_50x|Add0~48_combout\,
	datac => \divisor_50x|Add0~50_combout\,
	datad => \divisor_50x|Equal0~7_combout\,
	combout => \divisor_50x|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y37_N12
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

-- Location: FF_X6_Y37_N13
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

-- Location: LCCOMB_X1_Y37_N0
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

-- Location: LCCOMB_X1_Y37_N18
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

-- Location: LCCOMB_X1_Y37_N20
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

-- Location: FF_X1_Y37_N21
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

-- Location: FF_X1_Y37_N1
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

-- Location: CLKCTRL_G0
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

-- Location: FF_X45_Y37_N21
\leitor|delay_10s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(4));

-- Location: LCCOMB_X45_Y37_N12
\leitor|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~0_combout\ = \leitor|delay_10s\(0) $ (VCC)
-- \leitor|Add0~1\ = CARRY(\leitor|delay_10s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|delay_10s\(0),
	datad => VCC,
	combout => \leitor|Add0~0_combout\,
	cout => \leitor|Add0~1\);

-- Location: FF_X45_Y37_N13
\leitor|delay_10s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(0));

-- Location: LCCOMB_X45_Y37_N14
\leitor|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~2_combout\ = (\leitor|delay_10s\(1) & (!\leitor|Add0~1\)) # (!\leitor|delay_10s\(1) & ((\leitor|Add0~1\) # (GND)))
-- \leitor|Add0~3\ = CARRY((!\leitor|Add0~1\) # (!\leitor|delay_10s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(1),
	datad => VCC,
	cin => \leitor|Add0~1\,
	combout => \leitor|Add0~2_combout\,
	cout => \leitor|Add0~3\);

-- Location: FF_X45_Y37_N15
\leitor|delay_10s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(1));

-- Location: LCCOMB_X45_Y37_N16
\leitor|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~4_combout\ = (\leitor|delay_10s\(2) & (\leitor|Add0~3\ $ (GND))) # (!\leitor|delay_10s\(2) & (!\leitor|Add0~3\ & VCC))
-- \leitor|Add0~5\ = CARRY((\leitor|delay_10s\(2) & !\leitor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(2),
	datad => VCC,
	cin => \leitor|Add0~3\,
	combout => \leitor|Add0~4_combout\,
	cout => \leitor|Add0~5\);

-- Location: FF_X45_Y37_N17
\leitor|delay_10s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(2));

-- Location: LCCOMB_X45_Y37_N18
\leitor|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~6_combout\ = (\leitor|delay_10s\(3) & (!\leitor|Add0~5\)) # (!\leitor|delay_10s\(3) & ((\leitor|Add0~5\) # (GND)))
-- \leitor|Add0~7\ = CARRY((!\leitor|Add0~5\) # (!\leitor|delay_10s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(3),
	datad => VCC,
	cin => \leitor|Add0~5\,
	combout => \leitor|Add0~6_combout\,
	cout => \leitor|Add0~7\);

-- Location: FF_X45_Y37_N19
\leitor|delay_10s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(3));

-- Location: LCCOMB_X45_Y37_N20
\leitor|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~8_combout\ = (\leitor|delay_10s\(4) & (\leitor|Add0~7\ $ (GND))) # (!\leitor|delay_10s\(4) & (!\leitor|Add0~7\ & VCC))
-- \leitor|Add0~9\ = CARRY((\leitor|delay_10s\(4) & !\leitor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(4),
	datad => VCC,
	cin => \leitor|Add0~7\,
	combout => \leitor|Add0~8_combout\,
	cout => \leitor|Add0~9\);

-- Location: FF_X45_Y37_N27
\leitor|delay_10s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(7));

-- Location: LCCOMB_X45_Y37_N22
\leitor|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~10_combout\ = (\leitor|delay_10s\(5) & (!\leitor|Add0~9\)) # (!\leitor|delay_10s\(5) & ((\leitor|Add0~9\) # (GND)))
-- \leitor|Add0~11\ = CARRY((!\leitor|Add0~9\) # (!\leitor|delay_10s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|delay_10s\(5),
	datad => VCC,
	cin => \leitor|Add0~9\,
	combout => \leitor|Add0~10_combout\,
	cout => \leitor|Add0~11\);

-- Location: FF_X45_Y37_N23
\leitor|delay_10s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(5));

-- Location: LCCOMB_X45_Y37_N24
\leitor|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~12_combout\ = (\leitor|delay_10s\(6) & (\leitor|Add0~11\ $ (GND))) # (!\leitor|delay_10s\(6) & (!\leitor|Add0~11\ & VCC))
-- \leitor|Add0~13\ = CARRY((\leitor|delay_10s\(6) & !\leitor|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|delay_10s\(6),
	datad => VCC,
	cin => \leitor|Add0~11\,
	combout => \leitor|Add0~12_combout\,
	cout => \leitor|Add0~13\);

-- Location: LCCOMB_X45_Y37_N6
\leitor|delay_10s~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|delay_10s~3_combout\ = (\leitor|Add0~12_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|Add0~12_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|delay_10s~3_combout\);

-- Location: FF_X45_Y37_N7
\leitor|delay_10s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|delay_10s~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(6));

-- Location: LCCOMB_X45_Y37_N26
\leitor|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~14_combout\ = (\leitor|delay_10s\(7) & (!\leitor|Add0~13\)) # (!\leitor|delay_10s\(7) & ((\leitor|Add0~13\) # (GND)))
-- \leitor|Add0~15\ = CARRY((!\leitor|Add0~13\) # (!\leitor|delay_10s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|delay_10s\(7),
	datad => VCC,
	cin => \leitor|Add0~13\,
	combout => \leitor|Add0~14_combout\,
	cout => \leitor|Add0~15\);

-- Location: LCCOMB_X45_Y37_N10
\leitor|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~2_combout\ = (!\leitor|Add0~8_combout\ & (!\leitor|Add0~14_combout\ & (!\leitor|Add0~10_combout\ & \leitor|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~8_combout\,
	datab => \leitor|Add0~14_combout\,
	datac => \leitor|Add0~10_combout\,
	datad => \leitor|Add0~12_combout\,
	combout => \leitor|Equal1~2_combout\);

-- Location: LCCOMB_X45_Y37_N8
\leitor|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~1_combout\ = (!\leitor|Add0~2_combout\ & (!\leitor|Add0~0_combout\ & (!\leitor|Add0~6_combout\ & !\leitor|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~2_combout\,
	datab => \leitor|Add0~0_combout\,
	datac => \leitor|Add0~6_combout\,
	datad => \leitor|Add0~4_combout\,
	combout => \leitor|Equal1~1_combout\);

-- Location: FF_X45_Y37_N29
\leitor|delay_10s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(8));

-- Location: LCCOMB_X45_Y37_N28
\leitor|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~16_combout\ = (\leitor|delay_10s\(8) & (\leitor|Add0~15\ $ (GND))) # (!\leitor|delay_10s\(8) & (!\leitor|Add0~15\ & VCC))
-- \leitor|Add0~17\ = CARRY((\leitor|delay_10s\(8) & !\leitor|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(8),
	datad => VCC,
	cin => \leitor|Add0~15\,
	combout => \leitor|Add0~16_combout\,
	cout => \leitor|Add0~17\);

-- Location: FF_X45_Y36_N1
\leitor|delay_10s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(10));

-- Location: LCCOMB_X45_Y37_N30
\leitor|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~18_combout\ = (\leitor|delay_10s\(9) & (!\leitor|Add0~17\)) # (!\leitor|delay_10s\(9) & ((\leitor|Add0~17\) # (GND)))
-- \leitor|Add0~19\ = CARRY((!\leitor|Add0~17\) # (!\leitor|delay_10s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(9),
	datad => VCC,
	cin => \leitor|Add0~17\,
	combout => \leitor|Add0~18_combout\,
	cout => \leitor|Add0~19\);

-- Location: LCCOMB_X45_Y37_N0
\leitor|delay_10s~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|delay_10s~2_combout\ = (\leitor|Add0~18_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~18_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|delay_10s~2_combout\);

-- Location: FF_X45_Y37_N1
\leitor|delay_10s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|delay_10s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(9));

-- Location: LCCOMB_X45_Y36_N0
\leitor|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~20_combout\ = (\leitor|delay_10s\(10) & (\leitor|Add0~19\ $ (GND))) # (!\leitor|delay_10s\(10) & (!\leitor|Add0~19\ & VCC))
-- \leitor|Add0~21\ = CARRY((\leitor|delay_10s\(10) & !\leitor|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(10),
	datad => VCC,
	cin => \leitor|Add0~19\,
	combout => \leitor|Add0~20_combout\,
	cout => \leitor|Add0~21\);

-- Location: FF_X45_Y36_N3
\leitor|delay_10s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(11));

-- Location: LCCOMB_X45_Y36_N2
\leitor|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~22_combout\ = (\leitor|delay_10s\(11) & (!\leitor|Add0~21\)) # (!\leitor|delay_10s\(11) & ((\leitor|Add0~21\) # (GND)))
-- \leitor|Add0~23\ = CARRY((!\leitor|Add0~21\) # (!\leitor|delay_10s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(11),
	datad => VCC,
	cin => \leitor|Add0~21\,
	combout => \leitor|Add0~22_combout\,
	cout => \leitor|Add0~23\);

-- Location: LCCOMB_X45_Y37_N4
\leitor|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~4_combout\ = (!\leitor|Add0~16_combout\ & (!\leitor|Add0~20_combout\ & (\leitor|Add0~18_combout\ & !\leitor|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~16_combout\,
	datab => \leitor|Add0~20_combout\,
	datac => \leitor|Add0~18_combout\,
	datad => \leitor|Add0~22_combout\,
	combout => \leitor|Equal1~4_combout\);

-- Location: FF_X45_Y36_N7
\leitor|delay_10s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(13));

-- Location: LCCOMB_X45_Y36_N4
\leitor|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~24_combout\ = (\leitor|delay_10s\(12) & (\leitor|Add0~23\ $ (GND))) # (!\leitor|delay_10s\(12) & (!\leitor|Add0~23\ & VCC))
-- \leitor|Add0~25\ = CARRY((\leitor|delay_10s\(12) & !\leitor|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|delay_10s\(12),
	datad => VCC,
	cin => \leitor|Add0~23\,
	combout => \leitor|Add0~24_combout\,
	cout => \leitor|Add0~25\);

-- Location: FF_X45_Y36_N5
\leitor|delay_10s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(12));

-- Location: LCCOMB_X45_Y36_N6
\leitor|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~26_combout\ = (\leitor|delay_10s\(13) & (!\leitor|Add0~25\)) # (!\leitor|delay_10s\(13) & ((\leitor|Add0~25\) # (GND)))
-- \leitor|Add0~27\ = CARRY((!\leitor|Add0~25\) # (!\leitor|delay_10s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(13),
	datad => VCC,
	cin => \leitor|Add0~25\,
	combout => \leitor|Add0~26_combout\,
	cout => \leitor|Add0~27\);

-- Location: LCCOMB_X45_Y36_N30
\leitor|delay_10s~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|delay_10s~1_combout\ = (\leitor|Add0~28_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~28_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|delay_10s~1_combout\);

-- Location: FF_X45_Y36_N31
\leitor|delay_10s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|delay_10s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(14));

-- Location: LCCOMB_X45_Y36_N8
\leitor|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~28_combout\ = (\leitor|delay_10s\(14) & (\leitor|Add0~27\ $ (GND))) # (!\leitor|delay_10s\(14) & (!\leitor|Add0~27\ & VCC))
-- \leitor|Add0~29\ = CARRY((\leitor|delay_10s\(14) & !\leitor|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|delay_10s\(14),
	datad => VCC,
	cin => \leitor|Add0~27\,
	combout => \leitor|Add0~28_combout\,
	cout => \leitor|Add0~29\);

-- Location: FF_X45_Y36_N11
\leitor|delay_10s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(15));

-- Location: LCCOMB_X45_Y36_N10
\leitor|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~30_combout\ = (\leitor|delay_10s\(15) & (!\leitor|Add0~29\)) # (!\leitor|delay_10s\(15) & ((\leitor|Add0~29\) # (GND)))
-- \leitor|Add0~31\ = CARRY((!\leitor|Add0~29\) # (!\leitor|delay_10s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(15),
	datad => VCC,
	cin => \leitor|Add0~29\,
	combout => \leitor|Add0~30_combout\,
	cout => \leitor|Add0~31\);

-- Location: LCCOMB_X45_Y36_N28
\leitor|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~5_combout\ = (!\leitor|Add0~26_combout\ & (!\leitor|Add0~24_combout\ & (\leitor|Add0~28_combout\ & !\leitor|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~26_combout\,
	datab => \leitor|Add0~24_combout\,
	datac => \leitor|Add0~28_combout\,
	datad => \leitor|Add0~30_combout\,
	combout => \leitor|Equal1~5_combout\);

-- Location: LCCOMB_X46_Y37_N10
\leitor|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~7_combout\ = (\leitor|Equal1~2_combout\ & (\leitor|Equal1~1_combout\ & (\leitor|Equal1~4_combout\ & \leitor|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Equal1~2_combout\,
	datab => \leitor|Equal1~1_combout\,
	datac => \leitor|Equal1~4_combout\,
	datad => \leitor|Equal1~5_combout\,
	combout => \leitor|Equal1~7_combout\);

-- Location: LCCOMB_X45_Y36_N24
\leitor|delay_10s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|delay_10s~0_combout\ = (\leitor|Add0~32_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|Add0~32_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|delay_10s~0_combout\);

-- Location: FF_X45_Y36_N25
\leitor|delay_10s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|delay_10s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(16));

-- Location: LCCOMB_X45_Y36_N12
\leitor|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~32_combout\ = (\leitor|delay_10s\(16) & (\leitor|Add0~31\ $ (GND))) # (!\leitor|delay_10s\(16) & (!\leitor|Add0~31\ & VCC))
-- \leitor|Add0~33\ = CARRY((\leitor|delay_10s\(16) & !\leitor|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(16),
	datad => VCC,
	cin => \leitor|Add0~31\,
	combout => \leitor|Add0~32_combout\,
	cout => \leitor|Add0~33\);

-- Location: LCCOMB_X45_Y36_N20
\leitor|delay_10s~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|delay_10s~5_combout\ = (\leitor|Add0~36_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~36_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|delay_10s~5_combout\);

-- Location: FF_X45_Y36_N21
\leitor|delay_10s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|delay_10s~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(18));

-- Location: LCCOMB_X45_Y36_N14
\leitor|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~34_combout\ = (\leitor|delay_10s\(17) & (!\leitor|Add0~33\)) # (!\leitor|delay_10s\(17) & ((\leitor|Add0~33\) # (GND)))
-- \leitor|Add0~35\ = CARRY((!\leitor|Add0~33\) # (!\leitor|delay_10s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(17),
	datad => VCC,
	cin => \leitor|Add0~33\,
	combout => \leitor|Add0~34_combout\,
	cout => \leitor|Add0~35\);

-- Location: LCCOMB_X46_Y37_N28
\leitor|delay_10s~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|delay_10s~4_combout\ = (\leitor|Add0~34_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~34_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|delay_10s~4_combout\);

-- Location: FF_X46_Y37_N29
\leitor|delay_10s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|delay_10s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(17));

-- Location: LCCOMB_X45_Y36_N16
\leitor|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~36_combout\ = (\leitor|delay_10s\(18) & (\leitor|Add0~35\ $ (GND))) # (!\leitor|delay_10s\(18) & (!\leitor|Add0~35\ & VCC))
-- \leitor|Add0~37\ = CARRY((\leitor|delay_10s\(18) & !\leitor|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|delay_10s\(18),
	datad => VCC,
	cin => \leitor|Add0~35\,
	combout => \leitor|Add0~36_combout\,
	cout => \leitor|Add0~37\);

-- Location: LCCOMB_X46_Y37_N30
\leitor|delay_10s~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|delay_10s~6_combout\ = (\leitor|Add0~38_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|Add0~38_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|delay_10s~6_combout\);

-- Location: FF_X46_Y37_N31
\leitor|delay_10s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|delay_10s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|delay_10s\(19));

-- Location: LCCOMB_X45_Y36_N18
\leitor|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add0~38_combout\ = \leitor|Add0~37\ $ (\leitor|delay_10s\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \leitor|delay_10s\(19),
	cin => \leitor|Add0~37\,
	combout => \leitor|Add0~38_combout\);

-- Location: LCCOMB_X45_Y36_N26
\leitor|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~0_combout\ = (\leitor|Add0~32_combout\ & (\leitor|Add0~36_combout\ & (\leitor|Add0~34_combout\ & \leitor|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~32_combout\,
	datab => \leitor|Add0~36_combout\,
	datac => \leitor|Add0~34_combout\,
	datad => \leitor|Add0~38_combout\,
	combout => \leitor|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y37_N22
\leitor|count_bordas~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas~2_combout\ = (!\leitor|count_bordas\(0) & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|Equal1~0_combout\,
	datac => \leitor|count_bordas\(0),
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|count_bordas~2_combout\);

-- Location: LCCOMB_X45_Y36_N22
\leitor|count_bordas[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas[0]~0_combout\ = ((!\leitor|Add0~36_combout\) # (!\leitor|Add0~34_combout\)) # (!\leitor|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add0~32_combout\,
	datac => \leitor|Add0~34_combout\,
	datad => \leitor|Add0~36_combout\,
	combout => \leitor|count_bordas[0]~0_combout\);

-- Location: LCCOMB_X46_Y37_N4
\leitor|count_bordas[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas[0]~1_combout\ = (\leitor|cs_tmp~q\) # ((\leitor|Add0~38_combout\ & (!\leitor|count_bordas[0]~0_combout\ & \leitor|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|cs_tmp~q\,
	datab => \leitor|Add0~38_combout\,
	datac => \leitor|count_bordas[0]~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|count_bordas[0]~1_combout\);

-- Location: FF_X46_Y37_N23
\leitor|count_bordas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|count_bordas~2_combout\,
	ena => \leitor|count_bordas[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|count_bordas\(0));

-- Location: LCCOMB_X46_Y37_N12
\leitor|count_bordas~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas~5_combout\ = (\leitor|Equal1~0_combout\ & (!\leitor|Equal1~7_combout\ & (\leitor|count_bordas\(0) $ (\leitor|count_bordas\(1))))) # (!\leitor|Equal1~0_combout\ & (\leitor|count_bordas\(0) $ ((\leitor|count_bordas\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(0),
	datab => \leitor|Equal1~0_combout\,
	datac => \leitor|count_bordas\(1),
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|count_bordas~5_combout\);

-- Location: FF_X46_Y37_N13
\leitor|count_bordas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|count_bordas~5_combout\,
	ena => \leitor|count_bordas[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|count_bordas\(1));

-- Location: LCCOMB_X46_Y37_N18
\leitor|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~3_combout\ = (\leitor|Equal1~1_combout\ & \leitor|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|Equal1~1_combout\,
	datad => \leitor|Equal1~2_combout\,
	combout => \leitor|Equal1~3_combout\);

-- Location: LCCOMB_X46_Y37_N16
\leitor|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Equal1~6_combout\ = (\leitor|Equal1~3_combout\ & (\leitor|Equal1~4_combout\ & (\leitor|Equal1~0_combout\ & \leitor|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Equal1~3_combout\,
	datab => \leitor|Equal1~4_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~5_combout\,
	combout => \leitor|Equal1~6_combout\);

-- Location: LCCOMB_X46_Y37_N8
\leitor|count_bordas~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas~4_combout\ = (!\leitor|Equal1~6_combout\ & (\leitor|count_bordas\(2) $ (((\leitor|count_bordas\(0) & \leitor|count_bordas\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(0),
	datab => \leitor|count_bordas\(1),
	datac => \leitor|count_bordas\(2),
	datad => \leitor|Equal1~6_combout\,
	combout => \leitor|count_bordas~4_combout\);

-- Location: FF_X46_Y37_N9
\leitor|count_bordas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|count_bordas~4_combout\,
	ena => \leitor|count_bordas[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|count_bordas\(2));

-- Location: LCCOMB_X47_Y37_N20
\leitor|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add1~1_combout\ = \leitor|count_bordas\(3) $ (((\leitor|count_bordas\(0) & (\leitor|count_bordas\(2) & \leitor|count_bordas\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(0),
	datab => \leitor|count_bordas\(3),
	datac => \leitor|count_bordas\(2),
	datad => \leitor|count_bordas\(1),
	combout => \leitor|Add1~1_combout\);

-- Location: LCCOMB_X46_Y37_N26
\leitor|count_bordas~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas~3_combout\ = (\leitor|Add1~1_combout\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add1~1_combout\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|count_bordas~3_combout\);

-- Location: FF_X46_Y37_N27
\leitor|count_bordas[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|count_bordas~3_combout\,
	ena => \leitor|count_bordas[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|count_bordas\(3));

-- Location: LCCOMB_X46_Y37_N6
\leitor|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add1~0_combout\ = (\leitor|count_bordas\(3) & (\leitor|count_bordas\(2) & (\leitor|count_bordas\(0) & \leitor|count_bordas\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(3),
	datab => \leitor|count_bordas\(2),
	datac => \leitor|count_bordas\(0),
	datad => \leitor|count_bordas\(1),
	combout => \leitor|Add1~0_combout\);

-- Location: LCCOMB_X46_Y37_N24
\leitor|count_bordas~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas~6_combout\ = (\leitor|Equal1~0_combout\ & (!\leitor|Equal1~7_combout\ & (\leitor|Add1~0_combout\ $ (\leitor|count_bordas\(4))))) # (!\leitor|Equal1~0_combout\ & (\leitor|Add1~0_combout\ $ ((\leitor|count_bordas\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add1~0_combout\,
	datab => \leitor|Equal1~0_combout\,
	datac => \leitor|count_bordas\(4),
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|count_bordas~6_combout\);

-- Location: FF_X46_Y37_N25
\leitor|count_bordas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|count_bordas~6_combout\,
	ena => \leitor|count_bordas[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|count_bordas\(4));

-- Location: LCCOMB_X46_Y37_N14
\leitor|count_bordas~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|count_bordas~7_combout\ = (!\leitor|Equal1~6_combout\ & (\leitor|count_bordas\(5) $ (((\leitor|Add1~0_combout\ & \leitor|count_bordas\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|Add1~0_combout\,
	datab => \leitor|count_bordas\(4),
	datac => \leitor|count_bordas\(5),
	datad => \leitor|Equal1~6_combout\,
	combout => \leitor|count_bordas~7_combout\);

-- Location: FF_X46_Y37_N15
\leitor|count_bordas[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|count_bordas~7_combout\,
	ena => \leitor|count_bordas[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|count_bordas\(5));

-- Location: LCCOMB_X46_Y37_N2
\leitor|temperatura[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura[11]~0_combout\ = (\leitor|count_bordas\(3) & (\leitor|count_bordas\(2) & (\leitor|count_bordas\(0) & \leitor|count_bordas\(1)))) # (!\leitor|count_bordas\(3) & (!\leitor|count_bordas\(2) & (!\leitor|count_bordas\(0) & 
-- !\leitor|count_bordas\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(3),
	datab => \leitor|count_bordas\(2),
	datac => \leitor|count_bordas\(0),
	datad => \leitor|count_bordas\(1),
	combout => \leitor|temperatura[11]~0_combout\);

-- Location: LCCOMB_X47_Y37_N24
\leitor|temperatura[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura[11]~1_combout\ = (\leitor|temperatura[11]~0_combout\ & ((\leitor|count_bordas\(5) & (!\leitor|count_bordas\(4) & !\leitor|Add1~0_combout\)) # (!\leitor|count_bordas\(5) & (\leitor|count_bordas\(4) & \leitor|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(5),
	datab => \leitor|count_bordas\(4),
	datac => \leitor|Add1~0_combout\,
	datad => \leitor|temperatura[11]~0_combout\,
	combout => \leitor|temperatura[11]~1_combout\);

-- Location: LCCOMB_X46_Y37_N20
\leitor|cs_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|cs_tmp~0_combout\ = (\leitor|Equal1~6_combout\) # ((\leitor|cs_tmp~q\ & ((!\leitor|temperatura[11]~1_combout\) # (!\leitor|count_bordas\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(0),
	datab => \leitor|temperatura[11]~1_combout\,
	datac => \leitor|cs_tmp~q\,
	datad => \leitor|Equal1~6_combout\,
	combout => \leitor|cs_tmp~0_combout\);

-- Location: FF_X46_Y37_N21
\leitor|cs_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|cs_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|cs_tmp~q\);

-- Location: LCCOMB_X46_Y37_N0
\leitor|sck_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|sck_tmp~0_combout\ = (!\leitor|sck_tmp~q\ & ((!\leitor|Equal1~7_combout\) # (!\leitor|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|sck_tmp~q\,
	datac => \leitor|Equal1~0_combout\,
	datad => \leitor|Equal1~7_combout\,
	combout => \leitor|sck_tmp~0_combout\);

-- Location: FF_X46_Y37_N19
\leitor|sck_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|sck_tmp~0_combout\,
	sload => VCC,
	ena => \leitor|count_bordas[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|sck_tmp~q\);

-- Location: CLKCTRL_G10
\leitor|sck_tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \leitor|sck_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \leitor|sck_tmp~clkctrl_outclk\);

-- Location: IOIBUF_X31_Y0_N29
\so~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_so,
	o => \so~input_o\);

-- Location: LCCOMB_X57_Y41_N28
\leitor|bit_recebido[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|bit_recebido[0]~0_combout\ = !\leitor|bit_recebido\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|bit_recebido\(0),
	combout => \leitor|bit_recebido[0]~0_combout\);

-- Location: FF_X57_Y41_N29
\leitor|bit_recebido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|bit_recebido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|bit_recebido\(0));

-- Location: LCCOMB_X57_Y41_N18
\leitor|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add3~1_combout\ = \leitor|bit_recebido\(0) $ (\leitor|bit_recebido\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(0),
	datac => \leitor|bit_recebido\(1),
	combout => \leitor|Add3~1_combout\);

-- Location: FF_X57_Y41_N19
\leitor|bit_recebido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|Add3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|bit_recebido\(1));

-- Location: LCCOMB_X57_Y41_N12
\leitor|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add3~2_combout\ = \leitor|bit_recebido\(2) $ (((\leitor|bit_recebido\(1) & \leitor|bit_recebido\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(1),
	datac => \leitor|bit_recebido\(2),
	datad => \leitor|bit_recebido\(0),
	combout => \leitor|Add3~2_combout\);

-- Location: FF_X57_Y41_N13
\leitor|bit_recebido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|bit_recebido\(2));

-- Location: LCCOMB_X57_Y41_N14
\leitor|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Add3~0_combout\ = \leitor|bit_recebido\(3) $ (((\leitor|bit_recebido\(1) & (\leitor|bit_recebido\(0) & \leitor|bit_recebido\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(1),
	datab => \leitor|bit_recebido\(0),
	datac => \leitor|bit_recebido\(3),
	datad => \leitor|bit_recebido\(2),
	combout => \leitor|Add3~0_combout\);

-- Location: FF_X57_Y41_N15
\leitor|bit_recebido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|bit_recebido\(3));

-- Location: LCCOMB_X57_Y41_N0
\leitor|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Decoder0~0_combout\ = (!\leitor|bit_recebido\(3) & (\leitor|bit_recebido\(0) & (!\leitor|bit_recebido\(2) & !\leitor|bit_recebido\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(3),
	datab => \leitor|bit_recebido\(0),
	datac => \leitor|bit_recebido\(2),
	datad => \leitor|bit_recebido\(1),
	combout => \leitor|Decoder0~0_combout\);

-- Location: LCCOMB_X57_Y41_N8
\leitor|temperatura_tmp[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[11]~0_combout\ = (\leitor|Decoder0~0_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~0_combout\ & ((\leitor|temperatura_tmp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datac => \leitor|temperatura_tmp\(11),
	datad => \leitor|Decoder0~0_combout\,
	combout => \leitor|temperatura_tmp[11]~0_combout\);

-- Location: FF_X57_Y41_N27
\leitor|temperatura_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp[11]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(11));

-- Location: LCCOMB_X47_Y37_N2
\leitor|temperatura[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura[11]~2_combout\ = (\leitor|count_bordas\(0) & (\leitor|cs_tmp~q\ & \leitor|temperatura[11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|count_bordas\(0),
	datab => \leitor|cs_tmp~q\,
	datad => \leitor|temperatura[11]~1_combout\,
	combout => \leitor|temperatura[11]~2_combout\);

-- Location: FF_X57_Y41_N9
\leitor|temperatura[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp\(11),
	sload => VCC,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(11));

-- Location: LCCOMB_X57_Y41_N10
\leitor|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Decoder0~1_combout\ = (\leitor|bit_recebido\(1) & (!\leitor|bit_recebido\(0) & !\leitor|bit_recebido\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(1),
	datab => \leitor|bit_recebido\(0),
	datad => \leitor|bit_recebido\(2),
	combout => \leitor|Decoder0~1_combout\);

-- Location: LCCOMB_X58_Y41_N24
\leitor|temperatura_tmp[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[10]~1_combout\ = (\leitor|bit_recebido\(3) & (((\leitor|temperatura_tmp\(10))))) # (!\leitor|bit_recebido\(3) & ((\leitor|Decoder0~1_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~1_combout\ & ((\leitor|temperatura_tmp\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|bit_recebido\(3),
	datac => \leitor|temperatura_tmp\(10),
	datad => \leitor|Decoder0~1_combout\,
	combout => \leitor|temperatura_tmp[10]~1_combout\);

-- Location: LCCOMB_X58_Y41_N22
\leitor|temperatura_tmp[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[10]~feeder_combout\ = \leitor|temperatura_tmp[10]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[10]~1_combout\,
	combout => \leitor|temperatura_tmp[10]~feeder_combout\);

-- Location: FF_X58_Y41_N23
\leitor|temperatura_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(10));

-- Location: FF_X58_Y41_N25
\leitor|temperatura[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp\(10),
	sload => VCC,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(10));

-- Location: LCCOMB_X57_Y41_N6
\leitor|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Decoder0~2_combout\ = (\leitor|bit_recebido\(0) & (\leitor|bit_recebido\(1) & (!\leitor|bit_recebido\(2) & !\leitor|bit_recebido\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(0),
	datab => \leitor|bit_recebido\(1),
	datac => \leitor|bit_recebido\(2),
	datad => \leitor|bit_recebido\(3),
	combout => \leitor|Decoder0~2_combout\);

-- Location: LCCOMB_X57_Y41_N22
\leitor|temperatura_tmp[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[9]~2_combout\ = (\leitor|Decoder0~2_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~2_combout\ & ((\leitor|temperatura_tmp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datac => \leitor|temperatura_tmp\(9),
	datad => \leitor|Decoder0~2_combout\,
	combout => \leitor|temperatura_tmp[9]~2_combout\);

-- Location: FF_X57_Y41_N5
\leitor|temperatura_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp[9]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(9));

-- Location: FF_X57_Y41_N17
\leitor|temperatura[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp\(9),
	sload => VCC,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(9));

-- Location: LCCOMB_X56_Y43_N0
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \leitor|temperatura\(9) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\leitor|temperatura\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(9),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X56_Y43_N2
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\leitor|temperatura\(10) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\leitor|temperatura\(10) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\leitor|temperatura\(10) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(10),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X56_Y43_N4
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\leitor|temperatura\(11) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\leitor|temperatura\(11) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\leitor|temperatura\(11) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X56_Y43_N6
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

-- Location: LCCOMB_X56_Y43_N10
\Div0|auto_generated|divider|divider|StageOut[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X56_Y43_N8
\Div0|auto_generated|divider|divider|StageOut[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \leitor|temperatura\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \leitor|temperatura\(11),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X56_Y43_N12
\Div0|auto_generated|divider|divider|StageOut[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \leitor|temperatura\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \leitor|temperatura\(10),
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X57_Y43_N24
\Div0|auto_generated|divider|divider|StageOut[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X56_Y43_N26
\Div0|auto_generated|divider|divider|StageOut[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X56_Y43_N14
\Div0|auto_generated|divider|divider|StageOut[16]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \leitor|temperatura\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \leitor|temperatura\(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X57_Y41_N2
\leitor|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Decoder0~3_combout\ = (\leitor|bit_recebido\(2) & (!\leitor|bit_recebido\(0) & !\leitor|bit_recebido\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(2),
	datab => \leitor|bit_recebido\(0),
	datac => \leitor|bit_recebido\(3),
	combout => \leitor|Decoder0~3_combout\);

-- Location: LCCOMB_X56_Y41_N12
\leitor|temperatura_tmp[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[8]~3_combout\ = (\leitor|bit_recebido\(1) & (((\leitor|temperatura_tmp\(8))))) # (!\leitor|bit_recebido\(1) & ((\leitor|Decoder0~3_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~3_combout\ & ((\leitor|temperatura_tmp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|temperatura_tmp\(8),
	datac => \leitor|bit_recebido\(1),
	datad => \leitor|Decoder0~3_combout\,
	combout => \leitor|temperatura_tmp[8]~3_combout\);

-- Location: LCCOMB_X56_Y41_N2
\leitor|temperatura_tmp[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[8]~feeder_combout\ = \leitor|temperatura_tmp[8]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[8]~3_combout\,
	combout => \leitor|temperatura_tmp[8]~feeder_combout\);

-- Location: FF_X56_Y41_N3
\leitor|temperatura_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(8));

-- Location: LCCOMB_X56_Y41_N16
\leitor|temperatura[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura[8]~feeder_combout\ = \leitor|temperatura_tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp\(8),
	combout => \leitor|temperatura[8]~feeder_combout\);

-- Location: FF_X56_Y41_N17
\leitor|temperatura[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|temperatura[8]~feeder_combout\,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(8));

-- Location: LCCOMB_X56_Y43_N30
\Div0|auto_generated|divider|divider|StageOut[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\leitor|temperatura\(8) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X56_Y43_N28
\Div0|auto_generated|divider|divider|StageOut[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\leitor|temperatura\(8) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X56_Y43_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~62_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X56_Y43_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~61_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~60_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~60_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X56_Y43_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~59_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~59_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X56_Y43_N22
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X56_Y43_N24
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

-- Location: LCCOMB_X57_Y43_N26
\Div0|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X57_Y43_N2
\Div0|auto_generated|divider|divider|StageOut[23]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\leitor|temperatura\(10)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \leitor|temperatura\(10),
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X57_Y43_N28
\Div0|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X57_Y43_N20
\Div0|auto_generated|divider|divider|StageOut[22]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\leitor|temperatura\(9)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \leitor|temperatura\(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X57_Y43_N30
\Div0|auto_generated|divider|divider|StageOut[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X57_Y43_N0
\Div0|auto_generated|divider|divider|StageOut[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \leitor|temperatura\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \leitor|temperatura\(8),
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X57_Y41_N4
\leitor|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Decoder0~4_combout\ = (\leitor|bit_recebido\(2) & (!\leitor|bit_recebido\(3) & \leitor|bit_recebido\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(2),
	datab => \leitor|bit_recebido\(3),
	datad => \leitor|bit_recebido\(0),
	combout => \leitor|Decoder0~4_combout\);

-- Location: LCCOMB_X56_Y41_N18
\leitor|temperatura_tmp[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[7]~4_combout\ = (\leitor|bit_recebido\(1) & (((\leitor|temperatura_tmp\(7))))) # (!\leitor|bit_recebido\(1) & ((\leitor|Decoder0~4_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~4_combout\ & ((\leitor|temperatura_tmp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|temperatura_tmp\(7),
	datac => \leitor|bit_recebido\(1),
	datad => \leitor|Decoder0~4_combout\,
	combout => \leitor|temperatura_tmp[7]~4_combout\);

-- Location: LCCOMB_X56_Y41_N28
\leitor|temperatura_tmp[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[7]~feeder_combout\ = \leitor|temperatura_tmp[7]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[7]~4_combout\,
	combout => \leitor|temperatura_tmp[7]~feeder_combout\);

-- Location: FF_X56_Y41_N29
\leitor|temperatura_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(7));

-- Location: LCCOMB_X56_Y41_N22
\leitor|temperatura[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura[7]~feeder_combout\ = \leitor|temperatura_tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp\(7),
	combout => \leitor|temperatura[7]~feeder_combout\);

-- Location: FF_X56_Y41_N23
\leitor|temperatura[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|temperatura[7]~feeder_combout\,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(7));

-- Location: LCCOMB_X57_Y43_N22
\Div0|auto_generated|divider|divider|StageOut[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \leitor|temperatura\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \leitor|temperatura\(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X57_Y43_N4
\Div0|auto_generated|divider|divider|StageOut[20]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \leitor|temperatura\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \leitor|temperatura\(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X57_Y43_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~68_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y43_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~67_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y43_N10
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y43_N12
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y43_N14
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

-- Location: LCCOMB_X57_Y43_N16
\Div0|auto_generated|divider|divider|StageOut[28]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X58_Y43_N28
\Div0|auto_generated|divider|divider|StageOut[28]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X58_Y43_N10
\Div0|auto_generated|divider|divider|StageOut[27]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X57_Y43_N18
\Div0|auto_generated|divider|divider|StageOut[27]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\leitor|temperatura\(8)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \leitor|temperatura\(8),
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X58_Y43_N22
\Div0|auto_generated|divider|divider|StageOut[26]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X58_Y43_N8
\Div0|auto_generated|divider|divider|StageOut[26]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\leitor|temperatura\(7) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X56_Y41_N20
\leitor|temperatura_tmp[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[6]~5_combout\ = (\leitor|bit_recebido\(1) & ((\leitor|Decoder0~3_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~3_combout\ & ((\leitor|temperatura_tmp\(6)))))) # (!\leitor|bit_recebido\(1) & (((\leitor|temperatura_tmp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|temperatura_tmp\(6),
	datac => \leitor|bit_recebido\(1),
	datad => \leitor|Decoder0~3_combout\,
	combout => \leitor|temperatura_tmp[6]~5_combout\);

-- Location: LCCOMB_X56_Y41_N10
\leitor|temperatura_tmp[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[6]~feeder_combout\ = \leitor|temperatura_tmp[6]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[6]~5_combout\,
	combout => \leitor|temperatura_tmp[6]~feeder_combout\);

-- Location: FF_X56_Y41_N11
\leitor|temperatura_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(6));

-- Location: LCCOMB_X56_Y41_N8
\leitor|temperatura[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura[6]~feeder_combout\ = \leitor|temperatura_tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp\(6),
	combout => \leitor|temperatura[6]~feeder_combout\);

-- Location: FF_X56_Y41_N9
\leitor|temperatura[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \leitor|temperatura[6]~feeder_combout\,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(6));

-- Location: LCCOMB_X58_Y43_N26
\Div0|auto_generated|divider|divider|StageOut[25]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\ = (\leitor|temperatura\(6) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X58_Y43_N4
\Div0|auto_generated|divider|divider|StageOut[25]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\leitor|temperatura\(6) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X58_Y43_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X58_Y43_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~73_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~72_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~72_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X58_Y43_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X58_Y43_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y43_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y43_N2
\Div0|auto_generated|divider|divider|StageOut[33]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X59_Y43_N8
\Div0|auto_generated|divider|divider|StageOut[33]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X59_Y43_N10
\Div0|auto_generated|divider|divider|StageOut[32]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X58_Y43_N24
\Div0|auto_generated|divider|divider|StageOut[32]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\leitor|temperatura\(7))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \leitor|temperatura\(7),
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X59_Y43_N30
\Div0|auto_generated|divider|divider|StageOut[31]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X59_Y43_N16
\Div0|auto_generated|divider|divider|StageOut[31]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\leitor|temperatura\(6) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X56_Y41_N6
\leitor|temperatura_tmp[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[5]~6_combout\ = (\leitor|bit_recebido\(1) & ((\leitor|Decoder0~4_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~4_combout\ & ((\leitor|temperatura_tmp\(5)))))) # (!\leitor|bit_recebido\(1) & (((\leitor|temperatura_tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|bit_recebido\(1),
	datac => \leitor|temperatura_tmp\(5),
	datad => \leitor|Decoder0~4_combout\,
	combout => \leitor|temperatura_tmp[5]~6_combout\);

-- Location: LCCOMB_X56_Y41_N4
\leitor|temperatura_tmp[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[5]~feeder_combout\ = \leitor|temperatura_tmp[5]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[5]~6_combout\,
	combout => \leitor|temperatura_tmp[5]~feeder_combout\);

-- Location: FF_X56_Y41_N5
\leitor|temperatura_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(5));

-- Location: FF_X56_Y41_N7
\leitor|temperatura[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp\(5),
	sload => VCC,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(5));

-- Location: LCCOMB_X59_Y43_N12
\Div0|auto_generated|divider|divider|StageOut[30]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\leitor|temperatura\(5) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X59_Y43_N18
\Div0|auto_generated|divider|divider|StageOut[30]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ = (\leitor|temperatura\(5) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X59_Y43_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X59_Y43_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~78_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[31]~78_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X59_Y43_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X59_Y43_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y43_N28
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y43_N0
\Div0|auto_generated|divider|divider|StageOut[37]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\leitor|temperatura\(6)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \leitor|temperatura\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X59_Y43_N4
\Div0|auto_generated|divider|divider|StageOut[38]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X59_Y43_N6
\Div0|auto_generated|divider|divider|StageOut[38]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X62_Y43_N0
\Div0|auto_generated|divider|divider|StageOut[37]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X62_Y46_N12
\Div0|auto_generated|divider|divider|StageOut[36]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\leitor|temperatura\(5) & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X62_Y46_N10
\Div0|auto_generated|divider|divider|StageOut[36]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X57_Y41_N16
\leitor|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|Decoder0~5_combout\ = (!\leitor|bit_recebido\(2) & (\leitor|bit_recebido\(3) & !\leitor|bit_recebido\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|bit_recebido\(2),
	datab => \leitor|bit_recebido\(3),
	datad => \leitor|bit_recebido\(1),
	combout => \leitor|Decoder0~5_combout\);

-- Location: LCCOMB_X56_Y41_N24
\leitor|temperatura_tmp[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[4]~7_combout\ = (\leitor|bit_recebido\(0) & (((\leitor|temperatura_tmp\(4))))) # (!\leitor|bit_recebido\(0) & ((\leitor|Decoder0~5_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~5_combout\ & ((\leitor|temperatura_tmp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|bit_recebido\(0),
	datac => \leitor|temperatura_tmp\(4),
	datad => \leitor|Decoder0~5_combout\,
	combout => \leitor|temperatura_tmp[4]~7_combout\);

-- Location: LCCOMB_X56_Y41_N30
\leitor|temperatura_tmp[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[4]~feeder_combout\ = \leitor|temperatura_tmp[4]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[4]~7_combout\,
	combout => \leitor|temperatura_tmp[4]~feeder_combout\);

-- Location: FF_X56_Y41_N31
\leitor|temperatura_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(4));

-- Location: FF_X56_Y41_N25
\leitor|temperatura[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp\(4),
	sload => VCC,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(4));

-- Location: LCCOMB_X62_Y46_N20
\Div0|auto_generated|divider|divider|StageOut[35]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\leitor|temperatura\(4) & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X62_Y46_N22
\Div0|auto_generated|divider|divider|StageOut[35]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\leitor|temperatura\(4) & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X62_Y43_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X62_Y43_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~84_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~85_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~85_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X62_Y43_N22
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~83_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~83_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X62_Y43_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y43_N26
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y43_N30
\Div0|auto_generated|divider|divider|StageOut[43]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X62_Y43_N2
\Div0|auto_generated|divider|divider|StageOut[43]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X62_Y46_N18
\Div0|auto_generated|divider|divider|StageOut[42]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\leitor|temperatura\(5)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \leitor|temperatura\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X62_Y43_N14
\Div0|auto_generated|divider|divider|StageOut[42]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X62_Y46_N28
\Div0|auto_generated|divider|divider|StageOut[41]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ = (\leitor|temperatura\(4) & \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\);

-- Location: LCCOMB_X62_Y43_N16
\Div0|auto_generated|divider|divider|StageOut[41]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\);

-- Location: LCCOMB_X57_Y41_N24
\leitor|temperatura_tmp[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[3]~8_combout\ = (\leitor|bit_recebido\(0) & ((\leitor|Decoder0~5_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~5_combout\ & ((\leitor|temperatura_tmp\(3)))))) # (!\leitor|bit_recebido\(0) & (((\leitor|temperatura_tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|temperatura_tmp\(3),
	datac => \leitor|bit_recebido\(0),
	datad => \leitor|Decoder0~5_combout\,
	combout => \leitor|temperatura_tmp[3]~8_combout\);

-- Location: LCCOMB_X57_Y41_N30
\leitor|temperatura_tmp[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[3]~feeder_combout\ = \leitor|temperatura_tmp[3]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[3]~8_combout\,
	combout => \leitor|temperatura_tmp[3]~feeder_combout\);

-- Location: FF_X57_Y41_N31
\leitor|temperatura_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(3));

-- Location: FF_X57_Y41_N11
\leitor|temperatura[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp\(3),
	sload => VCC,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(3));

-- Location: LCCOMB_X62_Y46_N6
\Div0|auto_generated|divider|divider|StageOut[40]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\ = (\leitor|temperatura\(3) & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\);

-- Location: LCCOMB_X62_Y43_N28
\Div0|auto_generated|divider|divider|StageOut[40]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \leitor|temperatura\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \leitor|temperatura\(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X62_Y43_N4
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~93_combout\) # (\Div0|auto_generated|divider|divider|StageOut[40]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~93_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X62_Y43_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X62_Y43_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~103_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~89_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X62_Y43_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y43_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y46_N4
\display_dezena|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[0]~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \display_dezena|out_display[0]~0_combout\);

-- Location: LCCOMB_X62_Y46_N26
\display_dezena|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[1]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \display_dezena|out_display[1]~1_combout\);

-- Location: LCCOMB_X62_Y46_N16
\display_dezena|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \display_dezena|out_display[2]~2_combout\);

-- Location: LCCOMB_X62_Y46_N2
\display_dezena|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[3]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \display_dezena|out_display[3]~3_combout\);

-- Location: LCCOMB_X62_Y46_N0
\display_dezena|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[4]~4_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \display_dezena|out_display[4]~4_combout\);

-- Location: LCCOMB_X62_Y46_N14
\display_dezena|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[5]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \display_dezena|out_display[5]~5_combout\);

-- Location: LCCOMB_X62_Y46_N24
\display_dezena|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[6]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \display_dezena|out_display[6]~6_combout\);

-- Location: LCCOMB_X57_Y42_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \leitor|temperatura\(9) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\leitor|temperatura\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(9),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X57_Y42_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\leitor|temperatura\(10) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\leitor|temperatura\(10) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\leitor|temperatura\(10) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(10),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X57_Y42_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\leitor|temperatura\(11) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\leitor|temperatura\(11) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\leitor|temperatura\(11) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(11),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X57_Y42_N16
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

-- Location: LCCOMB_X57_Y42_N2
\Mod0|auto_generated|divider|divider|StageOut[33]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~93_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~93_combout\);

-- Location: LCCOMB_X57_Y42_N0
\Mod0|auto_generated|divider|divider|StageOut[33]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~92_combout\ = (\leitor|temperatura\(11) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(11),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~92_combout\);

-- Location: LCCOMB_X57_Y42_N6
\Mod0|auto_generated|divider|divider|StageOut[32]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~95_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~95_combout\);

-- Location: LCCOMB_X57_Y42_N4
\Mod0|auto_generated|divider|divider|StageOut[32]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~94_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \leitor|temperatura\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \leitor|temperatura\(10),
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~94_combout\);

-- Location: LCCOMB_X57_Y41_N26
\Mod0|auto_generated|divider|divider|StageOut[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~96_combout\ = (\leitor|temperatura\(9) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(9),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~96_combout\);

-- Location: LCCOMB_X57_Y42_N8
\Mod0|auto_generated|divider|divider|StageOut[31]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~97_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~97_combout\);

-- Location: LCCOMB_X57_Y42_N30
\Mod0|auto_generated|divider|divider|StageOut[30]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~99_combout\ = (\leitor|temperatura\(8) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(8),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~99_combout\);

-- Location: LCCOMB_X57_Y42_N28
\Mod0|auto_generated|divider|divider|StageOut[30]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~98_combout\ = (\leitor|temperatura\(8) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leitor|temperatura\(8),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~98_combout\);

-- Location: LCCOMB_X57_Y42_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~99_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~98_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~99_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~99_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~98_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X57_Y42_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~96_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~97_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~96_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~97_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~96_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~97_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~96_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~97_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X57_Y42_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~95_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~94_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~95_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~94_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~95_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~95_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~94_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X57_Y42_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~93_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[33]~92_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~93_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~92_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~93_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~92_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~92_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X57_Y42_N26
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

-- Location: LCCOMB_X57_Y40_N12
\Mod0|auto_generated|divider|divider|StageOut[44]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~100_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~100_combout\);

-- Location: LCCOMB_X57_Y41_N20
\Mod0|auto_generated|divider|divider|StageOut[44]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\leitor|temperatura\(11))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(11),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\);

-- Location: LCCOMB_X58_Y40_N4
\Mod0|auto_generated|divider|divider|StageOut[43]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\leitor|temperatura\(10))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(10),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\);

-- Location: LCCOMB_X57_Y40_N2
\Mod0|auto_generated|divider|divider|StageOut[43]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~101_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~101_combout\);

-- Location: LCCOMB_X57_Y40_N8
\Mod0|auto_generated|divider|divider|StageOut[42]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\);

-- Location: LCCOMB_X58_Y40_N26
\Mod0|auto_generated|divider|divider|StageOut[42]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\leitor|temperatura\(9)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \leitor|temperatura\(9),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\);

-- Location: LCCOMB_X57_Y40_N10
\Mod0|auto_generated|divider|divider|StageOut[41]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~103_combout\ = (\leitor|temperatura\(8) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(8),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~103_combout\);

-- Location: LCCOMB_X55_Y40_N0
\Mod0|auto_generated|divider|divider|StageOut[41]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~104_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~104_combout\);

-- Location: LCCOMB_X57_Y40_N30
\Mod0|auto_generated|divider|divider|StageOut[40]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~106_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \leitor|temperatura\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \leitor|temperatura\(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~106_combout\);

-- Location: LCCOMB_X57_Y40_N0
\Mod0|auto_generated|divider|divider|StageOut[40]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~105_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \leitor|temperatura\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \leitor|temperatura\(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~105_combout\);

-- Location: LCCOMB_X57_Y40_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[40]~106_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~105_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[40]~106_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~106_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~105_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y40_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[41]~103_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~104_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~103_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[41]~104_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[41]~103_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~104_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~103_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[41]~104_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y40_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y40_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~101_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~101_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~101_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~101_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X57_Y40_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[44]~100_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~100_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[44]~100_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~100_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X57_Y40_N26
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

-- Location: LCCOMB_X57_Y40_N4
\Mod0|auto_generated|divider|divider|StageOut[55]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~166_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\);

-- Location: LCCOMB_X56_Y40_N24
\Mod0|auto_generated|divider|divider|StageOut[55]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~107_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~107_combout\);

-- Location: LCCOMB_X56_Y40_N26
\Mod0|auto_generated|divider|divider|StageOut[54]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\);

-- Location: LCCOMB_X57_Y40_N14
\Mod0|auto_generated|divider|divider|StageOut[54]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[43]~167_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\);

-- Location: LCCOMB_X56_Y40_N8
\Mod0|auto_generated|divider|divider|StageOut[53]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\);

-- Location: LCCOMB_X57_Y40_N28
\Mod0|auto_generated|divider|divider|StageOut[53]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[42]~168_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\);

-- Location: LCCOMB_X55_Y40_N2
\Mod0|auto_generated|divider|divider|StageOut[52]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\leitor|temperatura\(8))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \leitor|temperatura\(8),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\);

-- Location: LCCOMB_X57_Y37_N20
\Mod0|auto_generated|divider|divider|StageOut[52]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\);

-- Location: LCCOMB_X56_Y40_N6
\Mod0|auto_generated|divider|divider|StageOut[51]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~112_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~112_combout\);

-- Location: LCCOMB_X56_Y39_N0
\Mod0|auto_generated|divider|divider|StageOut[51]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\ = (\leitor|temperatura\(7) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leitor|temperatura\(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\);

-- Location: LCCOMB_X56_Y40_N0
\Mod0|auto_generated|divider|divider|StageOut[50]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~113_combout\ = (\leitor|temperatura\(6) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~113_combout\);

-- Location: LCCOMB_X56_Y40_N4
\Mod0|auto_generated|divider|divider|StageOut[50]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~114_combout\ = (\leitor|temperatura\(6) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~114_combout\);

-- Location: LCCOMB_X56_Y40_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[50]~113_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[50]~114_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[50]~113_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[50]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~113_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~114_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X56_Y40_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[51]~112_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~112_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[51]~112_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~112_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X56_Y40_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X56_Y40_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X56_Y40_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X56_Y40_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[55]~107_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[55]~107_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[55]~107_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[55]~107_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X56_Y40_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X57_Y37_N30
\Mod0|auto_generated|divider|divider|StageOut[66]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~115_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~115_combout\);

-- Location: LCCOMB_X56_Y40_N2
\Mod0|auto_generated|divider|divider|StageOut[66]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[55]~148_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\);

-- Location: LCCOMB_X57_Y37_N4
\Mod0|auto_generated|divider|divider|StageOut[65]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~116_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~116_combout\);

-- Location: LCCOMB_X56_Y40_N28
\Mod0|auto_generated|divider|divider|StageOut[65]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[54]~149_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\);

-- Location: LCCOMB_X56_Y40_N30
\Mod0|auto_generated|divider|divider|StageOut[64]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~150_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\);

-- Location: LCCOMB_X57_Y37_N18
\Mod0|auto_generated|divider|divider|StageOut[64]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~117_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~117_combout\);

-- Location: LCCOMB_X56_Y37_N24
\Mod0|auto_generated|divider|divider|StageOut[63]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~118_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~118_combout\);

-- Location: LCCOMB_X57_Y37_N26
\Mod0|auto_generated|divider|divider|StageOut[63]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~169_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\);

-- Location: LCCOMB_X57_Y40_N6
\Mod0|auto_generated|divider|divider|StageOut[62]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\leitor|temperatura\(7)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \leitor|temperatura\(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\);

-- Location: LCCOMB_X56_Y37_N18
\Mod0|auto_generated|divider|divider|StageOut[62]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~119_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~119_combout\);

-- Location: LCCOMB_X56_Y37_N22
\Mod0|auto_generated|divider|divider|StageOut[61]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~121_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~121_combout\);

-- Location: LCCOMB_X56_Y37_N16
\Mod0|auto_generated|divider|divider|StageOut[61]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~120_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \leitor|temperatura\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \leitor|temperatura\(6),
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~120_combout\);

-- Location: LCCOMB_X56_Y37_N26
\Mod0|auto_generated|divider|divider|StageOut[60]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~123_combout\ = (\leitor|temperatura\(5) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~123_combout\);

-- Location: LCCOMB_X56_Y37_N20
\Mod0|auto_generated|divider|divider|StageOut[60]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~122_combout\ = (\leitor|temperatura\(5) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leitor|temperatura\(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~122_combout\);

-- Location: LCCOMB_X56_Y37_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[60]~123_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~122_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[60]~123_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~123_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~122_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X56_Y37_N2
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[61]~121_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[61]~120_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[61]~121_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[61]~120_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[61]~121_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[61]~120_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~121_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~120_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X56_Y37_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~119_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~119_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~119_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X56_Y37_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[63]~118_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[63]~118_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[63]~118_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~118_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X56_Y37_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[64]~117_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[64]~117_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[64]~117_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[64]~117_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X56_Y37_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[65]~116_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[65]~116_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[65]~116_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[65]~116_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X56_Y37_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[66]~115_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[66]~115_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[66]~115_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[66]~115_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X56_Y37_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X57_Y37_N12
\Mod0|auto_generated|divider|divider|StageOut[77]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[66]~151_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\);

-- Location: LCCOMB_X57_Y37_N28
\Mod0|auto_generated|divider|divider|StageOut[77]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~124_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~124_combout\);

-- Location: LCCOMB_X57_Y37_N14
\Mod0|auto_generated|divider|divider|StageOut[76]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\);

-- Location: LCCOMB_X57_Y37_N6
\Mod0|auto_generated|divider|divider|StageOut[76]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~125_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~125_combout\);

-- Location: LCCOMB_X57_Y37_N0
\Mod0|auto_generated|divider|divider|StageOut[75]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~126_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~126_combout\);

-- Location: LCCOMB_X57_Y37_N8
\Mod0|auto_generated|divider|divider|StageOut[75]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[64]~153_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\);

-- Location: LCCOMB_X55_Y38_N16
\Mod0|auto_generated|divider|divider|StageOut[74]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~127_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~127_combout\);

-- Location: LCCOMB_X56_Y37_N28
\Mod0|auto_generated|divider|divider|StageOut[74]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~154_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\);

-- Location: LCCOMB_X56_Y37_N30
\Mod0|auto_generated|divider|divider|StageOut[73]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[62]~170_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\);

-- Location: LCCOMB_X55_Y38_N18
\Mod0|auto_generated|divider|divider|StageOut[73]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~128_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~128_combout\);

-- Location: LCCOMB_X56_Y38_N26
\Mod0|auto_generated|divider|divider|StageOut[72]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\leitor|temperatura\(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \leitor|temperatura\(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\);

-- Location: LCCOMB_X55_Y38_N28
\Mod0|auto_generated|divider|divider|StageOut[72]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~129_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~129_combout\);

-- Location: LCCOMB_X55_Y38_N26
\Mod0|auto_generated|divider|divider|StageOut[71]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[71]~130_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \leitor|temperatura\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \leitor|temperatura\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[71]~130_combout\);

-- Location: LCCOMB_X55_Y38_N4
\Mod0|auto_generated|divider|divider|StageOut[71]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[71]~131_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[71]~131_combout\);

-- Location: LCCOMB_X55_Y38_N2
\Mod0|auto_generated|divider|divider|StageOut[70]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[70]~132_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \leitor|temperatura\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \leitor|temperatura\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[70]~132_combout\);

-- Location: LCCOMB_X55_Y38_N20
\Mod0|auto_generated|divider|divider|StageOut[70]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[70]~133_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \leitor|temperatura\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \leitor|temperatura\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[70]~133_combout\);

-- Location: LCCOMB_X56_Y38_N6
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[70]~132_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[70]~133_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[70]~132_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[70]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[70]~132_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[70]~133_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X56_Y38_N8
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[71]~130_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[71]~131_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[71]~130_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[71]~131_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[71]~130_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[71]~131_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[71]~130_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[71]~131_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X56_Y38_N10
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[72]~129_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[72]~129_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[72]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[72]~129_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X56_Y38_N12
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[73]~128_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[73]~128_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[73]~128_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[73]~128_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X56_Y38_N14
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[74]~127_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[74]~127_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[74]~127_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[74]~127_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X56_Y38_N16
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[75]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[75]~126_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[75]~126_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[75]~126_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X56_Y38_N18
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[76]~125_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[76]~125_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[76]~125_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[76]~125_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X56_Y38_N20
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[77]~124_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[77]~124_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[77]~124_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[77]~124_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X56_Y38_N22
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X57_Y37_N22
\Mod0|auto_generated|divider|divider|StageOut[88]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~160_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[77]~155_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~160_combout\);

-- Location: LCCOMB_X56_Y38_N28
\Mod0|auto_generated|divider|divider|StageOut[88]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~139_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~139_combout\);

-- Location: LCCOMB_X57_Y37_N24
\Mod0|auto_generated|divider|divider|StageOut[87]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~161_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[76]~156_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~161_combout\);

-- Location: LCCOMB_X55_Y38_N12
\Mod0|auto_generated|divider|divider|StageOut[87]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~140_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~140_combout\);

-- Location: LCCOMB_X57_Y37_N2
\Mod0|auto_generated|divider|divider|StageOut[86]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~162_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[75]~157_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~162_combout\);

-- Location: LCCOMB_X56_Y38_N30
\Mod0|auto_generated|divider|divider|StageOut[86]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~141_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~141_combout\);

-- Location: LCCOMB_X55_Y38_N10
\Mod0|auto_generated|divider|divider|StageOut[85]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~163_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[74]~158_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~163_combout\);

-- Location: LCCOMB_X56_Y38_N24
\Mod0|auto_generated|divider|divider|StageOut[85]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~142_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~142_combout\);

-- Location: LCCOMB_X56_Y38_N0
\Mod0|auto_generated|divider|divider|StageOut[84]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\);

-- Location: LCCOMB_X56_Y38_N4
\Mod0|auto_generated|divider|divider|StageOut[84]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~164_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[73]~159_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~164_combout\);

-- Location: LCCOMB_X56_Y38_N2
\Mod0|auto_generated|divider|divider|StageOut[83]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[83]~144_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[83]~144_combout\);

-- Location: LCCOMB_X55_Y38_N24
\Mod0|auto_generated|divider|divider|StageOut[83]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[83]~165_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[72]~171_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[83]~165_combout\);

-- Location: LCCOMB_X55_Y38_N22
\Mod0|auto_generated|divider|divider|StageOut[82]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\leitor|temperatura\(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \leitor|temperatura\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\);

-- Location: LCCOMB_X57_Y38_N0
\Mod0|auto_generated|divider|divider|StageOut[82]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\);

-- Location: LCCOMB_X55_Y38_N14
\Mod0|auto_generated|divider|divider|StageOut[81]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \leitor|temperatura\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \leitor|temperatura\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\);

-- Location: LCCOMB_X57_Y38_N2
\Mod0|auto_generated|divider|divider|StageOut[81]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\);

-- Location: LCCOMB_X57_Y38_N26
\Mod0|auto_generated|divider|divider|StageOut[80]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[80]~138_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \leitor|temperatura\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \leitor|temperatura\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[80]~138_combout\);

-- Location: LCCOMB_X57_Y38_N28
\Mod0|auto_generated|divider|divider|StageOut[80]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[80]~137_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \leitor|temperatura\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \leitor|temperatura\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[80]~137_combout\);

-- Location: LCCOMB_X57_Y38_N4
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[80]~138_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[80]~137_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[80]~138_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[80]~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[80]~138_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[80]~137_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X57_Y38_N6
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X57_Y38_N8
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X57_Y38_N10
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[83]~144_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[83]~165_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[83]~144_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[83]~165_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y38_N12
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[84]~164_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[84]~164_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X57_Y38_N14
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[85]~163_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[85]~142_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[85]~163_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[85]~142_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\);

-- Location: LCCOMB_X57_Y38_N16
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[86]~162_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[86]~141_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[86]~162_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[86]~141_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\);

-- Location: LCCOMB_X57_Y38_N18
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[87]~161_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[87]~140_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[87]~161_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[87]~140_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\);

-- Location: LCCOMB_X57_Y38_N20
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[88]~160_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[88]~139_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[88]~160_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[88]~139_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\);

-- Location: LCCOMB_X57_Y38_N22
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X58_Y38_N16
\Mod0|auto_generated|divider|divider|StageOut[91]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\leitor|temperatura\(3)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \leitor|temperatura\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\);

-- Location: LCCOMB_X57_Y38_N24
\Mod0|auto_generated|divider|divider|StageOut[93]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[82]~172_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[82]~134_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\);

-- Location: LCCOMB_X57_Y38_N30
\Mod0|auto_generated|divider|divider|StageOut[92]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[81]~135_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[81]~136_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\);

-- Location: LCCOMB_X58_Y41_N2
\leitor|temperatura_tmp[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[2]~9_combout\ = (\leitor|bit_recebido\(3) & ((\leitor|Decoder0~1_combout\ & (\so~input_o\)) # (!\leitor|Decoder0~1_combout\ & ((\leitor|temperatura_tmp\(2)))))) # (!\leitor|bit_recebido\(3) & (((\leitor|temperatura_tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \so~input_o\,
	datab => \leitor|bit_recebido\(3),
	datac => \leitor|temperatura_tmp\(2),
	datad => \leitor|Decoder0~1_combout\,
	combout => \leitor|temperatura_tmp[2]~9_combout\);

-- Location: LCCOMB_X58_Y41_N4
\leitor|temperatura_tmp[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leitor|temperatura_tmp[2]~feeder_combout\ = \leitor|temperatura_tmp[2]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \leitor|temperatura_tmp[2]~9_combout\,
	combout => \leitor|temperatura_tmp[2]~feeder_combout\);

-- Location: FF_X58_Y41_N5
\leitor|temperatura_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \leitor|sck_tmp~clkctrl_outclk\,
	d => \leitor|temperatura_tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura_tmp\(2));

-- Location: FF_X58_Y41_N3
\leitor|temperatura[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \leitor|temperatura_tmp\(2),
	sload => VCC,
	ena => \leitor|temperatura[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leitor|temperatura\(2));

-- Location: LCCOMB_X58_Y41_N20
\display_unidade|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[0]~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ & \leitor|temperatura\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datad => \leitor|temperatura\(2),
	combout => \display_unidade|out_display[0]~0_combout\);

-- Location: LCCOMB_X58_Y41_N6
\display_unidade|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[1]~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ $ (\leitor|temperatura\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datad => \leitor|temperatura\(2),
	combout => \display_unidade|out_display[1]~1_combout\);

-- Location: LCCOMB_X58_Y41_N28
\display_unidade|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\) # (!\leitor|temperatura\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datad => \leitor|temperatura\(2),
	combout => \display_unidade|out_display[2]~2_combout\);

-- Location: LCCOMB_X58_Y41_N10
\display_unidade|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[3]~3_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ & 
-- \leitor|temperatura\(2))))) # (!\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ & 
-- \leitor|temperatura\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datad => \leitor|temperatura\(2),
	combout => \display_unidade|out_display[3]~3_combout\);

-- Location: LCCOMB_X58_Y41_N0
\display_unidade|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[4]~4_combout\ = (\leitor|temperatura\(2)) # ((\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datad => \leitor|temperatura\(2),
	combout => \display_unidade|out_display[4]~4_combout\);

-- Location: LCCOMB_X58_Y41_N26
\display_unidade|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[5]~5_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & 
-- \leitor|temperatura\(2))))) # (!\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ & 
-- \leitor|temperatura\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datad => \leitor|temperatura\(2),
	combout => \display_unidade|out_display[5]~5_combout\);

-- Location: LCCOMB_X58_Y41_N8
\display_unidade|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[6]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\ & 
-- \leitor|temperatura\(2))))) # (!\Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\ $ ((!\Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datad => \leitor|temperatura\(2),
	combout => \display_unidade|out_display[6]~6_combout\);

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

ww_cs <= \cs~output_o\;

ww_sck <= \sck~output_o\;

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
END structure;


