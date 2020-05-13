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

-- DATE "05/13/2020 16:34:13"

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

ENTITY 	controlador_pid_tester IS
    PORT (
	clk_50MHZ : IN std_logic;
	func_select : IN std_logic;
	ativar_pid : IN std_logic;
	btn_mais : IN std_logic;
	btn_menos : IN std_logic;
	pid_ativo : BUFFER std_logic;
	dezena_set_point : BUFFER std_logic_vector(6 DOWNTO 0);
	unidade_set_point : BUFFER std_logic_vector(6 DOWNTO 0);
	dezena_temperatura : BUFFER std_logic_vector(6 DOWNTO 0);
	unidade_temperatura : BUFFER std_logic_vector(6 DOWNTO 0);
	dezena_potencia : BUFFER std_logic_vector(6 DOWNTO 0);
	unidade_potencia : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END controlador_pid_tester;

-- Design Ports Information
-- pid_ativo	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_set_point[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_set_point[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_set_point[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_set_point[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_set_point[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_set_point[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_set_point[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_set_point[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_set_point[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_set_point[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_set_point[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_set_point[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_set_point[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_set_point[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_temperatura[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_temperatura[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_temperatura[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_temperatura[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_temperatura[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_temperatura[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_temperatura[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_temperatura[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_temperatura[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_temperatura[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_temperatura[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_temperatura[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_temperatura[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_temperatura[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_potencia[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_potencia[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_potencia[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_potencia[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_potencia[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_potencia[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena_potencia[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_potencia[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_potencia[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_potencia[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_potencia[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_potencia[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_potencia[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade_potencia[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ativar_pid	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func_select	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_mais	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_menos	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHZ	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlador_pid_tester IS
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
SIGNAL ww_func_select : std_logic;
SIGNAL ww_ativar_pid : std_logic;
SIGNAL ww_btn_mais : std_logic;
SIGNAL ww_btn_menos : std_logic;
SIGNAL ww_pid_ativo : std_logic;
SIGNAL ww_dezena_set_point : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade_set_point : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dezena_temperatura : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade_temperatura : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dezena_potencia : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade_potencia : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_pid~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \pid_ativo~output_o\ : std_logic;
SIGNAL \dezena_set_point[0]~output_o\ : std_logic;
SIGNAL \dezena_set_point[1]~output_o\ : std_logic;
SIGNAL \dezena_set_point[2]~output_o\ : std_logic;
SIGNAL \dezena_set_point[3]~output_o\ : std_logic;
SIGNAL \dezena_set_point[4]~output_o\ : std_logic;
SIGNAL \dezena_set_point[5]~output_o\ : std_logic;
SIGNAL \dezena_set_point[6]~output_o\ : std_logic;
SIGNAL \unidade_set_point[0]~output_o\ : std_logic;
SIGNAL \unidade_set_point[1]~output_o\ : std_logic;
SIGNAL \unidade_set_point[2]~output_o\ : std_logic;
SIGNAL \unidade_set_point[3]~output_o\ : std_logic;
SIGNAL \unidade_set_point[4]~output_o\ : std_logic;
SIGNAL \unidade_set_point[5]~output_o\ : std_logic;
SIGNAL \unidade_set_point[6]~output_o\ : std_logic;
SIGNAL \dezena_temperatura[0]~output_o\ : std_logic;
SIGNAL \dezena_temperatura[1]~output_o\ : std_logic;
SIGNAL \dezena_temperatura[2]~output_o\ : std_logic;
SIGNAL \dezena_temperatura[3]~output_o\ : std_logic;
SIGNAL \dezena_temperatura[4]~output_o\ : std_logic;
SIGNAL \dezena_temperatura[5]~output_o\ : std_logic;
SIGNAL \dezena_temperatura[6]~output_o\ : std_logic;
SIGNAL \unidade_temperatura[0]~output_o\ : std_logic;
SIGNAL \unidade_temperatura[1]~output_o\ : std_logic;
SIGNAL \unidade_temperatura[2]~output_o\ : std_logic;
SIGNAL \unidade_temperatura[3]~output_o\ : std_logic;
SIGNAL \unidade_temperatura[4]~output_o\ : std_logic;
SIGNAL \unidade_temperatura[5]~output_o\ : std_logic;
SIGNAL \unidade_temperatura[6]~output_o\ : std_logic;
SIGNAL \dezena_potencia[0]~output_o\ : std_logic;
SIGNAL \dezena_potencia[1]~output_o\ : std_logic;
SIGNAL \dezena_potencia[2]~output_o\ : std_logic;
SIGNAL \dezena_potencia[3]~output_o\ : std_logic;
SIGNAL \dezena_potencia[4]~output_o\ : std_logic;
SIGNAL \dezena_potencia[5]~output_o\ : std_logic;
SIGNAL \dezena_potencia[6]~output_o\ : std_logic;
SIGNAL \unidade_potencia[0]~output_o\ : std_logic;
SIGNAL \unidade_potencia[1]~output_o\ : std_logic;
SIGNAL \unidade_potencia[2]~output_o\ : std_logic;
SIGNAL \unidade_potencia[3]~output_o\ : std_logic;
SIGNAL \unidade_potencia[4]~output_o\ : std_logic;
SIGNAL \unidade_potencia[5]~output_o\ : std_logic;
SIGNAL \unidade_potencia[6]~output_o\ : std_logic;
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
SIGNAL \divisor_50x|Equal0~2_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~1_combout\ : std_logic;
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
SIGNAL \ativar_pid~input_o\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \update_variaveis~3_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \update_variaveis~2_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \update_variaveis~0_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \update_variaveis~1_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \update_variaveis~5_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \update_variaveis~4_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \update_variaveis~6_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \pid_ativo~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \update_display~0_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \update_display~1_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \update_display~2_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \update_display~3_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \update_display~4_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \update_display~5_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \pid_ativo~1_combout\ : std_logic;
SIGNAL \pid_ativo~reg0_q\ : std_logic;
SIGNAL \func_select~input_o\ : std_logic;
SIGNAL \btn_menos~input_o\ : std_logic;
SIGNAL \rising_menos~feeder_combout\ : std_logic;
SIGNAL \btn_mais~input_o\ : std_logic;
SIGNAL \rising_mais~feeder_combout\ : std_logic;
SIGNAL \reset_mais~q\ : std_logic;
SIGNAL \rising_mais~q\ : std_logic;
SIGNAL \reset_menos~0_combout\ : std_logic;
SIGNAL \reset_menos~q\ : std_logic;
SIGNAL \rising_menos~q\ : std_logic;
SIGNAL \set_point_tmp_unsigned~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~22_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~23_combout\ : std_logic;
SIGNAL \set_point_tmp[2]~3_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~20_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~21_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~18_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~19_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~16_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~17_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~15_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~9_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~11_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~7_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~5_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~6_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~2_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~10_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~12_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~13_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~3_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \set_point_tmp_unsigned~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~109_combout\ : std_logic;
SIGNAL \dezena_set_point_tmp[0]~2_cout\ : std_logic;
SIGNAL \dezena_set_point_tmp[0]~4_cout\ : std_logic;
SIGNAL \dezena_set_point_tmp[0]~6_cout\ : std_logic;
SIGNAL \dezena_set_point_tmp[0]~8_cout\ : std_logic;
SIGNAL \dezena_set_point_tmp[0]~9_combout\ : std_logic;
SIGNAL \dezena_set_point_tmp[2]~12_combout\ : std_logic;
SIGNAL \dezena_set_point_tmp[1]~13_combout\ : std_logic;
SIGNAL \dezena_set_point_tmp[3]~11_combout\ : std_logic;
SIGNAL \display_dezena_set_point|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena_set_point|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena_set_point|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_set_point|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena_set_point|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena_set_point|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_set_point|out_display[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~122_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~123_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~125_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~124_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~126_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~127_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~129_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~128_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~130_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~131_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~132_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~133_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~134_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~135_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~136_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~137_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~138_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~179_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~178_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~139_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~140_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~141_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~142_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~143_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~144_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~145_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~186_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~187_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~146_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~147_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~148_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~149_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~150_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~151_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[98]~152_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[97]~153_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~196_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~197_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~154_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~155_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~156_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~157_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~158_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~159_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~160_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~161_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~207_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~208_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~213_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~214_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~215_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~216_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~217_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~218_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~219_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~171_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~172_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~220_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[120]~212_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[120]~211_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[134]~174_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[133]~175_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[135]~173_combout\ : std_logic;
SIGNAL \display_unidade_set_point|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade_set_point|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade_set_point|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_set_point|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade_set_point|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade_set_point|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_set_point|out_display[6]~6_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~22_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~23_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~20_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~21_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~18_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~19_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~16_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~17_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~14_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~15_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~9_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~11_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~0_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~7_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~8_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~5_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~6_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~10_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~12_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~13_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~3_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~2_combout\ : std_logic;
SIGNAL \temperatura_tmp_unsigned~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~111_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~112_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~76_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~91_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~90_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~92_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~78_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~79_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~113_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~80_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~93_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[35]~94_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[35]~95_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~96_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~82_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~97_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[41]~98_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[41]~83_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~100_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~99_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[2]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~84_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~101_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[47]~102_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[47]~85_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~103_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~86_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~104_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~105_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[1]~13_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~87_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~106_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~107_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~88_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~108_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~89_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~109_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~110_combout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[0]~2_cout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[0]~4_cout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[0]~6_cout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[0]~8_cout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[0]~9_combout\ : std_logic;
SIGNAL \dezena_temperatura_tmp[3]~11_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|out_display[6]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[65]~122_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[63]~124_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[63]~125_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~126_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[62]~127_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[61]~128_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[61]~129_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~130_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[60]~131_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[78]~132_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[77]~133_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[76]~134_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[75]~135_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[74]~136_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[73]~138_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[73]~137_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[72]~178_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[72]~179_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[91]~139_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[90]~140_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[89]~141_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[88]~142_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[87]~143_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[86]~144_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[85]~145_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[84]~186_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[84]~187_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[104]~146_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[103]~147_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[102]~148_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[101]~149_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[100]~150_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[99]~151_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[98]~152_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[97]~153_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[96]~197_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[96]~196_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[117]~154_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[116]~155_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[115]~156_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[114]~157_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[113]~158_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[112]~159_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[111]~160_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[110]~161_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[109]~162_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[108]~208_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[108]~207_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[120]~212_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[120]~211_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[130]~165_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[130]~213_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[129]~214_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[129]~166_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[128]~215_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[128]~167_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[127]~168_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[127]~216_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[126]~217_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[126]~169_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[125]~170_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[125]~218_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[124]~219_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[124]~171_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[123]~220_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[123]~172_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[133]~175_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[134]~174_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[135]~173_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|out_display[6]~6_combout\ : std_logic;
SIGNAL \clk_pid~feeder_combout\ : std_logic;
SIGNAL \clk_pid~q\ : std_logic;
SIGNAL \clk_pid~clkctrl_outclk\ : std_logic;
SIGNAL \temperatura[10]~feeder_combout\ : std_logic;
SIGNAL \temperatura[9]~feeder_combout\ : std_logic;
SIGNAL \temperatura[8]~0_combout\ : std_logic;
SIGNAL \set_point[8]~3_combout\ : std_logic;
SIGNAL \temperatura[7]~feeder_combout\ : std_logic;
SIGNAL \temperatura[6]~feeder_combout\ : std_logic;
SIGNAL \set_point[6]~0_combout\ : std_logic;
SIGNAL \temperatura[5]~1_combout\ : std_logic;
SIGNAL \set_point[4]~1_combout\ : std_logic;
SIGNAL \temperatura[4]~feeder_combout\ : std_logic;
SIGNAL \temperatura[3]~2_combout\ : std_logic;
SIGNAL \temperatura[2]~feeder_combout\ : std_logic;
SIGNAL \set_point[2]~2_combout\ : std_logic;
SIGNAL \pid|Add0~1\ : std_logic;
SIGNAL \pid|Add0~3\ : std_logic;
SIGNAL \pid|Add0~5\ : std_logic;
SIGNAL \pid|Add0~7\ : std_logic;
SIGNAL \pid|Add0~9\ : std_logic;
SIGNAL \pid|Add0~11\ : std_logic;
SIGNAL \pid|Add0~13\ : std_logic;
SIGNAL \pid|Add0~15\ : std_logic;
SIGNAL \pid|Add0~17\ : std_logic;
SIGNAL \pid|Add0~19\ : std_logic;
SIGNAL \pid|Add0~20_combout\ : std_logic;
SIGNAL \pid|Add1~1_cout\ : std_logic;
SIGNAL \pid|Add1~3_cout\ : std_logic;
SIGNAL \pid|Add1~5_cout\ : std_logic;
SIGNAL \pid|Add1~7\ : std_logic;
SIGNAL \pid|Add1~9\ : std_logic;
SIGNAL \pid|Add1~11\ : std_logic;
SIGNAL \pid|Add1~13\ : std_logic;
SIGNAL \pid|Add1~15\ : std_logic;
SIGNAL \pid|Add1~17\ : std_logic;
SIGNAL \pid|Add1~19\ : std_logic;
SIGNAL \pid|Add1~20_combout\ : std_logic;
SIGNAL \pid|Add0~18_combout\ : std_logic;
SIGNAL \pid|Add0~16_combout\ : std_logic;
SIGNAL \pid|Add0~14_combout\ : std_logic;
SIGNAL \pid|Add1~18_combout\ : std_logic;
SIGNAL \pid|Add0~12_combout\ : std_logic;
SIGNAL \pid|Add0~10_combout\ : std_logic;
SIGNAL \pid|Add1~16_combout\ : std_logic;
SIGNAL \pid|Add0~8_combout\ : std_logic;
SIGNAL \pid|Add1~14_combout\ : std_logic;
SIGNAL \pid|Add0~6_combout\ : std_logic;
SIGNAL \pid|Add1~12_combout\ : std_logic;
SIGNAL \pid|Add1~10_combout\ : std_logic;
SIGNAL \pid|Add0~4_combout\ : std_logic;
SIGNAL \pid|Add0~2_combout\ : std_logic;
SIGNAL \pid|Add1~8_combout\ : std_logic;
SIGNAL \pid|Add0~0_combout\ : std_logic;
SIGNAL \pid|Add1~6_combout\ : std_logic;
SIGNAL \pid|Add3~1\ : std_logic;
SIGNAL \pid|Add3~3\ : std_logic;
SIGNAL \pid|Add3~5\ : std_logic;
SIGNAL \pid|Add3~7\ : std_logic;
SIGNAL \pid|Add3~9\ : std_logic;
SIGNAL \pid|Add3~11\ : std_logic;
SIGNAL \pid|Add3~13\ : std_logic;
SIGNAL \pid|Add3~15\ : std_logic;
SIGNAL \pid|Add3~17\ : std_logic;
SIGNAL \pid|Add3~19\ : std_logic;
SIGNAL \pid|Add3~21\ : std_logic;
SIGNAL \pid|Add3~22_combout\ : std_logic;
SIGNAL \pid|Add3~4_combout\ : std_logic;
SIGNAL \pid|Add3~8_combout\ : std_logic;
SIGNAL \pid|Add3~6_combout\ : std_logic;
SIGNAL \pid|Add3~2_combout\ : std_logic;
SIGNAL \pid|Add3~0_combout\ : std_logic;
SIGNAL \pid|Add4~1\ : std_logic;
SIGNAL \pid|Add4~3\ : std_logic;
SIGNAL \pid|Add4~4_combout\ : std_logic;
SIGNAL \pid|Add3~20_combout\ : std_logic;
SIGNAL \pid|Add3~18_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~0_combout\ : std_logic;
SIGNAL \pid|Add3~14_combout\ : std_logic;
SIGNAL \pid|Add3~10_combout\ : std_logic;
SIGNAL \pid|Add3~16_combout\ : std_logic;
SIGNAL \pid|Add3~12_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~1_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~2_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~3_combout\ : std_logic;
SIGNAL \pid|Add4~5\ : std_logic;
SIGNAL \pid|Add4~6_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~4_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~5_combout\ : std_logic;
SIGNAL \pid|Add4~2_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~6_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~9_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~10_combout\ : std_logic;
SIGNAL \pid|Add4~0_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~7_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \dezena_potencia_tmp~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~11_combout\ : std_logic;
SIGNAL \pid|percentual_potencia~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \dezena_potencia_tmp~9_combout\ : std_logic;
SIGNAL \dezena_potencia_tmp~6_combout\ : std_logic;
SIGNAL \dezena_potencia_tmp~7_combout\ : std_logic;
SIGNAL \display_dezena_potencia|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena_potencia|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena_potencia|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_potencia|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena_potencia|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena_potencia|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_potencia|out_display[6]~6_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~50_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~51_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~52_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~48_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~49_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[37]~67_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[37]~53_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[36]~54_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[36]~55_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[35]~57_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[35]~56_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \unidade_potencia_tmp~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[40]~61_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[39]~59_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[39]~62_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[38]~63_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[38]~60_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~11_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \unidade_potencia_tmp~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \unidade_potencia_tmp~2_combout\ : std_logic;
SIGNAL \unidade_potencia_tmp~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \unidade_potencia_tmp~4_combout\ : std_logic;
SIGNAL \unidade_potencia_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \display_unidade_potencia|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade_potencia|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade_potencia|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_potencia|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade_potencia|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade_potencia|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_potencia|out_display[6]~6_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL set_point : std_logic_vector(11 DOWNTO 0);
SIGNAL temperatura : std_logic_vector(11 DOWNTO 0);
SIGNAL \pid|ultima_temperatura\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \pid|percentual_potencia\ : std_logic_vector(6 DOWNTO 0);
SIGNAL dezena_set_point_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL update_display : std_logic_vector(17 DOWNTO 0);
SIGNAL dezena_temperatura_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL update_variaveis : std_logic_vector(19 DOWNTO 0);
SIGNAL unidade_set_point_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL unidade_temperatura_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL dezena_potencia_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL unidade_potencia_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL set_point_tmp : std_logic_vector(11 DOWNTO 0);
SIGNAL temperatura_tmp : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_btn_menos~input_o\ : std_logic;
SIGNAL \ALT_INV_btn_mais~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_menos~q\ : std_logic;
SIGNAL \ALT_INV_reset_mais~q\ : std_logic;
SIGNAL \divisor_50x|ALT_INV_reset_out_clk_tmp~q\ : std_logic;
SIGNAL \display_unidade_potencia|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_potencia|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_potencia|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_potencia|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_temperatura|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_temperatura|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade_set_point|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade_set_point|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena_set_point|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena_set_point|ALT_INV_out_display[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_func_select <= func_select;
ww_ativar_pid <= ativar_pid;
ww_btn_mais <= btn_mais;
ww_btn_menos <= btn_menos;
pid_ativo <= ww_pid_ativo;
dezena_set_point <= ww_dezena_set_point;
unidade_set_point <= ww_unidade_set_point;
dezena_temperatura <= ww_dezena_temperatura;
unidade_temperatura <= ww_unidade_temperatura;
dezena_potencia <= ww_dezena_potencia;
unidade_potencia <= ww_unidade_potencia;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_pid~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_pid~q\);

\divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_50x|out_clk_tmp~q\);

\clk_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHZ~input_o\);
\ALT_INV_clk_50MHZ~inputclkctrl_outclk\ <= NOT \clk_50MHZ~inputclkctrl_outclk\;
\ALT_INV_btn_menos~input_o\ <= NOT \btn_menos~input_o\;
\ALT_INV_btn_mais~input_o\ <= NOT \btn_mais~input_o\;
\ALT_INV_reset_menos~q\ <= NOT \reset_menos~q\;
\ALT_INV_reset_mais~q\ <= NOT \reset_mais~q\;
\divisor_50x|ALT_INV_reset_out_clk_tmp~q\ <= NOT \divisor_50x|reset_out_clk_tmp~q\;
\display_unidade_potencia|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade_potencia|out_display[5]~5_combout\;
\display_unidade_potencia|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade_potencia|out_display[2]~2_combout\;
\display_dezena_potencia|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena_potencia|out_display[5]~5_combout\;
\display_dezena_potencia|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena_potencia|out_display[2]~2_combout\;
\display_unidade_temperatura|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade_temperatura|out_display[5]~5_combout\;
\display_unidade_temperatura|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade_temperatura|out_display[2]~2_combout\;
\display_dezena_temperatura|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena_temperatura|out_display[5]~5_combout\;
\display_dezena_temperatura|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena_temperatura|out_display[2]~2_combout\;
\display_unidade_set_point|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade_set_point|out_display[5]~5_combout\;
\display_unidade_set_point|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade_set_point|out_display[2]~2_combout\;
\display_dezena_set_point|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena_set_point|out_display[5]~5_combout\;
\display_dezena_set_point|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena_set_point|out_display[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N20
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

-- Location: IOOBUF_X46_Y54_N2
\pid_ativo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pid_ativo~reg0_q\,
	devoe => ww_devoe,
	o => \pid_ativo~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\dezena_set_point[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_set_point|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \dezena_set_point[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\dezena_set_point[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_set_point|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \dezena_set_point[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\dezena_set_point[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_set_point|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \dezena_set_point[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\dezena_set_point[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_set_point|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \dezena_set_point[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\dezena_set_point[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_set_point|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \dezena_set_point[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\dezena_set_point[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_set_point|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \dezena_set_point[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\dezena_set_point[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_set_point|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \dezena_set_point[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\unidade_set_point[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_set_point|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \unidade_set_point[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\unidade_set_point[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_set_point|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \unidade_set_point[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\unidade_set_point[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_set_point|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \unidade_set_point[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\unidade_set_point[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_set_point|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \unidade_set_point[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\unidade_set_point[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_set_point|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \unidade_set_point[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\unidade_set_point[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_set_point|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \unidade_set_point[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\unidade_set_point[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_set_point|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \unidade_set_point[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\dezena_temperatura[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_temperatura|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \dezena_temperatura[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\dezena_temperatura[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_temperatura|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \dezena_temperatura[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\dezena_temperatura[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_temperatura|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \dezena_temperatura[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\dezena_temperatura[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_temperatura|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \dezena_temperatura[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\dezena_temperatura[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_temperatura|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \dezena_temperatura[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\dezena_temperatura[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_temperatura|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \dezena_temperatura[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\dezena_temperatura[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_temperatura|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \dezena_temperatura[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\unidade_temperatura[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_temperatura|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \unidade_temperatura[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\unidade_temperatura[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_temperatura|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \unidade_temperatura[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\unidade_temperatura[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_temperatura|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \unidade_temperatura[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\unidade_temperatura[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_temperatura|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \unidade_temperatura[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\unidade_temperatura[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_temperatura|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \unidade_temperatura[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\unidade_temperatura[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_temperatura|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \unidade_temperatura[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\unidade_temperatura[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_temperatura|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \unidade_temperatura[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\dezena_potencia[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_potencia|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \dezena_potencia[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\dezena_potencia[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_potencia|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \dezena_potencia[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\dezena_potencia[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_potencia|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \dezena_potencia[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\dezena_potencia[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_potencia|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \dezena_potencia[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\dezena_potencia[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_potencia|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \dezena_potencia[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\dezena_potencia[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_potencia|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \dezena_potencia[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\dezena_potencia[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena_potencia|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \dezena_potencia[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\unidade_potencia[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_potencia|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \unidade_potencia[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\unidade_potencia[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_potencia|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \unidade_potencia[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\unidade_potencia[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_potencia|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \unidade_potencia[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\unidade_potencia[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_potencia|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \unidade_potencia[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\unidade_potencia[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_potencia|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \unidade_potencia[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\unidade_potencia[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_potencia|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \unidade_potencia[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\unidade_potencia[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade_potencia|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \unidade_potencia[6]~output_o\);

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

-- Location: FF_X25_Y34_N21
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

-- Location: LCCOMB_X25_Y35_N6
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

-- Location: FF_X25_Y35_N7
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

-- Location: LCCOMB_X25_Y35_N8
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

-- Location: LCCOMB_X24_Y35_N6
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

-- Location: FF_X24_Y35_N7
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

-- Location: LCCOMB_X25_Y35_N10
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

-- Location: FF_X25_Y35_N11
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

-- Location: LCCOMB_X25_Y35_N12
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

-- Location: FF_X25_Y35_N13
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

-- Location: LCCOMB_X25_Y35_N14
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

-- Location: LCCOMB_X24_Y35_N14
\divisor_50x|count_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~1_combout\ = (\divisor_50x|Add0~8_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|Add0~8_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~1_combout\);

-- Location: FF_X24_Y35_N15
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

-- Location: LCCOMB_X25_Y35_N16
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

-- Location: LCCOMB_X24_Y35_N16
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

-- Location: FF_X24_Y35_N17
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

-- Location: LCCOMB_X25_Y35_N18
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

-- Location: FF_X25_Y35_N19
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

-- Location: LCCOMB_X25_Y35_N20
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

-- Location: FF_X25_Y35_N21
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

-- Location: LCCOMB_X25_Y35_N22
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

-- Location: FF_X25_Y35_N23
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

-- Location: LCCOMB_X25_Y35_N24
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

-- Location: FF_X25_Y35_N25
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

-- Location: LCCOMB_X25_Y35_N26
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

-- Location: FF_X25_Y35_N27
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

-- Location: LCCOMB_X25_Y35_N28
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

-- Location: FF_X25_Y35_N29
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

-- Location: LCCOMB_X25_Y35_N30
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

-- Location: FF_X25_Y35_N31
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

-- Location: LCCOMB_X25_Y34_N0
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

-- Location: FF_X25_Y34_N1
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

-- Location: LCCOMB_X25_Y34_N2
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

-- Location: FF_X25_Y34_N3
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

-- Location: LCCOMB_X25_Y34_N4
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

-- Location: FF_X25_Y34_N5
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

-- Location: LCCOMB_X25_Y34_N6
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

-- Location: FF_X25_Y34_N7
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

-- Location: LCCOMB_X25_Y34_N8
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

-- Location: FF_X25_Y34_N9
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

-- Location: LCCOMB_X25_Y34_N10
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

-- Location: FF_X25_Y34_N11
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

-- Location: LCCOMB_X25_Y34_N12
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

-- Location: FF_X25_Y34_N13
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

-- Location: LCCOMB_X25_Y34_N14
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

-- Location: FF_X25_Y34_N15
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

-- Location: LCCOMB_X25_Y34_N16
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

-- Location: FF_X25_Y34_N17
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

-- Location: LCCOMB_X25_Y34_N18
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

-- Location: FF_X25_Y34_N19
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

-- Location: LCCOMB_X25_Y34_N20
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

-- Location: FF_X25_Y34_N25
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

-- Location: LCCOMB_X25_Y34_N22
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

-- Location: FF_X25_Y34_N23
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

-- Location: LCCOMB_X25_Y34_N24
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

-- Location: LCCOMB_X25_Y35_N4
\divisor_50x|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~2_combout\ = (!\divisor_50x|Add0~20_combout\ & (!\divisor_50x|Add0~18_combout\ & (!\divisor_50x|Add0~16_combout\ & !\divisor_50x|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~20_combout\,
	datab => \divisor_50x|Add0~18_combout\,
	datac => \divisor_50x|Add0~16_combout\,
	datad => \divisor_50x|Add0~22_combout\,
	combout => \divisor_50x|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y35_N2
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

-- Location: LCCOMB_X25_Y35_N0
\divisor_50x|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~0_combout\ = (!\divisor_50x|Add0~0_combout\ & (\divisor_50x|Add0~2_combout\ & (!\divisor_50x|Add0~4_combout\ & !\divisor_50x|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~0_combout\,
	datab => \divisor_50x|Add0~2_combout\,
	datac => \divisor_50x|Add0~4_combout\,
	datad => \divisor_50x|Add0~6_combout\,
	combout => \divisor_50x|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y35_N12
\divisor_50x|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~3_combout\ = (!\divisor_50x|Add0~24_combout\ & (!\divisor_50x|Add0~26_combout\ & (!\divisor_50x|Add0~28_combout\ & !\divisor_50x|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~24_combout\,
	datab => \divisor_50x|Add0~26_combout\,
	datac => \divisor_50x|Add0~28_combout\,
	datad => \divisor_50x|Add0~30_combout\,
	combout => \divisor_50x|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y35_N10
\divisor_50x|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~4_combout\ = (\divisor_50x|Equal0~2_combout\ & (\divisor_50x|Equal0~1_combout\ & (\divisor_50x|Equal0~0_combout\ & \divisor_50x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Equal0~2_combout\,
	datab => \divisor_50x|Equal0~1_combout\,
	datac => \divisor_50x|Equal0~0_combout\,
	datad => \divisor_50x|Equal0~3_combout\,
	combout => \divisor_50x|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y35_N2
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

-- Location: LCCOMB_X24_Y35_N20
\divisor_50x|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~6_combout\ = (!\divisor_50x|Add0~40_combout\ & (!\divisor_50x|Add0~42_combout\ & (!\divisor_50x|Add0~32_combout\ & \divisor_50x|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~40_combout\,
	datab => \divisor_50x|Add0~42_combout\,
	datac => \divisor_50x|Add0~32_combout\,
	datad => \divisor_50x|Equal0~5_combout\,
	combout => \divisor_50x|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y35_N28
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

-- Location: LCCOMB_X24_Y35_N18
\divisor_50x|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~8_combout\ = (!\divisor_50x|Add0~46_combout\ & (!\divisor_50x|Add0~50_combout\ & (!\divisor_50x|Add0~48_combout\ & \divisor_50x|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~46_combout\,
	datab => \divisor_50x|Add0~50_combout\,
	datac => \divisor_50x|Add0~48_combout\,
	datad => \divisor_50x|Equal0~7_combout\,
	combout => \divisor_50x|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y35_N24
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

-- Location: FF_X24_Y35_N25
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

-- Location: LCCOMB_X22_Y36_N20
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

-- Location: LCCOMB_X22_Y36_N16
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

-- Location: LCCOMB_X22_Y36_N24
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

-- Location: FF_X22_Y36_N25
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

-- Location: FF_X22_Y36_N21
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

-- Location: CLKCTRL_G1
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

-- Location: IOIBUF_X51_Y54_N22
\ativar_pid~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ativar_pid,
	o => \ativar_pid~input_o\);

-- Location: FF_X51_Y50_N3
\update_variaveis[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(11));

-- Location: LCCOMB_X51_Y51_N12
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = update_variaveis(0) $ (VCC)
-- \Add5~1\ = CARRY(update_variaveis(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: FF_X51_Y51_N13
\update_variaveis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(0));

-- Location: LCCOMB_X51_Y51_N14
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (update_variaveis(1) & (!\Add5~1\)) # (!update_variaveis(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!update_variaveis(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: FF_X51_Y51_N15
\update_variaveis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(1));

-- Location: LCCOMB_X51_Y51_N16
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (update_variaveis(2) & (\Add5~3\ $ (GND))) # (!update_variaveis(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((update_variaveis(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X51_Y51_N17
\update_variaveis[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(2));

-- Location: LCCOMB_X51_Y51_N18
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (update_variaveis(3) & (!\Add5~5\)) # (!update_variaveis(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!update_variaveis(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X51_Y51_N19
\update_variaveis[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(3));

-- Location: LCCOMB_X51_Y51_N20
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (update_variaveis(4) & (\Add5~7\ $ (GND))) # (!update_variaveis(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((update_variaveis(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: FF_X51_Y51_N21
\update_variaveis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(4));

-- Location: LCCOMB_X51_Y51_N22
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (update_variaveis(5) & (!\Add5~9\)) # (!update_variaveis(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!update_variaveis(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: FF_X51_Y51_N23
\update_variaveis[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(5));

-- Location: LCCOMB_X51_Y51_N24
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (update_variaveis(6) & (\Add5~11\ $ (GND))) # (!update_variaveis(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((update_variaveis(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X51_Y51_N10
\update_variaveis~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_variaveis~3_combout\ = (!\Equal5~6_combout\ & \Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~6_combout\,
	datad => \Add5~12_combout\,
	combout => \update_variaveis~3_combout\);

-- Location: FF_X51_Y51_N11
\update_variaveis[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_variaveis~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(6));

-- Location: LCCOMB_X51_Y51_N26
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (update_variaveis(7) & (!\Add5~13\)) # (!update_variaveis(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!update_variaveis(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X51_Y51_N27
\update_variaveis[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(7));

-- Location: LCCOMB_X51_Y51_N28
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (update_variaveis(8) & (\Add5~15\ $ (GND))) # (!update_variaveis(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((update_variaveis(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X51_Y51_N29
\update_variaveis[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(8));

-- Location: LCCOMB_X51_Y51_N30
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (update_variaveis(9) & (!\Add5~17\)) # (!update_variaveis(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!update_variaveis(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X51_Y51_N4
\update_variaveis~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_variaveis~2_combout\ = (\Add5~18_combout\ & !\Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~18_combout\,
	datad => \Equal5~6_combout\,
	combout => \update_variaveis~2_combout\);

-- Location: FF_X51_Y51_N5
\update_variaveis[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_variaveis~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(9));

-- Location: LCCOMB_X51_Y50_N0
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (update_variaveis(10) & (\Add5~19\ $ (GND))) # (!update_variaveis(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((update_variaveis(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X51_Y50_N1
\update_variaveis[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(10));

-- Location: LCCOMB_X51_Y50_N2
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (update_variaveis(11) & (!\Add5~21\)) # (!update_variaveis(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!update_variaveis(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X50_Y50_N12
\Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (!\Add5~22_combout\ & (\Add5~18_combout\ & (!\Add5~20_combout\ & !\Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~22_combout\,
	datab => \Add5~18_combout\,
	datac => \Add5~20_combout\,
	datad => \Add5~16_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X51_Y50_N24
\update_variaveis~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_variaveis~0_combout\ = (!\Equal5~6_combout\ & \Add5~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~6_combout\,
	datad => \Add5~32_combout\,
	combout => \update_variaveis~0_combout\);

-- Location: FF_X51_Y50_N25
\update_variaveis[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_variaveis~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(16));

-- Location: LCCOMB_X51_Y50_N4
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (update_variaveis(12) & (\Add5~23\ $ (GND))) # (!update_variaveis(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((update_variaveis(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: FF_X51_Y50_N5
\update_variaveis[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(12));

-- Location: LCCOMB_X51_Y50_N6
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (update_variaveis(13) & (!\Add5~25\)) # (!update_variaveis(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!update_variaveis(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: FF_X51_Y50_N7
\update_variaveis[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(13));

-- Location: LCCOMB_X51_Y50_N8
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (update_variaveis(14) & (\Add5~27\ $ (GND))) # (!update_variaveis(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((update_variaveis(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X51_Y50_N30
\update_variaveis~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_variaveis~1_combout\ = (\Add5~28_combout\ & !\Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~28_combout\,
	datad => \Equal5~6_combout\,
	combout => \update_variaveis~1_combout\);

-- Location: FF_X51_Y50_N31
\update_variaveis[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_variaveis~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(14));

-- Location: LCCOMB_X51_Y50_N10
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (update_variaveis(15) & (!\Add5~29\)) # (!update_variaveis(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!update_variaveis(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: FF_X51_Y50_N11
\update_variaveis[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(15));

-- Location: LCCOMB_X51_Y50_N12
\Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (update_variaveis(16) & (\Add5~31\ $ (GND))) # (!update_variaveis(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((update_variaveis(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X51_Y50_N22
\update_variaveis~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_variaveis~5_combout\ = (!\Equal5~6_combout\ & \Add5~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~6_combout\,
	datad => \Add5~36_combout\,
	combout => \update_variaveis~5_combout\);

-- Location: FF_X51_Y50_N23
\update_variaveis[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_variaveis~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(18));

-- Location: LCCOMB_X51_Y50_N14
\Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (update_variaveis(17) & (!\Add5~33\)) # (!update_variaveis(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!update_variaveis(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_variaveis(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X51_Y50_N20
\update_variaveis~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_variaveis~4_combout\ = (\Add5~34_combout\ & !\Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~34_combout\,
	datad => \Equal5~6_combout\,
	combout => \update_variaveis~4_combout\);

-- Location: FF_X51_Y50_N21
\update_variaveis[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_variaveis~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(17));

-- Location: LCCOMB_X51_Y50_N16
\Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (update_variaveis(18) & (\Add5~35\ $ (GND))) # (!update_variaveis(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((update_variaveis(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X50_Y50_N2
\update_variaveis~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_variaveis~6_combout\ = (!\Equal5~6_combout\ & \Add5~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~6_combout\,
	datad => \Add5~38_combout\,
	combout => \update_variaveis~6_combout\);

-- Location: FF_X50_Y50_N3
\update_variaveis[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_variaveis~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_variaveis(19));

-- Location: LCCOMB_X51_Y50_N18
\Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = \Add5~37\ $ (update_variaveis(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => update_variaveis(19),
	cin => \Add5~37\,
	combout => \Add5~38_combout\);

-- Location: LCCOMB_X51_Y50_N28
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\Add5~32_combout\ & (\Add5~36_combout\ & (\Add5~34_combout\ & \Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datab => \Add5~36_combout\,
	datac => \Add5~34_combout\,
	datad => \Add5~38_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X51_Y51_N6
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!\Add5~10_combout\ & !\Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~10_combout\,
	datac => \Add5~8_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X51_Y51_N8
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\Add5~0_combout\ & (!\Add5~4_combout\ & (!\Add5~6_combout\ & !\Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Add5~4_combout\,
	datac => \Add5~6_combout\,
	datad => \Add5~2_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X51_Y51_N0
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\Equal5~2_combout\ & (!\Add5~14_combout\ & (\Equal5~1_combout\ & \Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Add5~14_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add5~12_combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X51_Y50_N26
\Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!\Add5~24_combout\ & (\Add5~28_combout\ & (!\Add5~30_combout\ & !\Add5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \Add5~28_combout\,
	datac => \Add5~30_combout\,
	datad => \Add5~26_combout\,
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X50_Y50_N14
\Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (\Equal5~4_combout\ & (\Equal5~0_combout\ & (\Equal5~3_combout\ & \Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal5~3_combout\,
	datad => \Equal5~5_combout\,
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X50_Y50_N28
\pid_ativo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid_ativo~0_combout\ = (\ativar_pid~input_o\ & \Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ativar_pid~input_o\,
	datac => \Equal5~6_combout\,
	combout => \pid_ativo~0_combout\);

-- Location: FF_X52_Y50_N9
\update_display[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(13));

-- Location: LCCOMB_X52_Y51_N14
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = update_variaveis(0) $ (VCC)
-- \Add4~1\ = CARRY(update_variaveis(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X52_Y51_N16
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (update_variaveis(1) & (!\Add4~1\)) # (!update_variaveis(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!update_variaveis(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_variaveis(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X52_Y51_N18
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (update_display(2) & (\Add4~3\ $ (GND))) # (!update_display(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((update_display(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X52_Y51_N19
\update_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(2));

-- Location: LCCOMB_X52_Y51_N20
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (update_display(3) & (!\Add4~5\)) # (!update_display(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!update_display(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X52_Y51_N21
\update_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(3));

-- Location: LCCOMB_X52_Y51_N22
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (update_display(4) & (\Add4~7\ $ (GND))) # (!update_display(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((update_display(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X52_Y51_N23
\update_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(4));

-- Location: LCCOMB_X52_Y51_N24
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (update_display(5) & (!\Add4~9\)) # (!update_display(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!update_display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: FF_X52_Y51_N25
\update_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(5));

-- Location: LCCOMB_X52_Y51_N26
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (update_display(6) & (\Add4~11\ $ (GND))) # (!update_display(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((update_display(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X52_Y51_N10
\update_display~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~0_combout\ = (\Add4~12_combout\ & (((\Equal4~4_combout\) # (!\Add4~32_combout\)) # (!\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => \Add4~32_combout\,
	datac => \Add4~12_combout\,
	datad => \Equal4~4_combout\,
	combout => \update_display~0_combout\);

-- Location: FF_X52_Y51_N11
\update_display[6]\ : dffeas
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
	q => update_display(6));

-- Location: LCCOMB_X52_Y51_N28
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (update_display(7) & (!\Add4~13\)) # (!update_display(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!update_display(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X52_Y51_N29
\update_display[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(7));

-- Location: LCCOMB_X52_Y51_N30
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (update_display(8) & (\Add4~15\ $ (GND))) # (!update_display(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((update_display(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X52_Y51_N6
\update_display~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~1_combout\ = (\Add4~16_combout\ & (((\Equal4~4_combout\) # (!\Add4~32_combout\)) # (!\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => \Add4~32_combout\,
	datac => \Add4~16_combout\,
	datad => \Equal4~4_combout\,
	combout => \update_display~1_combout\);

-- Location: FF_X52_Y51_N7
\update_display[8]\ : dffeas
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
	q => update_display(8));

-- Location: LCCOMB_X52_Y50_N0
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (update_display(9) & (!\Add4~17\)) # (!update_display(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!update_display(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: FF_X52_Y50_N1
\update_display[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(9));

-- Location: LCCOMB_X52_Y50_N2
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (update_display(10) & (\Add4~19\ $ (GND))) # (!update_display(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((update_display(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X52_Y50_N30
\update_display~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~2_combout\ = (\Add4~20_combout\ & (((\Equal4~4_combout\) # (!\Add4~32_combout\)) # (!\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => \Add4~20_combout\,
	datac => \Add4~32_combout\,
	datad => \Equal4~4_combout\,
	combout => \update_display~2_combout\);

-- Location: FF_X52_Y50_N31
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

-- Location: LCCOMB_X52_Y50_N4
\Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (update_display(11) & (!\Add4~21\)) # (!update_display(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!update_display(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X52_Y50_N24
\update_display~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~3_combout\ = (\Add4~22_combout\ & (((\Equal4~4_combout\) # (!\Add4~32_combout\)) # (!\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~22_combout\,
	datab => \Add4~34_combout\,
	datac => \Add4~32_combout\,
	datad => \Equal4~4_combout\,
	combout => \update_display~3_combout\);

-- Location: FF_X52_Y50_N25
\update_display[11]\ : dffeas
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
	q => update_display(11));

-- Location: LCCOMB_X52_Y50_N6
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (update_display(12) & (\Add4~23\ $ (GND))) # (!update_display(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((update_display(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X52_Y50_N7
\update_display[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(12));

-- Location: LCCOMB_X52_Y50_N8
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (update_display(13) & (!\Add4~25\)) # (!update_display(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!update_display(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: FF_X52_Y50_N11
\update_display[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(14));

-- Location: LCCOMB_X52_Y50_N10
\Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (update_display(14) & (\Add4~27\ $ (GND))) # (!update_display(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((update_display(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X52_Y50_N13
\update_display[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(15));

-- Location: LCCOMB_X52_Y50_N12
\Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (update_display(15) & (!\Add4~29\)) # (!update_display(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!update_display(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X52_Y50_N28
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (\Add4~26_combout\) # ((\Add4~28_combout\) # ((\Add4~24_combout\) # (\Add4~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => \Add4~28_combout\,
	datac => \Add4~24_combout\,
	datad => \Add4~30_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X52_Y50_N18
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ((\Add4~18_combout\) # ((!\Add4~20_combout\) # (!\Add4~22_combout\))) # (!\Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => \Add4~18_combout\,
	datac => \Add4~22_combout\,
	datad => \Add4~20_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X52_Y51_N8
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Add4~14_combout\) # ((\Add4~8_combout\) # ((\Add4~10_combout\) # (!\Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add4~8_combout\,
	datac => \Add4~12_combout\,
	datad => \Add4~10_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X52_Y51_N0
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Add4~6_combout\) # ((\Add4~2_combout\) # ((\Add4~0_combout\) # (\Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \Add4~2_combout\,
	datac => \Add4~0_combout\,
	datad => \Add4~4_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X52_Y51_N12
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~3_combout\) # ((\Equal4~2_combout\) # ((\Equal4~1_combout\) # (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X52_Y50_N26
\update_display~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~4_combout\ = (\Add4~32_combout\ & ((\Equal4~4_combout\) # (!\Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~34_combout\,
	datac => \Add4~32_combout\,
	datad => \Equal4~4_combout\,
	combout => \update_display~4_combout\);

-- Location: FF_X52_Y50_N27
\update_display[16]\ : dffeas
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
	q => update_display(16));

-- Location: LCCOMB_X52_Y50_N14
\Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (update_display(16) & (\Add4~31\ $ (GND))) # (!update_display(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((update_display(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X52_Y50_N20
\update_display~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~5_combout\ = (\Add4~34_combout\ & ((\Equal4~4_combout\) # (!\Add4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~34_combout\,
	datac => \Add4~32_combout\,
	datad => \Equal4~4_combout\,
	combout => \update_display~5_combout\);

-- Location: FF_X52_Y50_N21
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

-- Location: LCCOMB_X52_Y50_N16
\Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = \Add4~33\ $ (update_display(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => update_display(17),
	cin => \Add4~33\,
	combout => \Add4~34_combout\);

-- Location: LCCOMB_X52_Y50_N22
\Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (\Add4~34_combout\ & (\Add4~32_combout\ & !\Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~34_combout\,
	datac => \Add4~32_combout\,
	datad => \Equal4~4_combout\,
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X50_Y50_N8
\pid_ativo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid_ativo~1_combout\ = (\Equal4~5_combout\) # ((\ativar_pid~input_o\ & \Equal5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ativar_pid~input_o\,
	datab => \Equal5~6_combout\,
	datad => \Equal4~5_combout\,
	combout => \pid_ativo~1_combout\);

-- Location: FF_X50_Y50_N9
\pid_ativo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \pid_ativo~0_combout\,
	sload => VCC,
	ena => \pid_ativo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid_ativo~reg0_q\);

-- Location: IOIBUF_X51_Y54_N29
\func_select~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func_select,
	o => \func_select~input_o\);

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

-- Location: LCCOMB_X60_Y34_N6
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

-- Location: LCCOMB_X61_Y34_N22
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

-- Location: FF_X61_Y34_N15
reset_mais : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \rising_mais~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_mais~q\);

-- Location: FF_X61_Y34_N23
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

-- Location: LCCOMB_X60_Y34_N30
\reset_menos~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_menos~0_combout\ = (!\rising_mais~q\ & \rising_menos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rising_mais~q\,
	datad => \rising_menos~q\,
	combout => \reset_menos~0_combout\);

-- Location: FF_X60_Y34_N25
reset_menos : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \reset_menos~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_menos~q\);

-- Location: FF_X60_Y34_N7
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

-- Location: LCCOMB_X61_Y34_N28
\set_point_tmp_unsigned~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~1_combout\ = (\func_select~input_o\ & ((\rising_menos~q\) # (\rising_mais~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_select~input_o\,
	datac => \rising_menos~q\,
	datad => \rising_mais~q\,
	combout => \set_point_tmp_unsigned~1_combout\);

-- Location: LCCOMB_X59_Y34_N6
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = set_point_tmp(2) $ (GND)
-- \Add2~1\ = CARRY(!set_point_tmp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(2),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X60_Y34_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = set_point_tmp(2) $ (GND)
-- \Add0~1\ = CARRY(!set_point_tmp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X58_Y34_N20
\set_point_tmp_unsigned~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~22_combout\ = (\set_point_tmp_unsigned~1_combout\ & ((\rising_mais~q\ & ((\Add0~0_combout\))) # (!\rising_mais~q\ & (\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add0~0_combout\,
	datac => \rising_mais~q\,
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \set_point_tmp_unsigned~22_combout\);

-- Location: LCCOMB_X58_Y34_N14
\set_point_tmp_unsigned~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~23_combout\ = (\set_point_tmp_unsigned~22_combout\) # ((!\set_point_tmp_unsigned~1_combout\ & !set_point_tmp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => set_point_tmp(2),
	datad => \set_point_tmp_unsigned~22_combout\,
	combout => \set_point_tmp_unsigned~23_combout\);

-- Location: LCCOMB_X58_Y34_N0
\set_point_tmp[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp[2]~3_combout\ = !\set_point_tmp_unsigned~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_point_tmp_unsigned~23_combout\,
	combout => \set_point_tmp[2]~3_combout\);

-- Location: FF_X58_Y34_N1
\set_point_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \set_point_tmp[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(2));

-- Location: LCCOMB_X59_Y34_N8
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (set_point_tmp(3) & (\Add2~1\ & VCC)) # (!set_point_tmp(3) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!set_point_tmp(3) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(3),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X60_Y34_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (set_point_tmp(3) & (!\Add0~1\)) # (!set_point_tmp(3) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!set_point_tmp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(3),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X59_Y33_N14
\set_point_tmp_unsigned~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~20_combout\ = (\set_point_tmp_unsigned~1_combout\ & ((\rising_mais~q\ & ((\Add0~2_combout\))) # (!\rising_mais~q\ & (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datab => \Add2~2_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Add0~2_combout\,
	combout => \set_point_tmp_unsigned~20_combout\);

-- Location: LCCOMB_X60_Y32_N20
\set_point_tmp_unsigned~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~21_combout\ = (\set_point_tmp_unsigned~20_combout\) # ((set_point_tmp(3) & !\set_point_tmp_unsigned~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~20_combout\,
	datab => set_point_tmp(3),
	datac => \set_point_tmp_unsigned~1_combout\,
	combout => \set_point_tmp_unsigned~21_combout\);

-- Location: FF_X60_Y34_N13
\set_point_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point_tmp_unsigned~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(3));

-- Location: LCCOMB_X60_Y34_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (set_point_tmp(4) & (!\Add0~3\ & VCC)) # (!set_point_tmp(4) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((!set_point_tmp(4) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X59_Y34_N10
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (set_point_tmp(4) & (\Add2~3\ $ (GND))) # (!set_point_tmp(4) & ((GND) # (!\Add2~3\)))
-- \Add2~5\ = CARRY((!\Add2~3\) # (!set_point_tmp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(4),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X58_Y34_N2
\set_point_tmp_unsigned~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~18_combout\ = (\Add0~4_combout\ & ((\set_point_tmp_unsigned~10_combout\) # ((\Add2~4_combout\ & \set_point_tmp_unsigned~3_combout\)))) # (!\Add0~4_combout\ & (\Add2~4_combout\ & ((\set_point_tmp_unsigned~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add2~4_combout\,
	datac => \set_point_tmp_unsigned~10_combout\,
	datad => \set_point_tmp_unsigned~3_combout\,
	combout => \set_point_tmp_unsigned~18_combout\);

-- Location: LCCOMB_X60_Y34_N0
\set_point_tmp_unsigned~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~19_combout\ = (\set_point_tmp_unsigned~1_combout\ & ((!\set_point_tmp_unsigned~18_combout\))) # (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => set_point_tmp(4),
	datad => \set_point_tmp_unsigned~18_combout\,
	combout => \set_point_tmp_unsigned~19_combout\);

-- Location: FF_X60_Y34_N1
\set_point_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \set_point_tmp_unsigned~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(4));

-- Location: LCCOMB_X59_Y34_N12
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (set_point_tmp(5) & (\Add2~5\ & VCC)) # (!set_point_tmp(5) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!set_point_tmp(5) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(5),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X60_Y34_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (set_point_tmp(5) & (!\Add0~5\)) # (!set_point_tmp(5) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!set_point_tmp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X59_Y33_N24
\set_point_tmp_unsigned~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~16_combout\ = (\rising_mais~q\ & ((\Add0~6_combout\) # ((\Add2~6_combout\ & \set_point_tmp_unsigned~3_combout\)))) # (!\rising_mais~q\ & (\Add2~6_combout\ & ((\set_point_tmp_unsigned~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datab => \Add2~6_combout\,
	datac => \Add0~6_combout\,
	datad => \set_point_tmp_unsigned~3_combout\,
	combout => \set_point_tmp_unsigned~16_combout\);

-- Location: LCCOMB_X58_Y34_N10
\set_point_tmp_unsigned~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~17_combout\ = (\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~16_combout\)) # (!\set_point_tmp_unsigned~1_combout\ & ((set_point_tmp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~16_combout\,
	datac => set_point_tmp(5),
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \set_point_tmp_unsigned~17_combout\);

-- Location: FF_X58_Y34_N11
\set_point_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \set_point_tmp_unsigned~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(5));

-- Location: LCCOMB_X58_Y34_N28
\set_point_tmp_unsigned~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~15_combout\ = (\set_point_tmp_unsigned~1_combout\ & (!\set_point_tmp_unsigned~14_combout\)) # (!\set_point_tmp_unsigned~1_combout\ & ((set_point_tmp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~14_combout\,
	datac => set_point_tmp(6),
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \set_point_tmp_unsigned~15_combout\);

-- Location: FF_X58_Y34_N29
\set_point_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \set_point_tmp_unsigned~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(6));

-- Location: LCCOMB_X59_Y34_N14
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (set_point_tmp(6) & (\Add2~7\ $ (GND))) # (!set_point_tmp(6) & ((GND) # (!\Add2~7\)))
-- \Add2~9\ = CARRY((!\Add2~7\) # (!set_point_tmp(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(6),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X59_Y34_N16
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (set_point_tmp(7) & (\Add2~9\ & VCC)) # (!set_point_tmp(7) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!set_point_tmp(7) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X59_Y34_N18
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (set_point_tmp(8) & (\Add2~11\ $ (GND))) # (!set_point_tmp(8) & ((GND) # (!\Add2~11\)))
-- \Add2~13\ = CARRY((!\Add2~11\) # (!set_point_tmp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(8),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X60_Y32_N26
\set_point_tmp_unsigned~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~9_combout\ = (\set_point_tmp_unsigned~1_combout\ & (((\Add2~12_combout\ & !\rising_mais~q\)))) # (!\set_point_tmp_unsigned~1_combout\ & (!set_point_tmp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => set_point_tmp(8),
	datac => \Add2~12_combout\,
	datad => \rising_mais~q\,
	combout => \set_point_tmp_unsigned~9_combout\);

-- Location: LCCOMB_X60_Y34_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (set_point_tmp(6) & (!\Add0~7\ & VCC)) # (!set_point_tmp(6) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((!set_point_tmp(6) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X60_Y34_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (set_point_tmp(7) & (!\Add0~9\)) # (!set_point_tmp(7) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!set_point_tmp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X60_Y34_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (set_point_tmp(8) & (!\Add0~11\ & VCC)) # (!set_point_tmp(8) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((!set_point_tmp(8) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(8),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X60_Y32_N28
\set_point_tmp_unsigned~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~11_combout\ = (!\set_point_tmp_unsigned~9_combout\ & (((!\Add0~12_combout\) # (!\set_point_tmp_unsigned~10_combout\)) # (!\set_point_tmp_unsigned~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => \set_point_tmp_unsigned~10_combout\,
	datac => \set_point_tmp_unsigned~9_combout\,
	datad => \Add0~12_combout\,
	combout => \set_point_tmp_unsigned~11_combout\);

-- Location: FF_X60_Y34_N23
\set_point_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point_tmp_unsigned~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(8));

-- Location: LCCOMB_X59_Y34_N20
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (set_point_tmp(9) & (\Add2~13\ & VCC)) # (!set_point_tmp(9) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!set_point_tmp(9) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(9),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X61_Y34_N18
\set_point_tmp_unsigned~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~0_combout\ = (\func_select~input_o\ & \rising_mais~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_select~input_o\,
	datac => \rising_mais~q\,
	combout => \set_point_tmp_unsigned~0_combout\);

-- Location: LCCOMB_X60_Y34_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (set_point_tmp(9) & (!\Add0~13\)) # (!set_point_tmp(9) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!set_point_tmp(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(9),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X61_Y34_N8
\set_point_tmp_unsigned~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~7_combout\ = (set_point_tmp(9) & (((\set_point_tmp_unsigned~0_combout\ & \Add0~14_combout\)) # (!\set_point_tmp_unsigned~1_combout\))) # (!set_point_tmp(9) & (\set_point_tmp_unsigned~0_combout\ & (\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(9),
	datab => \set_point_tmp_unsigned~0_combout\,
	datac => \Add0~14_combout\,
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \set_point_tmp_unsigned~7_combout\);

-- Location: LCCOMB_X61_Y34_N4
\set_point_tmp_unsigned~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~8_combout\ = (\set_point_tmp_unsigned~7_combout\) # ((\Add2~14_combout\ & (\set_point_tmp_unsigned~1_combout\ & \set_point_tmp_unsigned~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => \set_point_tmp_unsigned~7_combout\,
	datad => \set_point_tmp_unsigned~3_combout\,
	combout => \set_point_tmp_unsigned~8_combout\);

-- Location: FF_X60_Y34_N31
\set_point_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point_tmp_unsigned~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(9));

-- Location: LCCOMB_X58_Y34_N6
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!set_point_tmp(5) & (set_point_tmp(6) & (!set_point_tmp(9) & set_point_tmp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(5),
	datab => set_point_tmp(6),
	datac => set_point_tmp(9),
	datad => set_point_tmp(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X60_Y32_N16
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!set_point_tmp(2) & (set_point_tmp(3) & (!set_point_tmp(8) & set_point_tmp(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(2),
	datab => set_point_tmp(3),
	datac => set_point_tmp(8),
	datad => set_point_tmp(7),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y34_N22
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (set_point_tmp(10) & ((GND) # (!\Add2~15\))) # (!set_point_tmp(10) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((set_point_tmp(10)) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(10),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X60_Y34_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (set_point_tmp(10) & (\Add0~15\ $ (GND))) # (!set_point_tmp(10) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((set_point_tmp(10) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(10),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X60_Y34_N4
\set_point_tmp_unsigned~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~5_combout\ = (\Add0~16_combout\ & ((\set_point_tmp_unsigned~0_combout\) # ((set_point_tmp(10) & !\set_point_tmp_unsigned~1_combout\)))) # (!\Add0~16_combout\ & (((set_point_tmp(10) & !\set_point_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \set_point_tmp_unsigned~0_combout\,
	datac => set_point_tmp(10),
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \set_point_tmp_unsigned~5_combout\);

-- Location: LCCOMB_X60_Y34_N8
\set_point_tmp_unsigned~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~6_combout\ = (\set_point_tmp_unsigned~5_combout\) # ((\Add2~16_combout\ & (\set_point_tmp_unsigned~1_combout\ & \set_point_tmp_unsigned~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => \set_point_tmp_unsigned~5_combout\,
	datad => \set_point_tmp_unsigned~3_combout\,
	combout => \set_point_tmp_unsigned~6_combout\);

-- Location: FF_X60_Y34_N5
\set_point_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point_tmp_unsigned~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(10));

-- Location: LCCOMB_X59_Y34_N24
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \Add2~17\ $ (!set_point_tmp(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => set_point_tmp(11),
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X60_Y34_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = set_point_tmp(11) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => set_point_tmp(11),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X59_Y34_N0
\set_point_tmp_unsigned~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~2_combout\ = (set_point_tmp(11) & (((\Add0~18_combout\ & \set_point_tmp_unsigned~0_combout\)) # (!\set_point_tmp_unsigned~1_combout\))) # (!set_point_tmp(11) & (\Add0~18_combout\ & (\set_point_tmp_unsigned~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(11),
	datab => \Add0~18_combout\,
	datac => \set_point_tmp_unsigned~0_combout\,
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \set_point_tmp_unsigned~2_combout\);

-- Location: LCCOMB_X59_Y34_N2
\set_point_tmp_unsigned~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~4_combout\ = (\set_point_tmp_unsigned~2_combout\) # ((\Add2~18_combout\ & (\set_point_tmp_unsigned~3_combout\ & \set_point_tmp_unsigned~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \set_point_tmp_unsigned~3_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \set_point_tmp_unsigned~2_combout\,
	combout => \set_point_tmp_unsigned~4_combout\);

-- Location: FF_X59_Y34_N5
\set_point_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point_tmp_unsigned~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(11));

-- Location: LCCOMB_X59_Y34_N4
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!set_point_tmp(11) & !set_point_tmp(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => set_point_tmp(11),
	datad => set_point_tmp(10),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X60_Y32_N22
\set_point_tmp_unsigned~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~10_combout\ = (\rising_mais~q\ & (((!\Equal0~1_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \rising_mais~q\,
	combout => \set_point_tmp_unsigned~10_combout\);

-- Location: LCCOMB_X60_Y32_N30
\set_point_tmp_unsigned~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~12_combout\ = (\set_point_tmp_unsigned~10_combout\ & ((\Add0~10_combout\) # ((\Add2~10_combout\ & !\rising_mais~q\)))) # (!\set_point_tmp_unsigned~10_combout\ & (\Add2~10_combout\ & ((!\rising_mais~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~10_combout\,
	datab => \Add2~10_combout\,
	datac => \Add0~10_combout\,
	datad => \rising_mais~q\,
	combout => \set_point_tmp_unsigned~12_combout\);

-- Location: LCCOMB_X59_Y34_N26
\set_point_tmp_unsigned~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~13_combout\ = (\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~12_combout\))) # (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datac => set_point_tmp(7),
	datad => \set_point_tmp_unsigned~12_combout\,
	combout => \set_point_tmp_unsigned~13_combout\);

-- Location: FF_X59_Y34_N27
\set_point_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \set_point_tmp_unsigned~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point_tmp(7));

-- Location: LCCOMB_X59_Y34_N30
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (set_point_tmp(2) & (!set_point_tmp(3) & (!set_point_tmp(7) & set_point_tmp(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(2),
	datab => set_point_tmp(3),
	datac => set_point_tmp(7),
	datad => set_point_tmp(8),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X59_Y34_N28
\set_point_tmp_unsigned~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~3_combout\ = (!\rising_mais~q\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \rising_mais~q\,
	combout => \set_point_tmp_unsigned~3_combout\);

-- Location: LCCOMB_X58_Y34_N8
\set_point_tmp_unsigned~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point_tmp_unsigned~14_combout\ = (\rising_mais~q\ & ((\Add0~8_combout\) # ((\set_point_tmp_unsigned~3_combout\ & \Add2~8_combout\)))) # (!\rising_mais~q\ & (\set_point_tmp_unsigned~3_combout\ & (\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datab => \set_point_tmp_unsigned~3_combout\,
	datac => \Add2~8_combout\,
	datad => \Add0~8_combout\,
	combout => \set_point_tmp_unsigned~14_combout\);

-- Location: LCCOMB_X60_Y32_N2
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \set_point_tmp_unsigned~8_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\set_point_tmp_unsigned~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~8_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X60_Y32_N4
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\set_point_tmp_unsigned~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\set_point_tmp_unsigned~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\set_point_tmp_unsigned~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X60_Y32_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\set_point_tmp_unsigned~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\set_point_tmp_unsigned~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\set_point_tmp_unsigned~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X60_Y32_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y32_N10
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

-- Location: LCCOMB_X61_Y32_N30
\Div0|auto_generated|divider|divider|StageOut[26]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~71_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~71_combout\);

-- Location: LCCOMB_X61_Y32_N28
\Div0|auto_generated|divider|divider|StageOut[26]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\set_point_tmp_unsigned~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X61_Y32_N20
\Div0|auto_generated|divider|divider|StageOut[25]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~73_combout\ = (!\set_point_tmp_unsigned~11_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~11_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~73_combout\);

-- Location: LCCOMB_X61_Y32_N8
\Div0|auto_generated|divider|divider|StageOut[25]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~72_combout\ = (!\set_point_tmp_unsigned~11_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~11_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~72_combout\);

-- Location: LCCOMB_X61_Y32_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~73_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~72_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~73_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~72_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X61_Y32_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~71_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~70_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~71_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~70_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~71_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~71_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X60_Y32_N0
\Div0|auto_generated|divider|divider|StageOut[28]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~67_combout\);

-- Location: LCCOMB_X61_Y32_N24
\Div0|auto_generated|divider|divider|StageOut[28]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~66_combout\ = (\set_point_tmp_unsigned~4_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_point_tmp_unsigned~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~66_combout\);

-- Location: LCCOMB_X61_Y32_N22
\Div0|auto_generated|divider|divider|StageOut[27]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X60_Y32_N24
\Div0|auto_generated|divider|divider|StageOut[27]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~68_combout\ = (\set_point_tmp_unsigned~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~68_combout\);

-- Location: LCCOMB_X61_Y32_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~68_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~68_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~68_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X61_Y32_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~67_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~66_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~66_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y32_N18
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

-- Location: LCCOMB_X61_Y32_N26
\Div0|auto_generated|divider|divider|StageOut[32]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~112_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~8_combout\))) 
-- # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \set_point_tmp_unsigned~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~112_combout\);

-- Location: LCCOMB_X61_Y32_N0
\Div0|auto_generated|divider|divider|StageOut[33]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~6_combout\))) 
-- # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \set_point_tmp_unsigned~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\);

-- Location: LCCOMB_X61_Y32_N6
\Div0|auto_generated|divider|divider|StageOut[33]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~74_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~74_combout\);

-- Location: LCCOMB_X61_Y32_N4
\Div0|auto_generated|divider|divider|StageOut[32]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\);

-- Location: LCCOMB_X61_Y32_N2
\Div0|auto_generated|divider|divider|StageOut[31]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~77_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~77_combout\);

-- Location: LCCOMB_X62_Y32_N28
\Div0|auto_generated|divider|divider|StageOut[31]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~76_combout\ = (!\set_point_tmp_unsigned~11_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~11_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~76_combout\);

-- Location: LCCOMB_X62_Y32_N22
\Div0|auto_generated|divider|divider|StageOut[30]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~90_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~12_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datab => \set_point_tmp_unsigned~12_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~90_combout\);

-- Location: LCCOMB_X62_Y32_N20
\Div0|auto_generated|divider|divider|StageOut[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~91_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~12_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datab => \set_point_tmp_unsigned~12_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~91_combout\);

-- Location: LCCOMB_X62_Y32_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[30]~90_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~91_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~90_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~90_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~91_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X62_Y32_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[31]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~76_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~77_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[31]~76_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~77_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~76_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~76_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X62_Y32_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~112_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~75_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[32]~112_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~75_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~112_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~112_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X62_Y32_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~74_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~74_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y32_N16
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

-- Location: LCCOMB_X62_Y32_N6
\Div0|auto_generated|divider|divider|StageOut[38]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~92_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~112_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[32]~112_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~92_combout\);

-- Location: LCCOMB_X62_Y32_N2
\Div0|auto_generated|divider|divider|StageOut[38]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~78_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~78_combout\);

-- Location: LCCOMB_X62_Y32_N30
\Div0|auto_generated|divider|divider|StageOut[37]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\set_point_tmp_unsigned~11_combout\)) 
-- # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~11_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\);

-- Location: LCCOMB_X62_Y32_N24
\Div0|auto_generated|divider|divider|StageOut[37]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~79_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~79_combout\);

-- Location: LCCOMB_X62_Y32_N18
\Div0|auto_generated|divider|divider|StageOut[36]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~80_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~80_combout\);

-- Location: LCCOMB_X62_Y32_N0
\Div0|auto_generated|divider|divider|StageOut[36]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~93_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~12_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datab => \set_point_tmp_unsigned~12_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~93_combout\);

-- Location: LCCOMB_X62_Y32_N26
\Div0|auto_generated|divider|divider|StageOut[35]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~14_combout\)) # (!\set_point_tmp_unsigned~1_combout\ 
-- & ((!set_point_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~14_combout\,
	datab => set_point_tmp(6),
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~94_combout\);

-- Location: LCCOMB_X62_Y32_N4
\Div0|auto_generated|divider|divider|StageOut[35]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~95_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~14_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((!set_point_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~14_combout\,
	datab => set_point_tmp(6),
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~95_combout\);

-- Location: LCCOMB_X59_Y32_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[35]~94_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~95_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~94_combout\) # (\Div0|auto_generated|divider|divider|StageOut[35]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~94_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[35]~95_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X59_Y32_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~80_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~93_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~80_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~93_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[36]~80_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~93_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~80_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X59_Y32_N22
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[37]~113_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~79_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[37]~113_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~79_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~113_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[37]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~79_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X59_Y32_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[38]~92_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[38]~78_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~92_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y32_N26
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

-- Location: LCCOMB_X58_Y32_N24
\Div0|auto_generated|divider|divider|StageOut[41]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~98_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~14_combout\)) # (!\set_point_tmp_unsigned~1_combout\ 
-- & ((!set_point_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => \set_point_tmp_unsigned~14_combout\,
	datac => set_point_tmp(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~98_combout\);

-- Location: LCCOMB_X59_Y32_N0
\Div0|auto_generated|divider|divider|StageOut[43]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~81_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~81_combout\);

-- Location: LCCOMB_X59_Y32_N16
\Div0|auto_generated|divider|divider|StageOut[43]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~96_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~113_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~96_combout\);

-- Location: LCCOMB_X59_Y32_N12
\Div0|auto_generated|divider|divider|StageOut[42]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~82_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~82_combout\);

-- Location: LCCOMB_X59_Y32_N28
\Div0|auto_generated|divider|divider|StageOut[42]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~97_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~97_combout\);

-- Location: LCCOMB_X59_Y32_N30
\Div0|auto_generated|divider|divider|StageOut[41]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~83_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~83_combout\);

-- Location: LCCOMB_X58_Y32_N14
\Div0|auto_generated|divider|divider|StageOut[40]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~16_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => set_point_tmp(5),
	datac => \set_point_tmp_unsigned~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~99_combout\);

-- Location: LCCOMB_X58_Y32_N28
\Div0|auto_generated|divider|divider|StageOut[40]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~100_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~16_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => set_point_tmp(5),
	datac => \set_point_tmp_unsigned~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~100_combout\);

-- Location: LCCOMB_X59_Y32_N2
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[40]~99_combout\) # (\Div0|auto_generated|divider|divider|StageOut[40]~100_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~99_combout\) # (\Div0|auto_generated|divider|divider|StageOut[40]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~99_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~100_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X59_Y32_N4
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[41]~83_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[41]~98_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[41]~83_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[41]~98_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[41]~83_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[41]~98_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~83_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~98_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X59_Y32_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[42]~82_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~97_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[42]~82_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~97_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~82_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~82_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~97_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X59_Y32_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[43]~81_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[43]~96_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~81_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~96_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y32_N10
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

-- Location: LCCOMB_X58_Y32_N18
\Div0|auto_generated|divider|divider|StageOut[47]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~102_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~98_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~98_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~102_combout\);

-- Location: LCCOMB_X58_Y33_N28
\Div0|auto_generated|divider|divider|StageOut[47]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\);

-- Location: LCCOMB_X58_Y33_N10
\Div0|auto_generated|divider|divider|StageOut[46]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~16_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => set_point_tmp(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \set_point_tmp_unsigned~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\);

-- Location: LCCOMB_X58_Y33_N2
\Div0|auto_generated|divider|divider|StageOut[46]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~86_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~86_combout\);

-- Location: LCCOMB_X58_Y33_N12
\Div0|auto_generated|divider|divider|StageOut[45]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~104_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~18_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((!set_point_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~18_combout\,
	datab => set_point_tmp(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~104_combout\);

-- Location: LCCOMB_X58_Y33_N14
\Div0|auto_generated|divider|divider|StageOut[45]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~105_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~18_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((!set_point_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~18_combout\,
	datab => set_point_tmp(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~105_combout\);

-- Location: LCCOMB_X58_Y33_N18
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[45]~104_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~105_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[45]~104_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~104_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~105_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X58_Y33_N20
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[46]~103_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~86_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[46]~103_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[46]~86_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[46]~103_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[46]~86_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~86_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X58_Y33_N22
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[47]~85_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[47]~85_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[47]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[47]~102_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[47]~85_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X58_Y33_N30
\Div0|auto_generated|divider|divider|StageOut[48]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~84_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~84_combout\);

-- Location: LCCOMB_X59_Y32_N14
\Div0|auto_generated|divider|divider|StageOut[48]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~101_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~97_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[42]~97_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~101_combout\);

-- Location: LCCOMB_X58_Y33_N24
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[48]~84_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[48]~101_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~84_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[48]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y33_N26
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y33_N26
\Div0|auto_generated|divider|divider|StageOut[53]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~87_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~87_combout\);

-- Location: LCCOMB_X58_Y33_N4
\Div0|auto_generated|divider|divider|StageOut[53]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~106_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[47]~102_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~106_combout\);

-- Location: LCCOMB_X58_Y33_N16
\Div0|auto_generated|divider|divider|StageOut[52]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~107_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~103_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[46]~103_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~107_combout\);

-- Location: LCCOMB_X59_Y33_N28
\Div0|auto_generated|divider|divider|StageOut[52]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~88_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~88_combout\);

-- Location: LCCOMB_X58_Y33_N0
\Div0|auto_generated|divider|divider|StageOut[51]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~89_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~89_combout\);

-- Location: LCCOMB_X58_Y33_N6
\Div0|auto_generated|divider|divider|StageOut[51]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~108_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~18_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((!set_point_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~18_combout\,
	datab => set_point_tmp(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \set_point_tmp_unsigned~1_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~108_combout\);

-- Location: LCCOMB_X59_Y33_N10
\Div0|auto_generated|divider|divider|StageOut[50]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~110_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~20_combout\) # ((set_point_tmp(3) & !\set_point_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(3),
	datab => \set_point_tmp_unsigned~20_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~110_combout\);

-- Location: LCCOMB_X59_Y33_N20
\Div0|auto_generated|divider|divider|StageOut[50]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~109_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\set_point_tmp_unsigned~20_combout\) # ((set_point_tmp(3) & !\set_point_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(3),
	datab => \set_point_tmp_unsigned~20_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~109_combout\);

-- Location: LCCOMB_X59_Y33_N0
\dezena_set_point_tmp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[0]~2_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~110_combout\) # (\Div0|auto_generated|divider|divider|StageOut[50]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~110_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~109_combout\,
	datad => VCC,
	cout => \dezena_set_point_tmp[0]~2_cout\);

-- Location: LCCOMB_X59_Y33_N2
\dezena_set_point_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[0]~4_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[51]~89_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[51]~108_combout\ & !\dezena_set_point_tmp[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~89_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~108_combout\,
	datad => VCC,
	cin => \dezena_set_point_tmp[0]~2_cout\,
	cout => \dezena_set_point_tmp[0]~4_cout\);

-- Location: LCCOMB_X59_Y33_N4
\dezena_set_point_tmp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[0]~6_cout\ = CARRY((!\dezena_set_point_tmp[0]~4_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~107_combout\) # (\Div0|auto_generated|divider|divider|StageOut[52]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~107_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~88_combout\,
	datad => VCC,
	cin => \dezena_set_point_tmp[0]~4_cout\,
	cout => \dezena_set_point_tmp[0]~6_cout\);

-- Location: LCCOMB_X59_Y33_N6
\dezena_set_point_tmp[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[0]~8_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[53]~87_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[53]~106_combout\ & !\dezena_set_point_tmp[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~87_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~106_combout\,
	datad => VCC,
	cin => \dezena_set_point_tmp[0]~6_cout\,
	cout => \dezena_set_point_tmp[0]~8_cout\);

-- Location: LCCOMB_X59_Y33_N8
\dezena_set_point_tmp[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[0]~9_combout\ = !\dezena_set_point_tmp[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dezena_set_point_tmp[0]~8_cout\,
	combout => \dezena_set_point_tmp[0]~9_combout\);

-- Location: FF_X59_Y33_N9
\dezena_set_point_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_set_point_tmp[0]~9_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_set_point_tmp(0));

-- Location: LCCOMB_X59_Y33_N22
\dezena_set_point_tmp[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[2]~12_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \dezena_set_point_tmp[2]~12_combout\);

-- Location: FF_X59_Y33_N23
\dezena_set_point_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_set_point_tmp[2]~12_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_set_point_tmp(2));

-- Location: LCCOMB_X58_Y33_N8
\dezena_set_point_tmp[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[1]~13_combout\ = !\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \dezena_set_point_tmp[1]~13_combout\);

-- Location: FF_X58_Y33_N9
\dezena_set_point_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_set_point_tmp[1]~13_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_set_point_tmp(1));

-- Location: LCCOMB_X69_Y34_N0
\dezena_set_point_tmp[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_set_point_tmp[3]~11_combout\ = !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \dezena_set_point_tmp[3]~11_combout\);

-- Location: FF_X69_Y34_N1
\dezena_set_point_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_set_point_tmp[3]~11_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_set_point_tmp(3));

-- Location: LCCOMB_X69_Y35_N12
\display_dezena_set_point|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_set_point|out_display[0]~0_combout\ = (dezena_set_point_tmp(1) & (((dezena_set_point_tmp(3))))) # (!dezena_set_point_tmp(1) & (dezena_set_point_tmp(2) $ (((dezena_set_point_tmp(0) & !dezena_set_point_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_set_point_tmp(0),
	datab => dezena_set_point_tmp(2),
	datac => dezena_set_point_tmp(1),
	datad => dezena_set_point_tmp(3),
	combout => \display_dezena_set_point|out_display[0]~0_combout\);

-- Location: LCCOMB_X69_Y35_N6
\display_dezena_set_point|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_set_point|out_display[1]~1_combout\ = (dezena_set_point_tmp(2) & ((dezena_set_point_tmp(3)) # (dezena_set_point_tmp(0) $ (dezena_set_point_tmp(1))))) # (!dezena_set_point_tmp(2) & (((dezena_set_point_tmp(1) & dezena_set_point_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_set_point_tmp(0),
	datab => dezena_set_point_tmp(2),
	datac => dezena_set_point_tmp(1),
	datad => dezena_set_point_tmp(3),
	combout => \display_dezena_set_point|out_display[1]~1_combout\);

-- Location: LCCOMB_X69_Y35_N8
\display_dezena_set_point|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_set_point|out_display[2]~2_combout\ = (dezena_set_point_tmp(2) & (((!dezena_set_point_tmp(3))))) # (!dezena_set_point_tmp(2) & (((dezena_set_point_tmp(0) & !dezena_set_point_tmp(3))) # (!dezena_set_point_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_set_point_tmp(0),
	datab => dezena_set_point_tmp(2),
	datac => dezena_set_point_tmp(1),
	datad => dezena_set_point_tmp(3),
	combout => \display_dezena_set_point|out_display[2]~2_combout\);

-- Location: LCCOMB_X69_Y35_N30
\display_dezena_set_point|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_set_point|out_display[3]~3_combout\ = (dezena_set_point_tmp(1) & ((dezena_set_point_tmp(3)) # ((dezena_set_point_tmp(0) & dezena_set_point_tmp(2))))) # (!dezena_set_point_tmp(1) & (dezena_set_point_tmp(2) $ (((dezena_set_point_tmp(0) & 
-- !dezena_set_point_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_set_point_tmp(0),
	datab => dezena_set_point_tmp(2),
	datac => dezena_set_point_tmp(1),
	datad => dezena_set_point_tmp(3),
	combout => \display_dezena_set_point|out_display[3]~3_combout\);

-- Location: LCCOMB_X69_Y35_N16
\display_dezena_set_point|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_set_point|out_display[4]~4_combout\ = (dezena_set_point_tmp(0)) # ((dezena_set_point_tmp(1) & ((dezena_set_point_tmp(3)))) # (!dezena_set_point_tmp(1) & (dezena_set_point_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_set_point_tmp(0),
	datab => dezena_set_point_tmp(2),
	datac => dezena_set_point_tmp(1),
	datad => dezena_set_point_tmp(3),
	combout => \display_dezena_set_point|out_display[4]~4_combout\);

-- Location: LCCOMB_X69_Y35_N10
\display_dezena_set_point|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_set_point|out_display[5]~5_combout\ = (dezena_set_point_tmp(0) & (!dezena_set_point_tmp(1) & (dezena_set_point_tmp(2) $ (dezena_set_point_tmp(3))))) # (!dezena_set_point_tmp(0) & ((dezena_set_point_tmp(2) & ((!dezena_set_point_tmp(3)))) # 
-- (!dezena_set_point_tmp(2) & (!dezena_set_point_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_set_point_tmp(0),
	datab => dezena_set_point_tmp(2),
	datac => dezena_set_point_tmp(1),
	datad => dezena_set_point_tmp(3),
	combout => \display_dezena_set_point|out_display[5]~5_combout\);

-- Location: LCCOMB_X69_Y35_N28
\display_dezena_set_point|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_set_point|out_display[6]~6_combout\ = (dezena_set_point_tmp(2) & ((dezena_set_point_tmp(3)) # ((dezena_set_point_tmp(0) & dezena_set_point_tmp(1))))) # (!dezena_set_point_tmp(2) & ((dezena_set_point_tmp(1) $ (!dezena_set_point_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_set_point_tmp(0),
	datab => dezena_set_point_tmp(2),
	datac => dezena_set_point_tmp(1),
	datad => dezena_set_point_tmp(3),
	combout => \display_dezena_set_point|out_display[6]~6_combout\);

-- Location: LCCOMB_X59_Y30_N4
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \set_point_tmp_unsigned~8_combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\set_point_tmp_unsigned~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~8_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X59_Y30_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\set_point_tmp_unsigned~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\set_point_tmp_unsigned~6_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\set_point_tmp_unsigned~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X59_Y30_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\set_point_tmp_unsigned~4_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\set_point_tmp_unsigned~4_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\set_point_tmp_unsigned~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X59_Y30_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X59_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X59_Y30_N14
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

-- Location: LCCOMB_X59_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[65]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~122_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~122_combout\);

-- Location: LCCOMB_X59_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[64]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~123_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~123_combout\);

-- Location: LCCOMB_X58_Y30_N16
\Mod0|auto_generated|divider|divider|StageOut[63]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~125_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~125_combout\);

-- Location: LCCOMB_X59_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[63]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~124_combout\ = (\set_point_tmp_unsigned~4_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_point_tmp_unsigned~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~124_combout\);

-- Location: LCCOMB_X60_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[62]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~126_combout\ = (\set_point_tmp_unsigned~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~126_combout\);

-- Location: LCCOMB_X60_Y30_N18
\Mod0|auto_generated|divider|divider|StageOut[62]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~127_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~127_combout\);

-- Location: LCCOMB_X58_Y30_N14
\Mod0|auto_generated|divider|divider|StageOut[61]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~129_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~129_combout\);

-- Location: LCCOMB_X60_Y30_N12
\Mod0|auto_generated|divider|divider|StageOut[61]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~128_combout\ = (\set_point_tmp_unsigned~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~128_combout\);

-- Location: LCCOMB_X60_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[60]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~130_combout\ = (!\set_point_tmp_unsigned~11_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_point_tmp_unsigned~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~130_combout\);

-- Location: LCCOMB_X60_Y30_N16
\Mod0|auto_generated|divider|divider|StageOut[60]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~131_combout\ = (!\set_point_tmp_unsigned~11_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_point_tmp_unsigned~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~131_combout\);

-- Location: LCCOMB_X59_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[60]~130_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~131_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[60]~130_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~130_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~131_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X59_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[61]~129_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[61]~128_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[61]~129_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[61]~128_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[61]~129_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[61]~128_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~129_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~128_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X59_Y30_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~127_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[62]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~127_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~126_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~127_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X59_Y30_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[63]~125_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~124_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[63]~125_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[63]~124_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[63]~125_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[63]~124_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~125_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~124_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X59_Y30_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[64]~123_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[64]~123_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[64]~123_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[64]~123_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X59_Y30_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[65]~122_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[65]~122_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[65]~122_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[65]~122_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X59_Y30_N28
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

-- Location: LCCOMB_X57_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[78]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\);

-- Location: LCCOMB_X57_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[78]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~132_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~132_combout\);

-- Location: LCCOMB_X57_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[77]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\);

-- Location: LCCOMB_X58_Y30_N12
\Mod0|auto_generated|divider|divider|StageOut[77]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~133_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~133_combout\);

-- Location: LCCOMB_X58_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[76]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~134_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~134_combout\);

-- Location: LCCOMB_X58_Y30_N8
\Mod0|auto_generated|divider|divider|StageOut[76]~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\set_point_tmp_unsigned~4_combout\)) 
-- # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\);

-- Location: LCCOMB_X60_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[75]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\set_point_tmp_unsigned~6_combout\)) 
-- # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \set_point_tmp_unsigned~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\);

-- Location: LCCOMB_X58_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[75]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~135_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~135_combout\);

-- Location: LCCOMB_X58_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[74]~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\set_point_tmp_unsigned~8_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \set_point_tmp_unsigned~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\);

-- Location: LCCOMB_X58_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[74]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~136_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~136_combout\);

-- Location: LCCOMB_X58_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[73]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~137_combout\ = (!\set_point_tmp_unsigned~11_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_point_tmp_unsigned~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~137_combout\);

-- Location: LCCOMB_X58_Y30_N18
\Mod0|auto_generated|divider|divider|StageOut[73]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~138_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~138_combout\);

-- Location: LCCOMB_X58_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[72]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~179_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~12_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datab => \set_point_tmp_unsigned~12_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~179_combout\);

-- Location: LCCOMB_X58_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[72]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~178_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~12_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datab => \set_point_tmp_unsigned~12_combout\,
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~178_combout\);

-- Location: LCCOMB_X57_Y30_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[72]~179_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[72]~178_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[72]~179_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[72]~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[72]~179_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[72]~178_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X57_Y30_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[73]~137_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[73]~138_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[73]~137_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[73]~138_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[73]~137_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[73]~138_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[73]~137_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[73]~138_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X57_Y30_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~136_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~136_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[74]~136_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X57_Y30_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[75]~135_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[75]~135_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[75]~135_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[75]~135_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X57_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[76]~134_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~134_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[76]~134_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[76]~134_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X57_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[77]~133_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[77]~133_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[77]~133_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[77]~133_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X57_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[78]~132_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[78]~132_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[78]~132_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[78]~132_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X57_Y30_N18
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

-- Location: LCCOMB_X56_Y30_N18
\Mod0|auto_generated|divider|divider|StageOut[91]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[78]~176_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\);

-- Location: LCCOMB_X56_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[91]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~139_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~139_combout\);

-- Location: LCCOMB_X57_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[90]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~140_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~140_combout\);

-- Location: LCCOMB_X56_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[90]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[77]~177_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\);

-- Location: LCCOMB_X58_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[89]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[76]~221_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\);

-- Location: LCCOMB_X57_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[89]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~141_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~141_combout\);

-- Location: LCCOMB_X60_Y30_N14
\Mod0|auto_generated|divider|divider|StageOut[88]~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[75]~222_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\);

-- Location: LCCOMB_X56_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[88]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~142_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~142_combout\);

-- Location: LCCOMB_X58_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[87]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[74]~223_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\);

-- Location: LCCOMB_X57_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[87]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~143_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~143_combout\);

-- Location: LCCOMB_X57_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[86]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~144_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~144_combout\);

-- Location: LCCOMB_X60_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[86]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (!\set_point_tmp_unsigned~11_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\);

-- Location: LCCOMB_X56_Y31_N30
\Mod0|auto_generated|divider|divider|StageOut[85]~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~12_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(7),
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => \set_point_tmp_unsigned~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\);

-- Location: LCCOMB_X57_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[85]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~145_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~145_combout\);

-- Location: LCCOMB_X56_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[84]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~186_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~14_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (!set_point_tmp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => set_point_tmp(6),
	datac => \set_point_tmp_unsigned~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~186_combout\);

-- Location: LCCOMB_X55_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[84]~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~187_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~14_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((!set_point_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~14_combout\,
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => set_point_tmp(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~187_combout\);

-- Location: LCCOMB_X56_Y30_N0
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[84]~187_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[84]~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[84]~186_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[84]~187_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X56_Y30_N2
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[85]~145_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[85]~145_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[85]~145_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[85]~145_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X56_Y30_N4
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[86]~144_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[86]~144_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[86]~144_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[86]~144_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X56_Y30_N6
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[87]~143_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[87]~143_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[87]~143_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[87]~143_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X56_Y30_N8
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[88]~142_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[88]~142_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[88]~142_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[88]~142_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X56_Y30_N10
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[89]~141_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[89]~141_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[89]~141_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[89]~141_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X56_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[90]~140_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[90]~140_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[90]~140_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[90]~140_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X56_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[91]~139_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[91]~139_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[91]~139_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~139_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X56_Y30_N16
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

-- Location: LCCOMB_X57_Y31_N10
\Mod0|auto_generated|divider|divider|StageOut[104]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~180_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\);

-- Location: LCCOMB_X56_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[104]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~146_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~146_combout\);

-- Location: LCCOMB_X57_Y31_N0
\Mod0|auto_generated|divider|divider|StageOut[103]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~147_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~147_combout\);

-- Location: LCCOMB_X57_Y31_N4
\Mod0|auto_generated|divider|divider|StageOut[103]~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[90]~181_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\);

-- Location: LCCOMB_X58_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[102]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[89]~182_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\);

-- Location: LCCOMB_X57_Y31_N2
\Mod0|auto_generated|divider|divider|StageOut[102]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~148_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~148_combout\);

-- Location: LCCOMB_X60_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[101]~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[88]~183_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\);

-- Location: LCCOMB_X57_Y31_N8
\Mod0|auto_generated|divider|divider|StageOut[101]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~149_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~149_combout\);

-- Location: LCCOMB_X56_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[100]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~150_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~150_combout\);

-- Location: LCCOMB_X58_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[100]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[87]~184_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\);

-- Location: LCCOMB_X56_Y31_N20
\Mod0|auto_generated|divider|divider|StageOut[99]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~151_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~151_combout\);

-- Location: LCCOMB_X60_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[99]~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[86]~224_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\);

-- Location: LCCOMB_X56_Y31_N14
\Mod0|auto_generated|divider|divider|StageOut[98]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[98]~152_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[98]~152_combout\);

-- Location: LCCOMB_X56_Y31_N24
\Mod0|auto_generated|divider|divider|StageOut[98]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[85]~185_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\);

-- Location: LCCOMB_X56_Y31_N16
\Mod0|auto_generated|divider|divider|StageOut[97]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[97]~153_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[97]~153_combout\);

-- Location: LCCOMB_X56_Y31_N6
\Mod0|auto_generated|divider|divider|StageOut[97]~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~14_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((!set_point_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~14_combout\,
	datab => set_point_tmp(6),
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\);

-- Location: LCCOMB_X57_Y31_N6
\Mod0|auto_generated|divider|divider|StageOut[96]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~196_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~16_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((set_point_tmp(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~16_combout\,
	datab => set_point_tmp(5),
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~196_combout\);

-- Location: LCCOMB_X56_Y31_N4
\Mod0|auto_generated|divider|divider|StageOut[96]~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~197_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~16_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (set_point_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => set_point_tmp(5),
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => \set_point_tmp_unsigned~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~197_combout\);

-- Location: LCCOMB_X57_Y31_N12
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[96]~196_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[96]~197_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[96]~196_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[96]~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[96]~196_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[96]~197_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X57_Y31_N14
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[97]~153_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[97]~153_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[97]~153_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[97]~153_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X57_Y31_N16
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[98]~152_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[98]~152_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[98]~152_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[98]~152_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X57_Y31_N18
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[99]~151_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[99]~151_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[99]~151_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[99]~151_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X57_Y31_N20
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[100]~150_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[100]~150_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[100]~150_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[100]~150_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X57_Y31_N22
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~149_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[101]~149_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[101]~149_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[101]~149_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X57_Y31_N24
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[102]~148_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[102]~148_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[102]~148_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[102]~148_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\);

-- Location: LCCOMB_X57_Y31_N26
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[103]~147_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[103]~147_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[103]~147_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[103]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\);

-- Location: LCCOMB_X57_Y31_N28
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[104]~146_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[104]~146_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[104]~146_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[104]~146_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\);

-- Location: LCCOMB_X57_Y31_N30
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X58_Y31_N16
\Mod0|auto_generated|divider|divider|StageOut[117]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~154_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~154_combout\);

-- Location: LCCOMB_X58_Y31_N20
\Mod0|auto_generated|divider|divider|StageOut[117]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[104]~188_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\);

-- Location: LCCOMB_X58_Y31_N10
\Mod0|auto_generated|divider|divider|StageOut[116]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~155_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~155_combout\);

-- Location: LCCOMB_X58_Y31_N6
\Mod0|auto_generated|divider|divider|StageOut[116]~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[103]~189_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\);

-- Location: LCCOMB_X58_Y31_N12
\Mod0|auto_generated|divider|divider|StageOut[115]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~156_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~156_combout\);

-- Location: LCCOMB_X59_Y31_N24
\Mod0|auto_generated|divider|divider|StageOut[115]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[102]~190_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\);

-- Location: LCCOMB_X58_Y31_N26
\Mod0|auto_generated|divider|divider|StageOut[114]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~157_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~157_combout\);

-- Location: LCCOMB_X58_Y31_N4
\Mod0|auto_generated|divider|divider|StageOut[114]~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[101]~191_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\);

-- Location: LCCOMB_X59_Y31_N30
\Mod0|auto_generated|divider|divider|StageOut[113]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[100]~192_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\);

-- Location: LCCOMB_X58_Y31_N28
\Mod0|auto_generated|divider|divider|StageOut[113]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~158_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~158_combout\);

-- Location: LCCOMB_X58_Y31_N14
\Mod0|auto_generated|divider|divider|StageOut[112]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~159_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~159_combout\);

-- Location: LCCOMB_X60_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[112]~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[99]~193_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\);

-- Location: LCCOMB_X56_Y31_N26
\Mod0|auto_generated|divider|divider|StageOut[111]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[98]~194_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\);

-- Location: LCCOMB_X59_Y31_N28
\Mod0|auto_generated|divider|divider|StageOut[111]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~160_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~160_combout\);

-- Location: LCCOMB_X56_Y31_N8
\Mod0|auto_generated|divider|divider|StageOut[110]~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[97]~195_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\);

-- Location: LCCOMB_X59_Y31_N0
\Mod0|auto_generated|divider|divider|StageOut[110]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~161_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~161_combout\);

-- Location: LCCOMB_X59_Y31_N26
\Mod0|auto_generated|divider|divider|StageOut[109]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~162_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~162_combout\);

-- Location: LCCOMB_X58_Y31_N30
\Mod0|auto_generated|divider|divider|StageOut[109]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~16_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((set_point_tmp(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~16_combout\,
	datab => set_point_tmp(5),
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\);

-- Location: LCCOMB_X58_Y31_N8
\Mod0|auto_generated|divider|divider|StageOut[108]~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~207_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~18_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (!set_point_tmp(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => set_point_tmp(4),
	datac => \set_point_tmp_unsigned~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~207_combout\);

-- Location: LCCOMB_X58_Y31_N22
\Mod0|auto_generated|divider|divider|StageOut[108]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~208_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\set_point_tmp_unsigned~1_combout\ & ((\set_point_tmp_unsigned~18_combout\))) # 
-- (!\set_point_tmp_unsigned~1_combout\ & (!set_point_tmp(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~1_combout\,
	datab => set_point_tmp(4),
	datac => \set_point_tmp_unsigned~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~208_combout\);

-- Location: LCCOMB_X59_Y31_N2
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[108]~207_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[108]~208_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[108]~207_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[108]~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[108]~207_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[108]~208_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X59_Y31_N4
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[109]~162_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[109]~162_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[109]~162_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[109]~162_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X59_Y31_N6
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[110]~161_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[110]~161_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[110]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[110]~161_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X59_Y31_N8
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[111]~160_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[111]~160_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[111]~160_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[111]~160_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X59_Y31_N10
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[112]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[112]~159_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[112]~159_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[112]~159_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X59_Y31_N12
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[113]~158_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[113]~158_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[113]~158_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[113]~158_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\);

-- Location: LCCOMB_X59_Y31_N14
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[114]~157_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[114]~157_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[114]~157_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[114]~157_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\);

-- Location: LCCOMB_X59_Y31_N16
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[115]~156_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[115]~156_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[115]~156_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[115]~156_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\);

-- Location: LCCOMB_X59_Y31_N18
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[116]~155_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[116]~155_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[116]~155_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[116]~155_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\);

-- Location: LCCOMB_X59_Y31_N20
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[117]~154_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[117]~154_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[117]~154_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[117]~154_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\);

-- Location: LCCOMB_X59_Y31_N22
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\);

-- Location: LCCOMB_X60_Y31_N8
\Mod0|auto_generated|divider|divider|StageOut[121]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\set_point_tmp_unsigned~1_combout\ & (\set_point_tmp_unsigned~18_combout\)) # 
-- (!\set_point_tmp_unsigned~1_combout\ & ((!set_point_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~18_combout\,
	datab => \set_point_tmp_unsigned~1_combout\,
	datac => set_point_tmp(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\);

-- Location: LCCOMB_X60_Y31_N6
\Mod0|auto_generated|divider|divider|StageOut[121]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\);

-- Location: LCCOMB_X60_Y31_N0
\Mod0|auto_generated|divider|divider|StageOut[130]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\);

-- Location: LCCOMB_X61_Y31_N26
\Mod0|auto_generated|divider|divider|StageOut[130]~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~213_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[117]~198_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~213_combout\);

-- Location: LCCOMB_X60_Y31_N26
\Mod0|auto_generated|divider|divider|StageOut[129]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\);

-- Location: LCCOMB_X58_Y31_N2
\Mod0|auto_generated|divider|divider|StageOut[129]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~214_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[116]~199_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~214_combout\);

-- Location: LCCOMB_X60_Y31_N2
\Mod0|auto_generated|divider|divider|StageOut[128]~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~215_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[115]~200_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~215_combout\);

-- Location: LCCOMB_X60_Y31_N28
\Mod0|auto_generated|divider|divider|StageOut[128]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\);

-- Location: LCCOMB_X58_Y31_N0
\Mod0|auto_generated|divider|divider|StageOut[127]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~216_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[114]~201_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~216_combout\);

-- Location: LCCOMB_X60_Y31_N22
\Mod0|auto_generated|divider|divider|StageOut[127]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\);

-- Location: LCCOMB_X60_Y31_N12
\Mod0|auto_generated|divider|divider|StageOut[126]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\);

-- Location: LCCOMB_X60_Y31_N20
\Mod0|auto_generated|divider|divider|StageOut[126]~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~217_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[113]~202_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~217_combout\);

-- Location: LCCOMB_X60_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[125]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~218_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~203_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~218_combout\);

-- Location: LCCOMB_X60_Y31_N30
\Mod0|auto_generated|divider|divider|StageOut[125]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\);

-- Location: LCCOMB_X56_Y31_N18
\Mod0|auto_generated|divider|divider|StageOut[124]~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~219_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[111]~204_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~219_combout\);

-- Location: LCCOMB_X60_Y31_N4
\Mod0|auto_generated|divider|divider|StageOut[124]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~171_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~171_combout\);

-- Location: LCCOMB_X60_Y31_N10
\Mod0|auto_generated|divider|divider|StageOut[123]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~172_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~172_combout\);

-- Location: LCCOMB_X56_Y31_N0
\Mod0|auto_generated|divider|divider|StageOut[123]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~220_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[110]~205_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~220_combout\);

-- Location: LCCOMB_X58_Y31_N24
\Mod0|auto_generated|divider|divider|StageOut[122]~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[109]~206_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\);

-- Location: LCCOMB_X60_Y31_N24
\Mod0|auto_generated|divider|divider|StageOut[122]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\);

-- Location: LCCOMB_X60_Y31_N16
\Mod0|auto_generated|divider|divider|StageOut[120]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[120]~212_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\set_point_tmp_unsigned~20_combout\) # ((set_point_tmp(3) & !\set_point_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~20_combout\,
	datab => set_point_tmp(3),
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[120]~212_combout\);

-- Location: LCCOMB_X60_Y31_N18
\Mod0|auto_generated|divider|divider|StageOut[120]~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[120]~211_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\set_point_tmp_unsigned~20_combout\) # ((set_point_tmp(3) & !\set_point_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~20_combout\,
	datab => set_point_tmp(3),
	datac => \set_point_tmp_unsigned~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[120]~211_combout\);

-- Location: LCCOMB_X61_Y31_N0
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[120]~212_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[120]~211_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[120]~212_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[120]~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[120]~212_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[120]~211_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X61_Y31_N2
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X61_Y31_N4
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X61_Y31_N6
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[123]~172_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[123]~220_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[123]~172_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[123]~220_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y31_N8
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[124]~219_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[124]~171_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[124]~219_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[124]~171_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X61_Y31_N10
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[125]~218_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[125]~218_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[125]~170_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\);

-- Location: LCCOMB_X61_Y31_N12
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[126]~217_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[126]~169_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[126]~217_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\);

-- Location: LCCOMB_X61_Y31_N14
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[127]~216_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[127]~216_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[127]~168_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\);

-- Location: LCCOMB_X61_Y31_N16
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[128]~215_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[128]~215_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\);

-- Location: LCCOMB_X61_Y31_N18
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[129]~214_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[129]~166_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[129]~214_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\);

-- Location: LCCOMB_X61_Y31_N20
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[130]~213_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[130]~165_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[130]~213_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\);

-- Location: LCCOMB_X61_Y31_N22
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\);

-- Location: LCCOMB_X61_Y31_N30
\Mod0|auto_generated|divider|divider|StageOut[134]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[134]~174_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[121]~210_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[134]~174_combout\);

-- Location: FF_X61_Y31_N31
\unidade_set_point_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[134]~174_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_set_point_tmp(2));

-- Location: FF_X58_Y34_N25
\unidade_set_point_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point_tmp_unsigned~23_combout\,
	sload => VCC,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_set_point_tmp(0));

-- Location: LCCOMB_X61_Y31_N24
\Mod0|auto_generated|divider|divider|StageOut[133]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[133]~175_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\set_point_tmp_unsigned~21_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_point_tmp_unsigned~21_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[133]~175_combout\);

-- Location: FF_X61_Y31_N25
\unidade_set_point_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[133]~175_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_set_point_tmp(1));

-- Location: LCCOMB_X61_Y31_N28
\Mod0|auto_generated|divider|divider|StageOut[135]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[135]~173_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[122]~209_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[135]~173_combout\);

-- Location: FF_X61_Y31_N29
\unidade_set_point_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[135]~173_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_set_point_tmp(3));

-- Location: LCCOMB_X58_Y34_N30
\display_unidade_set_point|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_set_point|out_display[0]~0_combout\ = (unidade_set_point_tmp(1) & (((unidade_set_point_tmp(3))))) # (!unidade_set_point_tmp(1) & (unidade_set_point_tmp(2) $ (((unidade_set_point_tmp(0) & !unidade_set_point_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_set_point_tmp(2),
	datab => unidade_set_point_tmp(0),
	datac => unidade_set_point_tmp(1),
	datad => unidade_set_point_tmp(3),
	combout => \display_unidade_set_point|out_display[0]~0_combout\);

-- Location: LCCOMB_X58_Y34_N12
\display_unidade_set_point|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_set_point|out_display[1]~1_combout\ = (unidade_set_point_tmp(2) & ((unidade_set_point_tmp(3)) # (unidade_set_point_tmp(0) $ (unidade_set_point_tmp(1))))) # (!unidade_set_point_tmp(2) & (((unidade_set_point_tmp(1) & 
-- unidade_set_point_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_set_point_tmp(2),
	datab => unidade_set_point_tmp(0),
	datac => unidade_set_point_tmp(1),
	datad => unidade_set_point_tmp(3),
	combout => \display_unidade_set_point|out_display[1]~1_combout\);

-- Location: LCCOMB_X58_Y34_N26
\display_unidade_set_point|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_set_point|out_display[2]~2_combout\ = (unidade_set_point_tmp(2) & (((!unidade_set_point_tmp(3))))) # (!unidade_set_point_tmp(2) & (((unidade_set_point_tmp(0) & !unidade_set_point_tmp(3))) # (!unidade_set_point_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_set_point_tmp(2),
	datab => unidade_set_point_tmp(0),
	datac => unidade_set_point_tmp(1),
	datad => unidade_set_point_tmp(3),
	combout => \display_unidade_set_point|out_display[2]~2_combout\);

-- Location: LCCOMB_X58_Y34_N16
\display_unidade_set_point|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_set_point|out_display[3]~3_combout\ = (unidade_set_point_tmp(1) & ((unidade_set_point_tmp(3)) # ((unidade_set_point_tmp(2) & unidade_set_point_tmp(0))))) # (!unidade_set_point_tmp(1) & (unidade_set_point_tmp(2) $ 
-- (((unidade_set_point_tmp(0) & !unidade_set_point_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_set_point_tmp(2),
	datab => unidade_set_point_tmp(0),
	datac => unidade_set_point_tmp(1),
	datad => unidade_set_point_tmp(3),
	combout => \display_unidade_set_point|out_display[3]~3_combout\);

-- Location: LCCOMB_X58_Y34_N22
\display_unidade_set_point|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_set_point|out_display[4]~4_combout\ = (unidade_set_point_tmp(0)) # ((unidade_set_point_tmp(1) & ((unidade_set_point_tmp(3)))) # (!unidade_set_point_tmp(1) & (unidade_set_point_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_set_point_tmp(2),
	datab => unidade_set_point_tmp(0),
	datac => unidade_set_point_tmp(1),
	datad => unidade_set_point_tmp(3),
	combout => \display_unidade_set_point|out_display[4]~4_combout\);

-- Location: LCCOMB_X58_Y34_N4
\display_unidade_set_point|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_set_point|out_display[5]~5_combout\ = (unidade_set_point_tmp(2) & (!unidade_set_point_tmp(3) & ((!unidade_set_point_tmp(1)) # (!unidade_set_point_tmp(0))))) # (!unidade_set_point_tmp(2) & (!unidade_set_point_tmp(1) & 
-- ((unidade_set_point_tmp(3)) # (!unidade_set_point_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_set_point_tmp(2),
	datab => unidade_set_point_tmp(0),
	datac => unidade_set_point_tmp(1),
	datad => unidade_set_point_tmp(3),
	combout => \display_unidade_set_point|out_display[5]~5_combout\);

-- Location: LCCOMB_X58_Y34_N18
\display_unidade_set_point|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_set_point|out_display[6]~6_combout\ = (unidade_set_point_tmp(2) & ((unidade_set_point_tmp(3)) # ((unidade_set_point_tmp(0) & unidade_set_point_tmp(1))))) # (!unidade_set_point_tmp(2) & ((unidade_set_point_tmp(1) $ 
-- (!unidade_set_point_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_set_point_tmp(2),
	datab => unidade_set_point_tmp(0),
	datac => unidade_set_point_tmp(1),
	datad => unidade_set_point_tmp(3),
	combout => \display_unidade_set_point|out_display[6]~6_combout\);

-- Location: LCCOMB_X61_Y34_N24
\temperatura_tmp_unsigned~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~1_combout\ = (!\func_select~input_o\ & ((\rising_menos~q\) # (\rising_mais~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_select~input_o\,
	datac => \rising_menos~q\,
	datad => \rising_mais~q\,
	combout => \temperatura_tmp_unsigned~1_combout\);

-- Location: LCCOMB_X65_Y34_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = temperatura_tmp(2) $ (VCC)
-- \Add1~1\ = CARRY(temperatura_tmp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(2),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X64_Y34_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = temperatura_tmp(2) $ (VCC)
-- \Add3~1\ = CARRY(temperatura_tmp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(2),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X64_Y34_N4
\temperatura_tmp_unsigned~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~22_combout\ = (\temperatura_tmp_unsigned~1_combout\ & ((\rising_mais~q\ & (\Add1~0_combout\)) # (!\rising_mais~q\ & ((\Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datab => \Add1~0_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Add3~0_combout\,
	combout => \temperatura_tmp_unsigned~22_combout\);

-- Location: LCCOMB_X64_Y34_N26
\temperatura_tmp_unsigned~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~23_combout\ = (\temperatura_tmp_unsigned~22_combout\) # ((!\temperatura_tmp_unsigned~1_combout\ & temperatura_tmp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~22_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => temperatura_tmp(2),
	combout => \temperatura_tmp_unsigned~23_combout\);

-- Location: FF_X65_Y34_N23
\temperatura_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(2));

-- Location: LCCOMB_X64_Y34_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (temperatura_tmp(3) & (!\Add3~1\)) # (!temperatura_tmp(3) & (\Add3~1\ & VCC))
-- \Add3~3\ = CARRY((temperatura_tmp(3) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(3),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X65_Y34_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (temperatura_tmp(3) & ((\Add1~1\) # (GND))) # (!temperatura_tmp(3) & (!\Add1~1\))
-- \Add1~3\ = CARRY((temperatura_tmp(3)) # (!\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(3),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X63_Y34_N18
\temperatura_tmp_unsigned~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~20_combout\ = (\temperatura_tmp_unsigned~1_combout\ & ((\rising_mais~q\ & ((\Add1~2_combout\))) # (!\rising_mais~q\ & (\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => \Add3~2_combout\,
	datac => \Add1~2_combout\,
	datad => \rising_mais~q\,
	combout => \temperatura_tmp_unsigned~20_combout\);

-- Location: LCCOMB_X64_Y37_N6
\temperatura_tmp_unsigned~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~21_combout\ = (!\temperatura_tmp_unsigned~20_combout\ & ((\temperatura_tmp_unsigned~1_combout\) # (temperatura_tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~20_combout\,
	datab => \temperatura_tmp_unsigned~1_combout\,
	datad => temperatura_tmp(3),
	combout => \temperatura_tmp_unsigned~21_combout\);

-- Location: FF_X65_Y34_N3
\temperatura_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(3));

-- Location: FF_X61_Y34_N27
\temperatura_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(11));

-- Location: LCCOMB_X64_Y34_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (temperatura_tmp(4) & ((GND) # (!\Add3~3\))) # (!temperatura_tmp(4) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((temperatura_tmp(4)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(4),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X65_Y34_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (temperatura_tmp(4) & (\Add1~3\ $ (GND))) # (!temperatura_tmp(4) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((temperatura_tmp(4) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(4),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X63_Y34_N14
\temperatura_tmp_unsigned~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~18_combout\ = (\temperatura_tmp_unsigned~10_combout\ & ((\Add1~4_combout\) # ((\temperatura_tmp_unsigned~3_combout\ & \Add3~4_combout\)))) # (!\temperatura_tmp_unsigned~10_combout\ & (\temperatura_tmp_unsigned~3_combout\ & 
-- (\Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~10_combout\,
	datab => \temperatura_tmp_unsigned~3_combout\,
	datac => \Add3~4_combout\,
	datad => \Add1~4_combout\,
	combout => \temperatura_tmp_unsigned~18_combout\);

-- Location: LCCOMB_X63_Y34_N24
\temperatura_tmp_unsigned~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~19_combout\ = (\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~18_combout\)) # (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datac => \temperatura_tmp_unsigned~18_combout\,
	datad => temperatura_tmp(4),
	combout => \temperatura_tmp_unsigned~19_combout\);

-- Location: FF_X65_Y34_N15
\temperatura_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(4));

-- Location: LCCOMB_X64_Y34_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (temperatura_tmp(5) & (!\Add3~5\)) # (!temperatura_tmp(5) & (\Add3~5\ & VCC))
-- \Add3~7\ = CARRY((temperatura_tmp(5) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(5),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X65_Y34_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (temperatura_tmp(5) & ((\Add1~5\) # (GND))) # (!temperatura_tmp(5) & (!\Add1~5\))
-- \Add1~7\ = CARRY((temperatura_tmp(5)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(5),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X63_Y34_N12
\temperatura_tmp_unsigned~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~16_combout\ = (\rising_mais~q\ & ((\Add1~6_combout\) # ((\temperatura_tmp_unsigned~3_combout\ & \Add3~6_combout\)))) # (!\rising_mais~q\ & (\temperatura_tmp_unsigned~3_combout\ & (\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datab => \temperatura_tmp_unsigned~3_combout\,
	datac => \Add3~6_combout\,
	datad => \Add1~6_combout\,
	combout => \temperatura_tmp_unsigned~16_combout\);

-- Location: LCCOMB_X65_Y34_N24
\temperatura_tmp_unsigned~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~17_combout\ = (\temperatura_tmp_unsigned~1_combout\ & ((!\temperatura_tmp_unsigned~16_combout\))) # (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datac => temperatura_tmp(5),
	datad => \temperatura_tmp_unsigned~16_combout\,
	combout => \temperatura_tmp_unsigned~17_combout\);

-- Location: FF_X65_Y34_N25
\temperatura_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura_tmp_unsigned~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(5));

-- Location: LCCOMB_X64_Y34_N14
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (temperatura_tmp(6) & ((GND) # (!\Add3~7\))) # (!temperatura_tmp(6) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((temperatura_tmp(6)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(6),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X65_Y34_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (temperatura_tmp(6) & (\Add1~7\ $ (GND))) # (!temperatura_tmp(6) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((temperatura_tmp(6) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(6),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X60_Y34_N2
\temperatura_tmp_unsigned~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~14_combout\ = (\Add3~8_combout\ & ((\temperatura_tmp_unsigned~3_combout\) # ((\Add1~8_combout\ & \rising_mais~q\)))) # (!\Add3~8_combout\ & (((\Add1~8_combout\ & \rising_mais~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \temperatura_tmp_unsigned~3_combout\,
	datac => \Add1~8_combout\,
	datad => \rising_mais~q\,
	combout => \temperatura_tmp_unsigned~14_combout\);

-- Location: LCCOMB_X65_Y34_N30
\temperatura_tmp_unsigned~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~15_combout\ = (\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~14_combout\))) # (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datac => temperatura_tmp(6),
	datad => \temperatura_tmp_unsigned~14_combout\,
	combout => \temperatura_tmp_unsigned~15_combout\);

-- Location: FF_X65_Y34_N31
\temperatura_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura_tmp_unsigned~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(6));

-- Location: LCCOMB_X65_Y34_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (temperatura_tmp(7) & (!\Add1~9\)) # (!temperatura_tmp(7) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!temperatura_tmp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(7),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X65_Y34_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (temperatura_tmp(8) & (!\Add1~11\ & VCC)) # (!temperatura_tmp(8) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!temperatura_tmp(8) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(8),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X64_Y34_N16
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (temperatura_tmp(7) & (\Add3~9\ & VCC)) # (!temperatura_tmp(7) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!temperatura_tmp(7) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(7),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X64_Y34_N18
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (temperatura_tmp(8) & (\Add3~11\ $ (GND))) # (!temperatura_tmp(8) & ((GND) # (!\Add3~11\)))
-- \Add3~13\ = CARRY((!\Add3~11\) # (!temperatura_tmp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(8),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X64_Y34_N2
\temperatura_tmp_unsigned~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~9_combout\ = (\temperatura_tmp_unsigned~1_combout\ & (((\Add3~12_combout\ & !\rising_mais~q\)))) # (!\temperatura_tmp_unsigned~1_combout\ & (!temperatura_tmp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(8),
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \Add3~12_combout\,
	datad => \rising_mais~q\,
	combout => \temperatura_tmp_unsigned~9_combout\);

-- Location: LCCOMB_X64_Y34_N0
\temperatura_tmp_unsigned~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~11_combout\ = (!\temperatura_tmp_unsigned~9_combout\ & (((!\temperatura_tmp_unsigned~10_combout\) # (!\temperatura_tmp_unsigned~1_combout\)) # (!\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \temperatura_tmp_unsigned~10_combout\,
	datad => \temperatura_tmp_unsigned~9_combout\,
	combout => \temperatura_tmp_unsigned~11_combout\);

-- Location: FF_X65_Y34_N21
\temperatura_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(8));

-- Location: LCCOMB_X64_Y34_N20
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (temperatura_tmp(9) & (\Add3~13\ & VCC)) # (!temperatura_tmp(9) & (!\Add3~13\))
-- \Add3~15\ = CARRY((!temperatura_tmp(9) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(9),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X65_Y34_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (temperatura_tmp(9) & (!\Add1~13\)) # (!temperatura_tmp(9) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!temperatura_tmp(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(9),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X61_Y34_N26
\temperatura_tmp_unsigned~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~0_combout\ = (!\func_select~input_o\ & \rising_mais~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func_select~input_o\,
	datad => \rising_mais~q\,
	combout => \temperatura_tmp_unsigned~0_combout\);

-- Location: LCCOMB_X61_Y34_N12
\temperatura_tmp_unsigned~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~7_combout\ = (temperatura_tmp(9) & (((\Add1~14_combout\ & \temperatura_tmp_unsigned~0_combout\)) # (!\temperatura_tmp_unsigned~1_combout\))) # (!temperatura_tmp(9) & (\Add1~14_combout\ & (\temperatura_tmp_unsigned~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(9),
	datab => \Add1~14_combout\,
	datac => \temperatura_tmp_unsigned~0_combout\,
	datad => \temperatura_tmp_unsigned~1_combout\,
	combout => \temperatura_tmp_unsigned~7_combout\);

-- Location: LCCOMB_X61_Y34_N16
\temperatura_tmp_unsigned~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~8_combout\ = (\temperatura_tmp_unsigned~7_combout\) # ((\Add3~14_combout\ & (\temperatura_tmp_unsigned~1_combout\ & \temperatura_tmp_unsigned~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \temperatura_tmp_unsigned~3_combout\,
	datad => \temperatura_tmp_unsigned~7_combout\,
	combout => \temperatura_tmp_unsigned~8_combout\);

-- Location: FF_X65_Y34_N27
\temperatura_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(9));

-- Location: LCCOMB_X64_Y34_N22
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (temperatura_tmp(10) & ((GND) # (!\Add3~15\))) # (!temperatura_tmp(10) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((temperatura_tmp(10)) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(10),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X65_Y34_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (temperatura_tmp(10) & (\Add1~15\ $ (GND))) # (!temperatura_tmp(10) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((temperatura_tmp(10) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(10),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X61_Y34_N0
\temperatura_tmp_unsigned~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~5_combout\ = (\temperatura_tmp_unsigned~0_combout\ & ((\Add1~16_combout\) # ((temperatura_tmp(10) & !\temperatura_tmp_unsigned~1_combout\)))) # (!\temperatura_tmp_unsigned~0_combout\ & (temperatura_tmp(10) & 
-- ((!\temperatura_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~0_combout\,
	datab => temperatura_tmp(10),
	datac => \Add1~16_combout\,
	datad => \temperatura_tmp_unsigned~1_combout\,
	combout => \temperatura_tmp_unsigned~5_combout\);

-- Location: LCCOMB_X61_Y34_N6
\temperatura_tmp_unsigned~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~6_combout\ = (\temperatura_tmp_unsigned~5_combout\) # ((\temperatura_tmp_unsigned~3_combout\ & (\temperatura_tmp_unsigned~1_combout\ & \Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~3_combout\,
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \Add3~16_combout\,
	datad => \temperatura_tmp_unsigned~5_combout\,
	combout => \temperatura_tmp_unsigned~6_combout\);

-- Location: FF_X65_Y34_N29
\temperatura_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(10));

-- Location: LCCOMB_X61_Y34_N10
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!temperatura_tmp(11) & !temperatura_tmp(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temperatura_tmp(11),
	datad => temperatura_tmp(10),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X65_Y34_N20
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (temperatura_tmp(2) & (!temperatura_tmp(3) & (!temperatura_tmp(8) & temperatura_tmp(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(2),
	datab => temperatura_tmp(3),
	datac => temperatura_tmp(8),
	datad => temperatura_tmp(7),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X65_Y34_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!temperatura_tmp(6) & (!temperatura_tmp(4) & (!temperatura_tmp(9) & temperatura_tmp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(6),
	datab => temperatura_tmp(4),
	datac => temperatura_tmp(9),
	datad => temperatura_tmp(5),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X61_Y34_N14
\temperatura_tmp_unsigned~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~10_combout\ = (\rising_mais~q\ & (((!\Equal1~0_combout\) # (!\Equal1~2_combout\)) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~2_combout\,
	datac => \rising_mais~q\,
	datad => \Equal1~0_combout\,
	combout => \temperatura_tmp_unsigned~10_combout\);

-- Location: LCCOMB_X64_Y34_N30
\temperatura_tmp_unsigned~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~12_combout\ = (\temperatura_tmp_unsigned~10_combout\ & ((\Add1~10_combout\) # ((!\rising_mais~q\ & \Add3~10_combout\)))) # (!\temperatura_tmp_unsigned~10_combout\ & (!\rising_mais~q\ & ((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~10_combout\,
	datab => \rising_mais~q\,
	datac => \Add1~10_combout\,
	datad => \Add3~10_combout\,
	combout => \temperatura_tmp_unsigned~12_combout\);

-- Location: LCCOMB_X64_Y34_N28
\temperatura_tmp_unsigned~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~13_combout\ = (\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~12_combout\))) # (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => temperatura_tmp(7),
	datad => \temperatura_tmp_unsigned~12_combout\,
	combout => \temperatura_tmp_unsigned~13_combout\);

-- Location: FF_X64_Y34_N29
\temperatura_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura_tmp_unsigned~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura_tmp(7));

-- Location: LCCOMB_X65_Y34_N22
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (temperatura_tmp(3) & (!temperatura_tmp(7) & (!temperatura_tmp(2) & temperatura_tmp(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(3),
	datab => temperatura_tmp(7),
	datac => temperatura_tmp(2),
	datad => temperatura_tmp(8),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X61_Y34_N30
\temperatura_tmp_unsigned~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~3_combout\ = (!\rising_mais~q\ & (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \rising_mais~q\,
	datad => \Equal1~1_combout\,
	combout => \temperatura_tmp_unsigned~3_combout\);

-- Location: LCCOMB_X64_Y34_N24
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \Add3~17\ $ (!temperatura_tmp(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(11),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X65_Y34_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (temperatura_tmp(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(11),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X61_Y34_N2
\temperatura_tmp_unsigned~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~2_combout\ = (\temperatura_tmp_unsigned~0_combout\ & ((\Add1~18_combout\) # ((temperatura_tmp(11) & !\temperatura_tmp_unsigned~1_combout\)))) # (!\temperatura_tmp_unsigned~0_combout\ & (temperatura_tmp(11) & 
-- ((!\temperatura_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~0_combout\,
	datab => temperatura_tmp(11),
	datac => \Add1~18_combout\,
	datad => \temperatura_tmp_unsigned~1_combout\,
	combout => \temperatura_tmp_unsigned~2_combout\);

-- Location: LCCOMB_X61_Y34_N20
\temperatura_tmp_unsigned~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura_tmp_unsigned~4_combout\ = (\temperatura_tmp_unsigned~2_combout\) # ((\temperatura_tmp_unsigned~3_combout\ & (\Add3~18_combout\ & \temperatura_tmp_unsigned~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~3_combout\,
	datab => \Add3~18_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \temperatura_tmp_unsigned~2_combout\,
	combout => \temperatura_tmp_unsigned~4_combout\);

-- Location: LCCOMB_X66_Y34_N0
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \temperatura_tmp_unsigned~8_combout\ $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\temperatura_tmp_unsigned~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~8_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X66_Y34_N2
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\temperatura_tmp_unsigned~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\temperatura_tmp_unsigned~6_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\temperatura_tmp_unsigned~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~6_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X66_Y34_N4
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\temperatura_tmp_unsigned~4_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\temperatura_tmp_unsigned~4_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\temperatura_tmp_unsigned~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~4_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X66_Y34_N6
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y34_N8
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

-- Location: LCCOMB_X66_Y34_N30
\Div1|auto_generated|divider|divider|StageOut[28]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \temperatura_tmp_unsigned~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \temperatura_tmp_unsigned~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~66_combout\);

-- Location: LCCOMB_X66_Y34_N24
\Div1|auto_generated|divider|divider|StageOut[28]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~67_combout\);

-- Location: LCCOMB_X66_Y34_N26
\Div1|auto_generated|divider|divider|StageOut[27]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X66_Y34_N28
\Div1|auto_generated|divider|divider|StageOut[27]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~68_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \temperatura_tmp_unsigned~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \temperatura_tmp_unsigned~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~68_combout\);

-- Location: LCCOMB_X66_Y34_N12
\Div1|auto_generated|divider|divider|StageOut[26]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \temperatura_tmp_unsigned~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \temperatura_tmp_unsigned~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X66_Y34_N10
\Div1|auto_generated|divider|divider|StageOut[26]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~71_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~71_combout\);

-- Location: LCCOMB_X67_Y34_N4
\Div1|auto_generated|divider|divider|StageOut[25]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~73_combout\ = (!\temperatura_tmp_unsigned~11_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temperatura_tmp_unsigned~11_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~73_combout\);

-- Location: LCCOMB_X65_Y34_N28
\Div1|auto_generated|divider|divider|StageOut[25]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~72_combout\ = (!\temperatura_tmp_unsigned~11_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~11_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~72_combout\);

-- Location: LCCOMB_X66_Y34_N14
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~73_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~72_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~73_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~72_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X66_Y34_N16
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~71_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~71_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~71_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~71_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X66_Y34_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~68_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~68_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~68_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X66_Y34_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~66_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~67_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~67_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y34_N22
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y33_N12
\Div1|auto_generated|divider|divider|StageOut[33]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~74_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~74_combout\);

-- Location: LCCOMB_X65_Y33_N14
\Div1|auto_generated|divider|divider|StageOut[33]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~111_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\temperatura_tmp_unsigned~6_combout\)) 
-- # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~111_combout\);

-- Location: LCCOMB_X65_Y33_N0
\Div1|auto_generated|divider|divider|StageOut[32]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~75_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~75_combout\);

-- Location: LCCOMB_X65_Y33_N24
\Div1|auto_generated|divider|divider|StageOut[32]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~112_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\temperatura_tmp_unsigned~8_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \temperatura_tmp_unsigned~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~112_combout\);

-- Location: LCCOMB_X65_Y33_N26
\Div1|auto_generated|divider|divider|StageOut[31]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~76_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\temperatura_tmp_unsigned~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \temperatura_tmp_unsigned~11_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~76_combout\);

-- Location: LCCOMB_X65_Y33_N16
\Div1|auto_generated|divider|divider|StageOut[31]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\);

-- Location: LCCOMB_X65_Y33_N22
\Div1|auto_generated|divider|divider|StageOut[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~91_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~12_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~12_combout\,
	datab => temperatura_tmp(7),
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \temperatura_tmp_unsigned~1_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~91_combout\);

-- Location: LCCOMB_X65_Y33_N28
\Div1|auto_generated|divider|divider|StageOut[30]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~90_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~12_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~12_combout\,
	datab => temperatura_tmp(7),
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \temperatura_tmp_unsigned~1_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~90_combout\);

-- Location: LCCOMB_X65_Y33_N2
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[30]~91_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~90_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~91_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~91_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~90_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X65_Y33_N4
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[31]~76_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[31]~77_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~76_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[31]~77_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~76_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~77_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~76_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X65_Y33_N6
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~112_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~112_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~112_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X65_Y33_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~74_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~111_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~111_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y33_N10
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y33_N20
\Div1|auto_generated|divider|divider|StageOut[38]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~92_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~112_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~112_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~92_combout\);

-- Location: LCCOMB_X64_Y33_N28
\Div1|auto_generated|divider|divider|StageOut[38]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~78_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~78_combout\);

-- Location: LCCOMB_X64_Y33_N26
\Div1|auto_generated|divider|divider|StageOut[37]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~79_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~79_combout\);

-- Location: LCCOMB_X65_Y33_N18
\Div1|auto_generated|divider|divider|StageOut[37]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~113_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\temperatura_tmp_unsigned~11_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \temperatura_tmp_unsigned~11_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~113_combout\);

-- Location: LCCOMB_X65_Y33_N30
\Div1|auto_generated|divider|divider|StageOut[36]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~80_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~80_combout\);

-- Location: LCCOMB_X64_Y33_N14
\Div1|auto_generated|divider|divider|StageOut[36]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~93_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~12_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~12_combout\,
	datab => temperatura_tmp(7),
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \temperatura_tmp_unsigned~1_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~93_combout\);

-- Location: LCCOMB_X64_Y33_N12
\Div1|auto_generated|divider|divider|StageOut[35]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[35]~94_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~14_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => \temperatura_tmp_unsigned~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => temperatura_tmp(6),
	combout => \Div1|auto_generated|divider|divider|StageOut[35]~94_combout\);

-- Location: LCCOMB_X64_Y33_N2
\Div1|auto_generated|divider|divider|StageOut[35]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[35]~95_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~14_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => \temperatura_tmp_unsigned~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => temperatura_tmp(6),
	combout => \Div1|auto_generated|divider|divider|StageOut[35]~95_combout\);

-- Location: LCCOMB_X64_Y33_N16
\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[35]~94_combout\) # (\Div1|auto_generated|divider|divider|StageOut[35]~95_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[35]~94_combout\) # (\Div1|auto_generated|divider|divider|StageOut[35]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[35]~94_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[35]~95_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X64_Y33_N18
\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[36]~80_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[36]~93_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[36]~80_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[36]~93_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[36]~80_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[36]~93_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[36]~80_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X64_Y33_N20
\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[37]~79_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~113_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[37]~79_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~113_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[37]~79_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[37]~79_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[37]~113_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X64_Y33_N22
\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[38]~92_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[38]~78_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[38]~92_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[38]~78_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X64_Y33_N24
\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y33_N4
\Div1|auto_generated|divider|divider|StageOut[43]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~81_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~81_combout\);

-- Location: LCCOMB_X65_Y36_N8
\Div1|auto_generated|divider|divider|StageOut[43]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~96_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[37]~113_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[37]~113_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~96_combout\);

-- Location: LCCOMB_X65_Y36_N28
\Div1|auto_generated|divider|divider|StageOut[42]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~82_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~82_combout\);

-- Location: LCCOMB_X65_Y36_N20
\Div1|auto_generated|divider|divider|StageOut[42]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~97_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~97_combout\);

-- Location: LCCOMB_X65_Y36_N22
\Div1|auto_generated|divider|divider|StageOut[41]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[41]~98_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~14_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(6),
	datab => \temperatura_tmp_unsigned~14_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[41]~98_combout\);

-- Location: LCCOMB_X65_Y36_N2
\Div1|auto_generated|divider|divider|StageOut[41]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[41]~83_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[41]~83_combout\);

-- Location: LCCOMB_X65_Y36_N30
\Div1|auto_generated|divider|divider|StageOut[40]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~100_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~16_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (!temperatura_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(5),
	datab => \temperatura_tmp_unsigned~16_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~100_combout\);

-- Location: LCCOMB_X65_Y36_N24
\Div1|auto_generated|divider|divider|StageOut[40]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~99_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~16_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (!temperatura_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(5),
	datab => \temperatura_tmp_unsigned~16_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~99_combout\);

-- Location: LCCOMB_X65_Y36_N10
\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[40]~100_combout\) # (\Div1|auto_generated|divider|divider|StageOut[40]~99_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[40]~100_combout\) # (\Div1|auto_generated|divider|divider|StageOut[40]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[40]~100_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[40]~99_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X65_Y36_N12
\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[41]~98_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[41]~83_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[41]~98_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[41]~83_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[41]~98_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[41]~83_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[41]~98_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[41]~83_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X65_Y36_N14
\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[42]~82_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[42]~97_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[42]~82_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[42]~97_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[42]~82_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[42]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[42]~82_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[42]~97_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X65_Y36_N16
\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[43]~81_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[43]~96_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[43]~81_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[43]~96_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y36_N18
\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X66_Y37_N26
\dezena_temperatura_tmp[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[2]~12_combout\ = !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \dezena_temperatura_tmp[2]~12_combout\);

-- Location: FF_X66_Y37_N27
\dezena_temperatura_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_temperatura_tmp[2]~12_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_temperatura_tmp(2));

-- Location: LCCOMB_X65_Y36_N4
\Div1|auto_generated|divider|divider|StageOut[48]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~84_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~84_combout\);

-- Location: LCCOMB_X65_Y36_N0
\Div1|auto_generated|divider|divider|StageOut[48]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~101_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[42]~97_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[42]~97_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~101_combout\);

-- Location: LCCOMB_X65_Y36_N6
\Div1|auto_generated|divider|divider|StageOut[47]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[47]~102_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[41]~98_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[41]~98_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[47]~102_combout\);

-- Location: LCCOMB_X66_Y37_N28
\Div1|auto_generated|divider|divider|StageOut[47]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[47]~85_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[47]~85_combout\);

-- Location: LCCOMB_X66_Y37_N30
\Div1|auto_generated|divider|divider|StageOut[46]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~103_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~16_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (!temperatura_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(5),
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \temperatura_tmp_unsigned~16_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~103_combout\);

-- Location: LCCOMB_X65_Y36_N26
\Div1|auto_generated|divider|divider|StageOut[46]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~86_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~86_combout\);

-- Location: LCCOMB_X66_Y37_N20
\Div1|auto_generated|divider|divider|StageOut[45]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~104_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~18_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~18_combout\,
	datab => temperatura_tmp(4),
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~104_combout\);

-- Location: LCCOMB_X66_Y37_N22
\Div1|auto_generated|divider|divider|StageOut[45]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~105_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~18_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~18_combout\,
	datab => temperatura_tmp(4),
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~105_combout\);

-- Location: LCCOMB_X65_Y37_N4
\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[45]~104_combout\) # (\Div1|auto_generated|divider|divider|StageOut[45]~105_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[45]~104_combout\) # (\Div1|auto_generated|divider|divider|StageOut[45]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[45]~104_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[45]~105_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X65_Y37_N6
\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[46]~103_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[46]~86_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[46]~103_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[46]~86_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[46]~103_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[46]~86_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[46]~103_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[46]~86_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X65_Y37_N8
\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[47]~85_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[47]~85_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[47]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[47]~102_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[47]~85_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X65_Y37_N10
\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[48]~84_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[48]~101_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[48]~84_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[48]~101_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y37_N12
\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X66_Y37_N16
\dezena_temperatura_tmp[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[1]~13_combout\ = !\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \dezena_temperatura_tmp[1]~13_combout\);

-- Location: FF_X66_Y37_N17
\dezena_temperatura_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_temperatura_tmp[1]~13_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_temperatura_tmp(1));

-- Location: LCCOMB_X65_Y37_N0
\Div1|auto_generated|divider|divider|StageOut[53]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~87_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~87_combout\);

-- Location: LCCOMB_X65_Y37_N16
\Div1|auto_generated|divider|divider|StageOut[53]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~106_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[47]~102_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[47]~102_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~106_combout\);

-- Location: LCCOMB_X66_Y37_N4
\Div1|auto_generated|divider|divider|StageOut[52]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~107_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[46]~103_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[46]~103_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~107_combout\);

-- Location: LCCOMB_X65_Y37_N2
\Div1|auto_generated|divider|divider|StageOut[52]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~88_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~88_combout\);

-- Location: LCCOMB_X65_Y37_N30
\Div1|auto_generated|divider|divider|StageOut[51]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~108_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~18_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(4),
	datab => \temperatura_tmp_unsigned~18_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~108_combout\);

-- Location: LCCOMB_X65_Y37_N14
\Div1|auto_generated|divider|divider|StageOut[51]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~89_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~89_combout\);

-- Location: LCCOMB_X64_Y37_N16
\Div1|auto_generated|divider|divider|StageOut[50]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~109_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~20_combout\) # ((!\temperatura_tmp_unsigned~1_combout\ & !temperatura_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~20_combout\,
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => temperatura_tmp(3),
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~109_combout\);

-- Location: LCCOMB_X65_Y37_N18
\Div1|auto_generated|divider|divider|StageOut[50]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~110_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\temperatura_tmp_unsigned~20_combout\) # ((!temperatura_tmp(3) & !\temperatura_tmp_unsigned~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(3),
	datab => \temperatura_tmp_unsigned~20_combout\,
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~110_combout\);

-- Location: LCCOMB_X65_Y37_N20
\dezena_temperatura_tmp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[0]~2_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[50]~109_combout\) # (\Div1|auto_generated|divider|divider|StageOut[50]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[50]~109_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[50]~110_combout\,
	datad => VCC,
	cout => \dezena_temperatura_tmp[0]~2_cout\);

-- Location: LCCOMB_X65_Y37_N22
\dezena_temperatura_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[0]~4_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[51]~108_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[51]~89_combout\ & !\dezena_temperatura_tmp[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[51]~108_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[51]~89_combout\,
	datad => VCC,
	cin => \dezena_temperatura_tmp[0]~2_cout\,
	cout => \dezena_temperatura_tmp[0]~4_cout\);

-- Location: LCCOMB_X65_Y37_N24
\dezena_temperatura_tmp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[0]~6_cout\ = CARRY((!\dezena_temperatura_tmp[0]~4_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[52]~107_combout\) # (\Div1|auto_generated|divider|divider|StageOut[52]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[52]~107_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[52]~88_combout\,
	datad => VCC,
	cin => \dezena_temperatura_tmp[0]~4_cout\,
	cout => \dezena_temperatura_tmp[0]~6_cout\);

-- Location: LCCOMB_X65_Y37_N26
\dezena_temperatura_tmp[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[0]~8_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[53]~87_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[53]~106_combout\ & !\dezena_temperatura_tmp[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[53]~87_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[53]~106_combout\,
	datad => VCC,
	cin => \dezena_temperatura_tmp[0]~6_cout\,
	cout => \dezena_temperatura_tmp[0]~8_cout\);

-- Location: LCCOMB_X65_Y37_N28
\dezena_temperatura_tmp[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[0]~9_combout\ = !\dezena_temperatura_tmp[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dezena_temperatura_tmp[0]~8_cout\,
	combout => \dezena_temperatura_tmp[0]~9_combout\);

-- Location: FF_X65_Y37_N29
\dezena_temperatura_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_temperatura_tmp[0]~9_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_temperatura_tmp(0));

-- Location: LCCOMB_X66_Y37_N0
\dezena_temperatura_tmp[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_temperatura_tmp[3]~11_combout\ = !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \dezena_temperatura_tmp[3]~11_combout\);

-- Location: FF_X66_Y37_N1
\dezena_temperatura_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_temperatura_tmp[3]~11_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_temperatura_tmp(3));

-- Location: LCCOMB_X66_Y37_N6
\display_dezena_temperatura|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_temperatura|out_display[0]~0_combout\ = (dezena_temperatura_tmp(1) & (((dezena_temperatura_tmp(3))))) # (!dezena_temperatura_tmp(1) & (dezena_temperatura_tmp(2) $ (((dezena_temperatura_tmp(0) & !dezena_temperatura_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_temperatura_tmp(2),
	datab => dezena_temperatura_tmp(1),
	datac => dezena_temperatura_tmp(0),
	datad => dezena_temperatura_tmp(3),
	combout => \display_dezena_temperatura|out_display[0]~0_combout\);

-- Location: LCCOMB_X66_Y37_N12
\display_dezena_temperatura|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_temperatura|out_display[1]~1_combout\ = (dezena_temperatura_tmp(2) & ((dezena_temperatura_tmp(3)) # (dezena_temperatura_tmp(1) $ (dezena_temperatura_tmp(0))))) # (!dezena_temperatura_tmp(2) & (dezena_temperatura_tmp(1) & 
-- ((dezena_temperatura_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_temperatura_tmp(2),
	datab => dezena_temperatura_tmp(1),
	datac => dezena_temperatura_tmp(0),
	datad => dezena_temperatura_tmp(3),
	combout => \display_dezena_temperatura|out_display[1]~1_combout\);

-- Location: LCCOMB_X66_Y37_N14
\display_dezena_temperatura|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_temperatura|out_display[2]~2_combout\ = (dezena_temperatura_tmp(2) & (((!dezena_temperatura_tmp(3))))) # (!dezena_temperatura_tmp(2) & (((dezena_temperatura_tmp(0) & !dezena_temperatura_tmp(3))) # (!dezena_temperatura_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_temperatura_tmp(2),
	datab => dezena_temperatura_tmp(1),
	datac => dezena_temperatura_tmp(0),
	datad => dezena_temperatura_tmp(3),
	combout => \display_dezena_temperatura|out_display[2]~2_combout\);

-- Location: LCCOMB_X66_Y37_N8
\display_dezena_temperatura|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_temperatura|out_display[3]~3_combout\ = (dezena_temperatura_tmp(1) & ((dezena_temperatura_tmp(3)) # ((dezena_temperatura_tmp(2) & dezena_temperatura_tmp(0))))) # (!dezena_temperatura_tmp(1) & (dezena_temperatura_tmp(2) $ 
-- (((dezena_temperatura_tmp(0) & !dezena_temperatura_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_temperatura_tmp(2),
	datab => dezena_temperatura_tmp(1),
	datac => dezena_temperatura_tmp(0),
	datad => dezena_temperatura_tmp(3),
	combout => \display_dezena_temperatura|out_display[3]~3_combout\);

-- Location: LCCOMB_X66_Y37_N18
\display_dezena_temperatura|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_temperatura|out_display[4]~4_combout\ = (dezena_temperatura_tmp(0)) # ((dezena_temperatura_tmp(1) & ((dezena_temperatura_tmp(3)))) # (!dezena_temperatura_tmp(1) & (dezena_temperatura_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_temperatura_tmp(2),
	datab => dezena_temperatura_tmp(1),
	datac => dezena_temperatura_tmp(0),
	datad => dezena_temperatura_tmp(3),
	combout => \display_dezena_temperatura|out_display[4]~4_combout\);

-- Location: LCCOMB_X66_Y37_N24
\display_dezena_temperatura|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_temperatura|out_display[5]~5_combout\ = (dezena_temperatura_tmp(2) & (!dezena_temperatura_tmp(3) & ((!dezena_temperatura_tmp(0)) # (!dezena_temperatura_tmp(1))))) # (!dezena_temperatura_tmp(2) & (!dezena_temperatura_tmp(1) & 
-- ((dezena_temperatura_tmp(3)) # (!dezena_temperatura_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_temperatura_tmp(2),
	datab => dezena_temperatura_tmp(1),
	datac => dezena_temperatura_tmp(0),
	datad => dezena_temperatura_tmp(3),
	combout => \display_dezena_temperatura|out_display[5]~5_combout\);

-- Location: LCCOMB_X66_Y37_N10
\display_dezena_temperatura|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_temperatura|out_display[6]~6_combout\ = (dezena_temperatura_tmp(2) & ((dezena_temperatura_tmp(3)) # ((dezena_temperatura_tmp(1) & dezena_temperatura_tmp(0))))) # (!dezena_temperatura_tmp(2) & (dezena_temperatura_tmp(1) $ 
-- (((!dezena_temperatura_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_temperatura_tmp(2),
	datab => dezena_temperatura_tmp(1),
	datac => dezena_temperatura_tmp(0),
	datad => dezena_temperatura_tmp(3),
	combout => \display_dezena_temperatura|out_display[6]~6_combout\);

-- Location: FF_X64_Y34_N11
\unidade_temperatura_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \temperatura_tmp_unsigned~23_combout\,
	sload => VCC,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_temperatura_tmp(0));

-- Location: LCCOMB_X62_Y34_N18
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \temperatura_tmp_unsigned~8_combout\ $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\temperatura_tmp_unsigned~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~8_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X62_Y34_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\temperatura_tmp_unsigned~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\temperatura_tmp_unsigned~6_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\temperatura_tmp_unsigned~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~6_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X62_Y34_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\temperatura_tmp_unsigned~4_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\temperatura_tmp_unsigned~4_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\temperatura_tmp_unsigned~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~4_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X62_Y34_N24
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X62_Y34_N26
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X62_Y34_N28
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

-- Location: LCCOMB_X62_Y34_N0
\Mod1|auto_generated|divider|divider|StageOut[65]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[65]~122_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[65]~122_combout\);

-- Location: LCCOMB_X62_Y34_N16
\Mod1|auto_generated|divider|divider|StageOut[64]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\);

-- Location: LCCOMB_X62_Y34_N30
\Mod1|auto_generated|divider|divider|StageOut[63]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[63]~124_combout\ = (\temperatura_tmp_unsigned~4_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[63]~124_combout\);

-- Location: LCCOMB_X63_Y34_N0
\Mod1|auto_generated|divider|divider|StageOut[63]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[63]~125_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[63]~125_combout\);

-- Location: LCCOMB_X63_Y34_N30
\Mod1|auto_generated|divider|divider|StageOut[62]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~126_combout\ = (\temperatura_tmp_unsigned~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temperatura_tmp_unsigned~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~126_combout\);

-- Location: LCCOMB_X63_Y34_N28
\Mod1|auto_generated|divider|divider|StageOut[62]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[62]~127_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[62]~127_combout\);

-- Location: LCCOMB_X63_Y34_N2
\Mod1|auto_generated|divider|divider|StageOut[61]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[61]~128_combout\ = (\temperatura_tmp_unsigned~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temperatura_tmp_unsigned~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[61]~128_combout\);

-- Location: LCCOMB_X63_Y34_N8
\Mod1|auto_generated|divider|divider|StageOut[61]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[61]~129_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[61]~129_combout\);

-- Location: LCCOMB_X63_Y34_N6
\Mod1|auto_generated|divider|divider|StageOut[60]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~130_combout\ = (!\temperatura_tmp_unsigned~11_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temperatura_tmp_unsigned~11_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~130_combout\);

-- Location: LCCOMB_X63_Y34_N16
\Mod1|auto_generated|divider|divider|StageOut[60]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[60]~131_combout\ = (!\temperatura_tmp_unsigned~11_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temperatura_tmp_unsigned~11_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[60]~131_combout\);

-- Location: LCCOMB_X62_Y34_N2
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[60]~130_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[60]~131_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[60]~130_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[60]~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[60]~130_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[60]~131_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X62_Y34_N4
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[61]~128_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[61]~129_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[61]~128_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[61]~129_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[61]~128_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[61]~129_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[61]~128_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[61]~129_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X62_Y34_N6
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[62]~126_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~127_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[62]~126_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~127_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[62]~126_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[62]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[62]~126_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[62]~127_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X62_Y34_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[63]~124_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[63]~125_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[63]~124_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[63]~125_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[63]~124_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[63]~125_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[63]~124_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[63]~125_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X62_Y34_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\ & ((GND) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[64]~123_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X62_Y34_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[65]~122_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[65]~122_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[65]~122_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[65]~122_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X62_Y34_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X61_Y35_N12
\Mod1|auto_generated|divider|divider|StageOut[78]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[78]~132_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[78]~132_combout\);

-- Location: LCCOMB_X61_Y35_N4
\Mod1|auto_generated|divider|divider|StageOut[78]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\);

-- Location: LCCOMB_X61_Y35_N30
\Mod1|auto_generated|divider|divider|StageOut[77]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[77]~133_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[77]~133_combout\);

-- Location: LCCOMB_X61_Y35_N2
\Mod1|auto_generated|divider|divider|StageOut[77]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\);

-- Location: LCCOMB_X63_Y35_N18
\Mod1|auto_generated|divider|divider|StageOut[76]~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\temperatura_tmp_unsigned~4_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \temperatura_tmp_unsigned~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\);

-- Location: LCCOMB_X61_Y35_N8
\Mod1|auto_generated|divider|divider|StageOut[76]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[76]~134_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[76]~134_combout\);

-- Location: LCCOMB_X61_Y35_N10
\Mod1|auto_generated|divider|divider|StageOut[75]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[75]~135_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[75]~135_combout\);

-- Location: LCCOMB_X61_Y38_N6
\Mod1|auto_generated|divider|divider|StageOut[75]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\temperatura_tmp_unsigned~6_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \temperatura_tmp_unsigned~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\);

-- Location: LCCOMB_X61_Y38_N20
\Mod1|auto_generated|divider|divider|StageOut[74]~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\temperatura_tmp_unsigned~8_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \temperatura_tmp_unsigned~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\);

-- Location: LCCOMB_X61_Y35_N0
\Mod1|auto_generated|divider|divider|StageOut[74]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[74]~136_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[74]~136_combout\);

-- Location: LCCOMB_X63_Y35_N24
\Mod1|auto_generated|divider|divider|StageOut[73]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[73]~138_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[73]~138_combout\);

-- Location: LCCOMB_X60_Y35_N24
\Mod1|auto_generated|divider|divider|StageOut[73]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[73]~137_combout\ = (!\temperatura_tmp_unsigned~11_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temperatura_tmp_unsigned~11_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[73]~137_combout\);

-- Location: LCCOMB_X60_Y35_N14
\Mod1|auto_generated|divider|divider|StageOut[72]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[72]~178_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~12_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(7),
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \temperatura_tmp_unsigned~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[72]~178_combout\);

-- Location: LCCOMB_X60_Y35_N4
\Mod1|auto_generated|divider|divider|StageOut[72]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[72]~179_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~12_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(7),
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \temperatura_tmp_unsigned~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[72]~179_combout\);

-- Location: LCCOMB_X61_Y35_N14
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[72]~178_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[72]~179_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[72]~178_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[72]~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[72]~178_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[72]~179_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X61_Y35_N16
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[73]~138_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[73]~137_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[73]~138_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[73]~137_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[73]~138_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[73]~137_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[73]~138_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[73]~137_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X61_Y35_N18
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[74]~136_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[74]~136_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[74]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[74]~136_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X61_Y35_N20
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[75]~135_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[75]~135_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[75]~135_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[75]~135_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X61_Y35_N22
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[76]~134_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[76]~134_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[76]~134_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[76]~134_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X61_Y35_N24
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[77]~133_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[77]~133_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[77]~133_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[77]~133_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X61_Y35_N26
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod1|auto_generated|divider|divider|StageOut[78]~132_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod1|auto_generated|divider|divider|StageOut[78]~132_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[78]~132_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[78]~132_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X61_Y35_N28
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X62_Y35_N12
\Mod1|auto_generated|divider|divider|StageOut[91]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[91]~139_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[91]~139_combout\);

-- Location: LCCOMB_X62_Y35_N4
\Mod1|auto_generated|divider|divider|StageOut[91]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[78]~176_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\);

-- Location: LCCOMB_X62_Y35_N10
\Mod1|auto_generated|divider|divider|StageOut[90]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[77]~177_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\);

-- Location: LCCOMB_X62_Y35_N2
\Mod1|auto_generated|divider|divider|StageOut[90]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[90]~140_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[90]~140_combout\);

-- Location: LCCOMB_X63_Y35_N4
\Mod1|auto_generated|divider|divider|StageOut[89]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[76]~221_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\);

-- Location: LCCOMB_X61_Y35_N6
\Mod1|auto_generated|divider|divider|StageOut[89]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[89]~141_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[89]~141_combout\);

-- Location: LCCOMB_X63_Y35_N2
\Mod1|auto_generated|divider|divider|StageOut[88]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[88]~142_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[88]~142_combout\);

-- Location: LCCOMB_X61_Y38_N4
\Mod1|auto_generated|divider|divider|StageOut[88]~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[75]~222_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\);

-- Location: LCCOMB_X63_Y35_N20
\Mod1|auto_generated|divider|divider|StageOut[87]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[87]~143_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[87]~143_combout\);

-- Location: LCCOMB_X61_Y38_N2
\Mod1|auto_generated|divider|divider|StageOut[87]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[74]~223_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\);

-- Location: LCCOMB_X62_Y35_N8
\Mod1|auto_generated|divider|divider|StageOut[86]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[86]~144_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[86]~144_combout\);

-- Location: LCCOMB_X63_Y35_N16
\Mod1|auto_generated|divider|divider|StageOut[86]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((!\temperatura_tmp_unsigned~11_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \temperatura_tmp_unsigned~11_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\);

-- Location: LCCOMB_X61_Y36_N8
\Mod1|auto_generated|divider|divider|StageOut[85]~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~12_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => temperatura_tmp(7),
	datac => \temperatura_tmp_unsigned~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\);

-- Location: LCCOMB_X63_Y35_N14
\Mod1|auto_generated|divider|divider|StageOut[85]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[85]~145_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[85]~145_combout\);

-- Location: LCCOMB_X63_Y35_N30
\Mod1|auto_generated|divider|divider|StageOut[84]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[84]~186_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~14_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => temperatura_tmp(6),
	datac => \temperatura_tmp_unsigned~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[84]~186_combout\);

-- Location: LCCOMB_X63_Y35_N28
\Mod1|auto_generated|divider|divider|StageOut[84]~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[84]~187_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~14_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => temperatura_tmp(6),
	datac => \temperatura_tmp_unsigned~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[84]~187_combout\);

-- Location: LCCOMB_X62_Y35_N14
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[84]~187_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[84]~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[84]~186_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[84]~187_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X62_Y35_N16
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[85]~145_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[85]~145_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[85]~145_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[85]~145_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X62_Y35_N18
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[86]~144_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[86]~144_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[86]~144_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[86]~144_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X62_Y35_N20
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[87]~143_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[87]~143_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[87]~143_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[87]~143_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X62_Y35_N22
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[88]~142_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[88]~142_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[88]~142_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[88]~142_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X62_Y35_N24
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[89]~141_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[89]~141_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[89]~141_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[89]~141_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X62_Y35_N26
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((((\Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[90]~140_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[90]~140_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[90]~140_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[90]~140_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X62_Y35_N28
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (((\Mod1|auto_generated|divider|divider|StageOut[91]~139_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\Mod1|auto_generated|divider|divider|StageOut[91]~139_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[91]~139_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[91]~139_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X62_Y35_N30
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X62_Y36_N28
\Mod1|auto_generated|divider|divider|StageOut[104]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[104]~146_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[104]~146_combout\);

-- Location: LCCOMB_X62_Y36_N24
\Mod1|auto_generated|divider|divider|StageOut[104]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[91]~180_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\);

-- Location: LCCOMB_X62_Y36_N26
\Mod1|auto_generated|divider|divider|StageOut[103]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[103]~147_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[103]~147_combout\);

-- Location: LCCOMB_X62_Y35_N0
\Mod1|auto_generated|divider|divider|StageOut[103]~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[90]~181_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\);

-- Location: LCCOMB_X62_Y35_N6
\Mod1|auto_generated|divider|divider|StageOut[102]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[102]~148_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[102]~148_combout\);

-- Location: LCCOMB_X63_Y35_N10
\Mod1|auto_generated|divider|divider|StageOut[102]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[89]~182_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\);

-- Location: LCCOMB_X61_Y38_N8
\Mod1|auto_generated|divider|divider|StageOut[101]~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[88]~183_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\);

-- Location: LCCOMB_X62_Y36_N0
\Mod1|auto_generated|divider|divider|StageOut[101]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[101]~149_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[101]~149_combout\);

-- Location: LCCOMB_X61_Y38_N18
\Mod1|auto_generated|divider|divider|StageOut[100]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[87]~184_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\);

-- Location: LCCOMB_X63_Y36_N24
\Mod1|auto_generated|divider|divider|StageOut[100]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[100]~150_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[100]~150_combout\);

-- Location: LCCOMB_X63_Y36_N6
\Mod1|auto_generated|divider|divider|StageOut[99]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[99]~151_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[99]~151_combout\);

-- Location: LCCOMB_X63_Y35_N0
\Mod1|auto_generated|divider|divider|StageOut[99]~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[86]~224_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\);

-- Location: LCCOMB_X61_Y36_N14
\Mod1|auto_generated|divider|divider|StageOut[98]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[85]~185_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\);

-- Location: LCCOMB_X61_Y36_N4
\Mod1|auto_generated|divider|divider|StageOut[98]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[98]~152_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[98]~152_combout\);

-- Location: LCCOMB_X61_Y36_N16
\Mod1|auto_generated|divider|divider|StageOut[97]~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~14_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~14_combout\,
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => temperatura_tmp(6),
	combout => \Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\);

-- Location: LCCOMB_X61_Y36_N18
\Mod1|auto_generated|divider|divider|StageOut[97]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[97]~153_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[97]~153_combout\);

-- Location: LCCOMB_X61_Y36_N0
\Mod1|auto_generated|divider|divider|StageOut[96]~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[96]~197_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~16_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (!temperatura_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(5),
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \temperatura_tmp_unsigned~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[96]~197_combout\);

-- Location: LCCOMB_X61_Y36_N6
\Mod1|auto_generated|divider|divider|StageOut[96]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[96]~196_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~16_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (!temperatura_tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(5),
	datab => \temperatura_tmp_unsigned~1_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \temperatura_tmp_unsigned~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[96]~196_combout\);

-- Location: LCCOMB_X62_Y36_N4
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[96]~197_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[96]~196_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[96]~197_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[96]~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[96]~197_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[96]~196_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X62_Y36_N6
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[97]~153_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[97]~153_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[97]~153_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[97]~153_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X62_Y36_N8
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[98]~152_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[98]~152_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[98]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[98]~152_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X62_Y36_N10
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[99]~151_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[99]~151_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[99]~151_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[99]~151_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X62_Y36_N12
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[100]~150_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[100]~150_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[100]~150_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[100]~150_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X62_Y36_N14
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[101]~149_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[101]~149_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[101]~149_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[101]~149_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X62_Y36_N16
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((((\Mod1|auto_generated|divider|divider|StageOut[102]~148_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((\Mod1|auto_generated|divider|divider|StageOut[102]~148_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[102]~148_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[102]~148_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\);

-- Location: LCCOMB_X62_Y36_N18
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (((\Mod1|auto_generated|divider|divider|StageOut[103]~147_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (!\Mod1|auto_generated|divider|divider|StageOut[103]~147_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[103]~147_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[103]~147_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\);

-- Location: LCCOMB_X62_Y36_N20
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((((\Mod1|auto_generated|divider|divider|StageOut[104]~146_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((\Mod1|auto_generated|divider|divider|StageOut[104]~146_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[104]~146_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[104]~146_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\);

-- Location: LCCOMB_X62_Y36_N22
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X62_Y36_N30
\Mod1|auto_generated|divider|divider|StageOut[117]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[104]~188_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\);

-- Location: LCCOMB_X62_Y38_N4
\Mod1|auto_generated|divider|divider|StageOut[117]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[117]~154_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[117]~154_combout\);

-- Location: LCCOMB_X62_Y38_N6
\Mod1|auto_generated|divider|divider|StageOut[116]~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[103]~189_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\);

-- Location: LCCOMB_X62_Y38_N2
\Mod1|auto_generated|divider|divider|StageOut[116]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[116]~155_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[116]~155_combout\);

-- Location: LCCOMB_X63_Y35_N6
\Mod1|auto_generated|divider|divider|StageOut[115]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[102]~190_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\);

-- Location: LCCOMB_X62_Y36_N2
\Mod1|auto_generated|divider|divider|StageOut[115]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[115]~156_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[115]~156_combout\);

-- Location: LCCOMB_X61_Y38_N0
\Mod1|auto_generated|divider|divider|StageOut[114]~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[101]~191_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\);

-- Location: LCCOMB_X62_Y38_N0
\Mod1|auto_generated|divider|divider|StageOut[114]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[114]~157_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[114]~157_combout\);

-- Location: LCCOMB_X61_Y38_N26
\Mod1|auto_generated|divider|divider|StageOut[113]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[100]~192_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\);

-- Location: LCCOMB_X61_Y38_N28
\Mod1|auto_generated|divider|divider|StageOut[113]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[113]~158_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[113]~158_combout\);

-- Location: LCCOMB_X61_Y38_N10
\Mod1|auto_generated|divider|divider|StageOut[112]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[112]~159_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[112]~159_combout\);

-- Location: LCCOMB_X63_Y35_N8
\Mod1|auto_generated|divider|divider|StageOut[112]~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[99]~193_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\);

-- Location: LCCOMB_X61_Y38_N12
\Mod1|auto_generated|divider|divider|StageOut[111]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[111]~160_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[111]~160_combout\);

-- Location: LCCOMB_X61_Y36_N22
\Mod1|auto_generated|divider|divider|StageOut[111]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[98]~194_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\);

-- Location: LCCOMB_X61_Y38_N14
\Mod1|auto_generated|divider|divider|StageOut[110]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[110]~161_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[110]~161_combout\);

-- Location: LCCOMB_X61_Y36_N28
\Mod1|auto_generated|divider|divider|StageOut[110]~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[97]~195_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\);

-- Location: LCCOMB_X62_Y38_N30
\Mod1|auto_generated|divider|divider|StageOut[109]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[109]~162_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[109]~162_combout\);

-- Location: LCCOMB_X63_Y38_N0
\Mod1|auto_generated|divider|divider|StageOut[109]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~16_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((!temperatura_tmp(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => \temperatura_tmp_unsigned~16_combout\,
	datac => temperatura_tmp(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\);

-- Location: LCCOMB_X61_Y38_N16
\Mod1|auto_generated|divider|divider|StageOut[108]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[108]~208_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & ((\temperatura_tmp_unsigned~18_combout\))) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & (temperatura_tmp(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura_tmp(4),
	datab => \temperatura_tmp_unsigned~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \temperatura_tmp_unsigned~1_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[108]~208_combout\);

-- Location: LCCOMB_X61_Y36_N2
\Mod1|auto_generated|divider|divider|StageOut[108]~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[108]~207_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~18_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~18_combout\,
	datab => temperatura_tmp(4),
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[108]~207_combout\);

-- Location: LCCOMB_X62_Y38_N8
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[108]~208_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[108]~207_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[108]~208_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[108]~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[108]~208_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[108]~207_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X62_Y38_N10
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[109]~162_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[109]~162_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[109]~162_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[109]~162_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X62_Y38_N12
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[110]~161_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[110]~161_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[110]~161_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[110]~161_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X62_Y38_N14
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[111]~160_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[111]~160_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[111]~160_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[111]~160_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X62_Y38_N16
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[112]~159_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[112]~159_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[112]~159_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[112]~159_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X62_Y38_N18
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[113]~158_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[113]~158_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[113]~158_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[113]~158_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~11\);

-- Location: LCCOMB_X62_Y38_N20
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ & ((((\Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[114]~157_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ & ((\Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[114]~157_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[114]~157_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[114]~157_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~13\);

-- Location: LCCOMB_X62_Y38_N22
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ & (((\Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[115]~156_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ & (!\Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[115]~156_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[115]~156_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[115]~156_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~13\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~15\);

-- Location: LCCOMB_X62_Y38_N24
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ & ((((\Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[116]~155_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ & ((\Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[116]~155_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[116]~155_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[116]~155_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~15\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~17\);

-- Location: LCCOMB_X62_Y38_N26
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ & (((\Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[117]~154_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ & (!\Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[117]~154_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[117]~154_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[117]~154_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~17\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~19\);

-- Location: LCCOMB_X62_Y38_N28
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ = \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~19\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\);

-- Location: LCCOMB_X63_Y38_N8
\Mod1|auto_generated|divider|divider|StageOut[120]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[120]~212_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\temperatura_tmp_unsigned~20_combout\) # ((!\temperatura_tmp_unsigned~1_combout\ & !temperatura_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => temperatura_tmp(3),
	datac => \temperatura_tmp_unsigned~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[120]~212_combout\);

-- Location: LCCOMB_X63_Y38_N6
\Mod1|auto_generated|divider|divider|StageOut[120]~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[120]~211_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\temperatura_tmp_unsigned~20_combout\) # ((!\temperatura_tmp_unsigned~1_combout\ & !temperatura_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~1_combout\,
	datab => temperatura_tmp(3),
	datac => \temperatura_tmp_unsigned~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[120]~211_combout\);

-- Location: LCCOMB_X64_Y38_N6
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[120]~212_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[120]~211_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[120]~212_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[120]~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[120]~212_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[120]~211_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X63_Y38_N16
\Mod1|auto_generated|divider|divider|StageOut[130]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[130]~165_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[130]~165_combout\);

-- Location: LCCOMB_X64_Y38_N2
\Mod1|auto_generated|divider|divider|StageOut[130]~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[130]~213_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[117]~198_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[130]~213_combout\);

-- Location: LCCOMB_X63_Y38_N10
\Mod1|auto_generated|divider|divider|StageOut[129]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[129]~214_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[116]~199_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[129]~214_combout\);

-- Location: LCCOMB_X63_Y38_N22
\Mod1|auto_generated|divider|divider|StageOut[129]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[129]~166_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[129]~166_combout\);

-- Location: LCCOMB_X63_Y35_N26
\Mod1|auto_generated|divider|divider|StageOut[128]~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[128]~215_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[115]~200_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[128]~215_combout\);

-- Location: LCCOMB_X63_Y38_N24
\Mod1|auto_generated|divider|divider|StageOut[128]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[128]~167_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[128]~167_combout\);

-- Location: LCCOMB_X63_Y38_N2
\Mod1|auto_generated|divider|divider|StageOut[127]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[127]~168_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[127]~168_combout\);

-- Location: LCCOMB_X61_Y38_N30
\Mod1|auto_generated|divider|divider|StageOut[127]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[127]~216_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[114]~201_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[127]~216_combout\);

-- Location: LCCOMB_X61_Y38_N24
\Mod1|auto_generated|divider|divider|StageOut[126]~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[126]~217_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[113]~202_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[126]~217_combout\);

-- Location: LCCOMB_X63_Y38_N28
\Mod1|auto_generated|divider|divider|StageOut[126]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[126]~169_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[126]~169_combout\);

-- Location: LCCOMB_X63_Y38_N14
\Mod1|auto_generated|divider|divider|StageOut[125]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[125]~170_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[125]~170_combout\);

-- Location: LCCOMB_X63_Y35_N12
\Mod1|auto_generated|divider|divider|StageOut[125]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[125]~218_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[112]~203_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[125]~218_combout\);

-- Location: LCCOMB_X61_Y36_N24
\Mod1|auto_generated|divider|divider|StageOut[124]~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[124]~219_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[111]~204_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[124]~219_combout\);

-- Location: LCCOMB_X63_Y38_N20
\Mod1|auto_generated|divider|divider|StageOut[124]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[124]~171_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[124]~171_combout\);

-- Location: LCCOMB_X61_Y36_N10
\Mod1|auto_generated|divider|divider|StageOut[123]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[123]~220_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[110]~205_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[123]~220_combout\);

-- Location: LCCOMB_X63_Y38_N30
\Mod1|auto_generated|divider|divider|StageOut[123]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[123]~172_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[123]~172_combout\);

-- Location: LCCOMB_X63_Y38_N12
\Mod1|auto_generated|divider|divider|StageOut[122]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\);

-- Location: LCCOMB_X63_Y38_N18
\Mod1|auto_generated|divider|divider|StageOut[122]~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[109]~206_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\);

-- Location: LCCOMB_X63_Y38_N26
\Mod1|auto_generated|divider|divider|StageOut[121]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\);

-- Location: LCCOMB_X63_Y38_N4
\Mod1|auto_generated|divider|divider|StageOut[121]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\temperatura_tmp_unsigned~1_combout\ & (\temperatura_tmp_unsigned~18_combout\)) # 
-- (!\temperatura_tmp_unsigned~1_combout\ & ((temperatura_tmp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temperatura_tmp_unsigned~18_combout\,
	datab => temperatura_tmp(4),
	datac => \temperatura_tmp_unsigned~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\);

-- Location: LCCOMB_X64_Y38_N8
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X64_Y38_N10
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X64_Y38_N12
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[123]~220_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[123]~172_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[123]~220_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[123]~172_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X64_Y38_N14
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[124]~219_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[124]~171_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[124]~219_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[124]~171_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X64_Y38_N16
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[125]~170_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[125]~218_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[125]~170_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[125]~218_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\);

-- Location: LCCOMB_X64_Y38_N18
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[126]~217_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[126]~169_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[126]~217_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[126]~169_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\);

-- Location: LCCOMB_X64_Y38_N20
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[127]~168_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[127]~216_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[127]~168_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[127]~216_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\);

-- Location: LCCOMB_X64_Y38_N22
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[128]~215_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[128]~167_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[128]~215_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[128]~167_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\);

-- Location: LCCOMB_X64_Y38_N24
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[129]~214_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[129]~166_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[129]~214_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[129]~166_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\);

-- Location: LCCOMB_X64_Y38_N26
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[130]~165_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[130]~213_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[130]~165_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[130]~213_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\);

-- Location: LCCOMB_X64_Y38_N28
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\);

-- Location: LCCOMB_X64_Y38_N4
\Mod1|auto_generated|divider|divider|StageOut[133]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[133]~175_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((!\temperatura_tmp_unsigned~21_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datab => \temperatura_tmp_unsigned~21_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[133]~175_combout\);

-- Location: FF_X64_Y38_N5
\unidade_temperatura_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[133]~175_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_temperatura_tmp(1));

-- Location: LCCOMB_X64_Y38_N30
\Mod1|auto_generated|divider|divider|StageOut[134]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[134]~174_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[121]~210_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[134]~174_combout\);

-- Location: FF_X64_Y38_N31
\unidade_temperatura_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[134]~174_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_temperatura_tmp(2));

-- Location: LCCOMB_X64_Y38_N0
\Mod1|auto_generated|divider|divider|StageOut[135]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[135]~173_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[122]~209_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[122]~163_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[135]~173_combout\);

-- Location: FF_X64_Y38_N1
\unidade_temperatura_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[135]~173_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_temperatura_tmp(3));

-- Location: LCCOMB_X64_Y37_N24
\display_unidade_temperatura|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_temperatura|out_display[0]~0_combout\ = (unidade_temperatura_tmp(1) & (((unidade_temperatura_tmp(3))))) # (!unidade_temperatura_tmp(1) & (unidade_temperatura_tmp(2) $ (((unidade_temperatura_tmp(0) & !unidade_temperatura_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_temperatura_tmp(0),
	datab => unidade_temperatura_tmp(1),
	datac => unidade_temperatura_tmp(2),
	datad => unidade_temperatura_tmp(3),
	combout => \display_unidade_temperatura|out_display[0]~0_combout\);

-- Location: LCCOMB_X64_Y37_N30
\display_unidade_temperatura|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_temperatura|out_display[1]~1_combout\ = (unidade_temperatura_tmp(2) & ((unidade_temperatura_tmp(3)) # (unidade_temperatura_tmp(0) $ (unidade_temperatura_tmp(1))))) # (!unidade_temperatura_tmp(2) & (((unidade_temperatura_tmp(1) & 
-- unidade_temperatura_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_temperatura_tmp(0),
	datab => unidade_temperatura_tmp(1),
	datac => unidade_temperatura_tmp(2),
	datad => unidade_temperatura_tmp(3),
	combout => \display_unidade_temperatura|out_display[1]~1_combout\);

-- Location: LCCOMB_X64_Y37_N0
\display_unidade_temperatura|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_temperatura|out_display[2]~2_combout\ = (unidade_temperatura_tmp(2) & (((!unidade_temperatura_tmp(3))))) # (!unidade_temperatura_tmp(2) & (((unidade_temperatura_tmp(0) & !unidade_temperatura_tmp(3))) # (!unidade_temperatura_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_temperatura_tmp(0),
	datab => unidade_temperatura_tmp(1),
	datac => unidade_temperatura_tmp(2),
	datad => unidade_temperatura_tmp(3),
	combout => \display_unidade_temperatura|out_display[2]~2_combout\);

-- Location: LCCOMB_X64_Y37_N22
\display_unidade_temperatura|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_temperatura|out_display[3]~3_combout\ = (unidade_temperatura_tmp(1) & ((unidade_temperatura_tmp(3)) # ((unidade_temperatura_tmp(0) & unidade_temperatura_tmp(2))))) # (!unidade_temperatura_tmp(1) & (unidade_temperatura_tmp(2) $ 
-- (((unidade_temperatura_tmp(0) & !unidade_temperatura_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_temperatura_tmp(0),
	datab => unidade_temperatura_tmp(1),
	datac => unidade_temperatura_tmp(2),
	datad => unidade_temperatura_tmp(3),
	combout => \display_unidade_temperatura|out_display[3]~3_combout\);

-- Location: LCCOMB_X64_Y37_N20
\display_unidade_temperatura|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_temperatura|out_display[4]~4_combout\ = (unidade_temperatura_tmp(0)) # ((unidade_temperatura_tmp(1) & ((unidade_temperatura_tmp(3)))) # (!unidade_temperatura_tmp(1) & (unidade_temperatura_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_temperatura_tmp(0),
	datab => unidade_temperatura_tmp(1),
	datac => unidade_temperatura_tmp(2),
	datad => unidade_temperatura_tmp(3),
	combout => \display_unidade_temperatura|out_display[4]~4_combout\);

-- Location: LCCOMB_X64_Y37_N10
\display_unidade_temperatura|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_temperatura|out_display[5]~5_combout\ = (unidade_temperatura_tmp(0) & (!unidade_temperatura_tmp(1) & (unidade_temperatura_tmp(2) $ (unidade_temperatura_tmp(3))))) # (!unidade_temperatura_tmp(0) & ((unidade_temperatura_tmp(2) & 
-- ((!unidade_temperatura_tmp(3)))) # (!unidade_temperatura_tmp(2) & (!unidade_temperatura_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_temperatura_tmp(0),
	datab => unidade_temperatura_tmp(1),
	datac => unidade_temperatura_tmp(2),
	datad => unidade_temperatura_tmp(3),
	combout => \display_unidade_temperatura|out_display[5]~5_combout\);

-- Location: LCCOMB_X64_Y37_N12
\display_unidade_temperatura|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_temperatura|out_display[6]~6_combout\ = (unidade_temperatura_tmp(1) & ((unidade_temperatura_tmp(3)) # ((unidade_temperatura_tmp(0) & unidade_temperatura_tmp(2))))) # (!unidade_temperatura_tmp(1) & ((unidade_temperatura_tmp(2) $ 
-- (!unidade_temperatura_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_temperatura_tmp(0),
	datab => unidade_temperatura_tmp(1),
	datac => unidade_temperatura_tmp(2),
	datad => unidade_temperatura_tmp(3),
	combout => \display_unidade_temperatura|out_display[6]~6_combout\);

-- Location: LCCOMB_X45_Y50_N2
\clk_pid~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_pid~feeder_combout\ = \pid_ativo~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pid_ativo~0_combout\,
	combout => \clk_pid~feeder_combout\);

-- Location: FF_X45_Y50_N3
clk_pid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \clk_pid~feeder_combout\,
	ena => \pid_ativo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pid~q\);

-- Location: CLKCTRL_G12
\clk_pid~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_pid~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_pid~clkctrl_outclk\);

-- Location: FF_X60_Y40_N3
\set_point[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => set_point_tmp(10),
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(10));

-- Location: FF_X61_Y40_N23
\temperatura[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => temperatura_tmp(11),
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(11));

-- Location: LCCOMB_X61_Y40_N28
\temperatura[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[10]~feeder_combout\ = temperatura_tmp(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(10),
	combout => \temperatura[10]~feeder_combout\);

-- Location: FF_X61_Y40_N29
\temperatura[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[10]~feeder_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(10));

-- Location: FF_X60_Y40_N23
\set_point[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => set_point_tmp(9),
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(9));

-- Location: LCCOMB_X61_Y40_N30
\temperatura[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[9]~feeder_combout\ = temperatura_tmp(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(9),
	combout => \temperatura[9]~feeder_combout\);

-- Location: FF_X61_Y40_N31
\temperatura[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[9]~feeder_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(9));

-- Location: LCCOMB_X61_Y40_N26
\temperatura[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[8]~0_combout\ = !temperatura_tmp(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(8),
	combout => \temperatura[8]~0_combout\);

-- Location: FF_X61_Y40_N27
\temperatura[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[8]~0_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(8));

-- Location: LCCOMB_X60_Y40_N2
\set_point[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point[8]~3_combout\ = !set_point_tmp(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => set_point_tmp(8),
	combout => \set_point[8]~3_combout\);

-- Location: FF_X60_Y40_N21
\set_point[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point[8]~3_combout\,
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(8));

-- Location: LCCOMB_X61_Y40_N24
\temperatura[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[7]~feeder_combout\ = temperatura_tmp(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(7),
	combout => \temperatura[7]~feeder_combout\);

-- Location: FF_X61_Y40_N25
\temperatura[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[7]~feeder_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(7));

-- Location: FF_X60_Y40_N19
\set_point[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => set_point_tmp(7),
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(7));

-- Location: LCCOMB_X60_Y40_N4
\temperatura[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[6]~feeder_combout\ = temperatura_tmp(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(6),
	combout => \temperatura[6]~feeder_combout\);

-- Location: FF_X60_Y40_N5
\temperatura[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[6]~feeder_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(6));

-- Location: LCCOMB_X60_Y36_N4
\set_point[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point[6]~0_combout\ = !set_point_tmp(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => set_point_tmp(6),
	combout => \set_point[6]~0_combout\);

-- Location: FF_X60_Y40_N17
\set_point[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point[6]~0_combout\,
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(6));

-- Location: LCCOMB_X60_Y40_N30
\temperatura[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[5]~1_combout\ = !temperatura_tmp(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(5),
	combout => \temperatura[5]~1_combout\);

-- Location: FF_X60_Y40_N31
\temperatura[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[5]~1_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(5));

-- Location: FF_X60_Y40_N15
\set_point[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => set_point_tmp(5),
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(5));

-- Location: LCCOMB_X60_Y36_N10
\set_point[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point[4]~1_combout\ = !set_point_tmp(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => set_point_tmp(4),
	combout => \set_point[4]~1_combout\);

-- Location: FF_X60_Y40_N13
\set_point[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point[4]~1_combout\,
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(4));

-- Location: LCCOMB_X61_Y40_N0
\temperatura[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[4]~feeder_combout\ = temperatura_tmp(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(4),
	combout => \temperatura[4]~feeder_combout\);

-- Location: FF_X61_Y40_N1
\temperatura[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[4]~feeder_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(4));

-- Location: FF_X60_Y40_N11
\set_point[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => set_point_tmp(3),
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(3));

-- Location: LCCOMB_X60_Y40_N0
\temperatura[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[3]~2_combout\ = !temperatura_tmp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(3),
	combout => \temperatura[3]~2_combout\);

-- Location: FF_X60_Y40_N1
\temperatura[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[3]~2_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(3));

-- Location: LCCOMB_X60_Y40_N6
\temperatura[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temperatura[2]~feeder_combout\ = temperatura_tmp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temperatura_tmp(2),
	combout => \temperatura[2]~feeder_combout\);

-- Location: FF_X60_Y40_N7
\temperatura[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \temperatura[2]~feeder_combout\,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperatura(2));

-- Location: LCCOMB_X60_Y36_N16
\set_point[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \set_point[2]~2_combout\ = !set_point_tmp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => set_point_tmp(2),
	combout => \set_point[2]~2_combout\);

-- Location: FF_X60_Y40_N9
\set_point[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \set_point[2]~2_combout\,
	sload => VCC,
	ena => \pid_ativo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => set_point(2));

-- Location: LCCOMB_X60_Y40_N8
\pid|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~0_combout\ = (temperatura(2) & (set_point(2) $ (VCC))) # (!temperatura(2) & ((set_point(2)) # (GND)))
-- \pid|Add0~1\ = CARRY((set_point(2)) # (!temperatura(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(2),
	datab => set_point(2),
	datad => VCC,
	combout => \pid|Add0~0_combout\,
	cout => \pid|Add0~1\);

-- Location: LCCOMB_X60_Y40_N10
\pid|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~2_combout\ = (set_point(3) & ((temperatura(3) & (!\pid|Add0~1\)) # (!temperatura(3) & (\pid|Add0~1\ & VCC)))) # (!set_point(3) & ((temperatura(3) & ((\pid|Add0~1\) # (GND))) # (!temperatura(3) & (!\pid|Add0~1\))))
-- \pid|Add0~3\ = CARRY((set_point(3) & (temperatura(3) & !\pid|Add0~1\)) # (!set_point(3) & ((temperatura(3)) # (!\pid|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point(3),
	datab => temperatura(3),
	datad => VCC,
	cin => \pid|Add0~1\,
	combout => \pid|Add0~2_combout\,
	cout => \pid|Add0~3\);

-- Location: LCCOMB_X60_Y40_N12
\pid|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~4_combout\ = ((set_point(4) $ (temperatura(4) $ (\pid|Add0~3\)))) # (GND)
-- \pid|Add0~5\ = CARRY((set_point(4) & ((!\pid|Add0~3\) # (!temperatura(4)))) # (!set_point(4) & (!temperatura(4) & !\pid|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point(4),
	datab => temperatura(4),
	datad => VCC,
	cin => \pid|Add0~3\,
	combout => \pid|Add0~4_combout\,
	cout => \pid|Add0~5\);

-- Location: LCCOMB_X60_Y40_N14
\pid|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~6_combout\ = (temperatura(5) & ((set_point(5) & (!\pid|Add0~5\)) # (!set_point(5) & ((\pid|Add0~5\) # (GND))))) # (!temperatura(5) & ((set_point(5) & (\pid|Add0~5\ & VCC)) # (!set_point(5) & (!\pid|Add0~5\))))
-- \pid|Add0~7\ = CARRY((temperatura(5) & ((!\pid|Add0~5\) # (!set_point(5)))) # (!temperatura(5) & (!set_point(5) & !\pid|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(5),
	datab => set_point(5),
	datad => VCC,
	cin => \pid|Add0~5\,
	combout => \pid|Add0~6_combout\,
	cout => \pid|Add0~7\);

-- Location: LCCOMB_X60_Y40_N16
\pid|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~8_combout\ = ((temperatura(6) $ (set_point(6) $ (\pid|Add0~7\)))) # (GND)
-- \pid|Add0~9\ = CARRY((temperatura(6) & (set_point(6) & !\pid|Add0~7\)) # (!temperatura(6) & ((set_point(6)) # (!\pid|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(6),
	datab => set_point(6),
	datad => VCC,
	cin => \pid|Add0~7\,
	combout => \pid|Add0~8_combout\,
	cout => \pid|Add0~9\);

-- Location: LCCOMB_X60_Y40_N18
\pid|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~10_combout\ = (temperatura(7) & ((set_point(7) & (!\pid|Add0~9\)) # (!set_point(7) & ((\pid|Add0~9\) # (GND))))) # (!temperatura(7) & ((set_point(7) & (\pid|Add0~9\ & VCC)) # (!set_point(7) & (!\pid|Add0~9\))))
-- \pid|Add0~11\ = CARRY((temperatura(7) & ((!\pid|Add0~9\) # (!set_point(7)))) # (!temperatura(7) & (!set_point(7) & !\pid|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(7),
	datab => set_point(7),
	datad => VCC,
	cin => \pid|Add0~9\,
	combout => \pid|Add0~10_combout\,
	cout => \pid|Add0~11\);

-- Location: LCCOMB_X60_Y40_N20
\pid|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~12_combout\ = ((temperatura(8) $ (set_point(8) $ (\pid|Add0~11\)))) # (GND)
-- \pid|Add0~13\ = CARRY((temperatura(8) & (set_point(8) & !\pid|Add0~11\)) # (!temperatura(8) & ((set_point(8)) # (!\pid|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(8),
	datab => set_point(8),
	datad => VCC,
	cin => \pid|Add0~11\,
	combout => \pid|Add0~12_combout\,
	cout => \pid|Add0~13\);

-- Location: LCCOMB_X60_Y40_N22
\pid|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~14_combout\ = (set_point(9) & ((temperatura(9) & (!\pid|Add0~13\)) # (!temperatura(9) & (\pid|Add0~13\ & VCC)))) # (!set_point(9) & ((temperatura(9) & ((\pid|Add0~13\) # (GND))) # (!temperatura(9) & (!\pid|Add0~13\))))
-- \pid|Add0~15\ = CARRY((set_point(9) & (temperatura(9) & !\pid|Add0~13\)) # (!set_point(9) & ((temperatura(9)) # (!\pid|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => set_point(9),
	datab => temperatura(9),
	datad => VCC,
	cin => \pid|Add0~13\,
	combout => \pid|Add0~14_combout\,
	cout => \pid|Add0~15\);

-- Location: LCCOMB_X60_Y40_N24
\pid|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~16_combout\ = ((temperatura(10) $ (set_point(10) $ (\pid|Add0~15\)))) # (GND)
-- \pid|Add0~17\ = CARRY((temperatura(10) & (set_point(10) & !\pid|Add0~15\)) # (!temperatura(10) & ((set_point(10)) # (!\pid|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(10),
	datab => set_point(10),
	datad => VCC,
	cin => \pid|Add0~15\,
	combout => \pid|Add0~16_combout\,
	cout => \pid|Add0~17\);

-- Location: LCCOMB_X60_Y40_N26
\pid|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~18_combout\ = (temperatura(11) & ((set_point(10) & (!\pid|Add0~17\)) # (!set_point(10) & ((\pid|Add0~17\) # (GND))))) # (!temperatura(11) & ((set_point(10) & (\pid|Add0~17\ & VCC)) # (!set_point(10) & (!\pid|Add0~17\))))
-- \pid|Add0~19\ = CARRY((temperatura(11) & ((!\pid|Add0~17\) # (!set_point(10)))) # (!temperatura(11) & (!set_point(10) & !\pid|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(11),
	datab => set_point(10),
	datad => VCC,
	cin => \pid|Add0~17\,
	combout => \pid|Add0~18_combout\,
	cout => \pid|Add0~19\);

-- Location: LCCOMB_X60_Y40_N28
\pid|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add0~20_combout\ = \pid|Add0~19\ $ (set_point(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => set_point(10),
	cin => \pid|Add0~19\,
	combout => \pid|Add0~20_combout\);

-- Location: FF_X61_Y40_N21
\pid|ultima_temperatura[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(12));

-- Location: FF_X61_Y40_N19
\pid|ultima_temperatura[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(11));

-- Location: FF_X61_Y40_N17
\pid|ultima_temperatura[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(10));

-- Location: FF_X61_Y40_N15
\pid|ultima_temperatura[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(9));

-- Location: FF_X61_Y40_N13
\pid|ultima_temperatura[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(8));

-- Location: FF_X61_Y40_N11
\pid|ultima_temperatura[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(7));

-- Location: FF_X61_Y40_N9
\pid|ultima_temperatura[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(6));

-- Location: FF_X61_Y40_N7
\pid|ultima_temperatura[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(5));

-- Location: FF_X61_Y40_N5
\pid|ultima_temperatura[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(4));

-- Location: FF_X61_Y40_N3
\pid|ultima_temperatura[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	asdata => temperatura(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|ultima_temperatura\(3));

-- Location: LCCOMB_X61_Y40_N2
\pid|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~1_cout\ = CARRY((\pid|ultima_temperatura\(3)) # (!temperatura(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(2),
	datab => \pid|ultima_temperatura\(3),
	datad => VCC,
	cout => \pid|Add1~1_cout\);

-- Location: LCCOMB_X61_Y40_N4
\pid|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~3_cout\ = CARRY((temperatura(3) & ((!\pid|Add1~1_cout\) # (!\pid|ultima_temperatura\(4)))) # (!temperatura(3) & (!\pid|ultima_temperatura\(4) & !\pid|Add1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(3),
	datab => \pid|ultima_temperatura\(4),
	datad => VCC,
	cin => \pid|Add1~1_cout\,
	cout => \pid|Add1~3_cout\);

-- Location: LCCOMB_X61_Y40_N6
\pid|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~5_cout\ = CARRY((\pid|ultima_temperatura\(5) & ((!\pid|Add1~3_cout\) # (!temperatura(4)))) # (!\pid|ultima_temperatura\(5) & (!temperatura(4) & !\pid|Add1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|ultima_temperatura\(5),
	datab => temperatura(4),
	datad => VCC,
	cin => \pid|Add1~3_cout\,
	cout => \pid|Add1~5_cout\);

-- Location: LCCOMB_X61_Y40_N8
\pid|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~6_combout\ = (temperatura(5) & ((\pid|ultima_temperatura\(6) & (!\pid|Add1~5_cout\)) # (!\pid|ultima_temperatura\(6) & ((\pid|Add1~5_cout\) # (GND))))) # (!temperatura(5) & ((\pid|ultima_temperatura\(6) & (\pid|Add1~5_cout\ & VCC)) # 
-- (!\pid|ultima_temperatura\(6) & (!\pid|Add1~5_cout\))))
-- \pid|Add1~7\ = CARRY((temperatura(5) & ((!\pid|Add1~5_cout\) # (!\pid|ultima_temperatura\(6)))) # (!temperatura(5) & (!\pid|ultima_temperatura\(6) & !\pid|Add1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(5),
	datab => \pid|ultima_temperatura\(6),
	datad => VCC,
	cin => \pid|Add1~5_cout\,
	combout => \pid|Add1~6_combout\,
	cout => \pid|Add1~7\);

-- Location: LCCOMB_X61_Y40_N10
\pid|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~8_combout\ = ((\pid|ultima_temperatura\(7) $ (temperatura(6) $ (\pid|Add1~7\)))) # (GND)
-- \pid|Add1~9\ = CARRY((\pid|ultima_temperatura\(7) & ((!\pid|Add1~7\) # (!temperatura(6)))) # (!\pid|ultima_temperatura\(7) & (!temperatura(6) & !\pid|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|ultima_temperatura\(7),
	datab => temperatura(6),
	datad => VCC,
	cin => \pid|Add1~7\,
	combout => \pid|Add1~8_combout\,
	cout => \pid|Add1~9\);

-- Location: LCCOMB_X61_Y40_N12
\pid|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~10_combout\ = (\pid|ultima_temperatura\(8) & ((temperatura(7) & (!\pid|Add1~9\)) # (!temperatura(7) & (\pid|Add1~9\ & VCC)))) # (!\pid|ultima_temperatura\(8) & ((temperatura(7) & ((\pid|Add1~9\) # (GND))) # (!temperatura(7) & (!\pid|Add1~9\))))
-- \pid|Add1~11\ = CARRY((\pid|ultima_temperatura\(8) & (temperatura(7) & !\pid|Add1~9\)) # (!\pid|ultima_temperatura\(8) & ((temperatura(7)) # (!\pid|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|ultima_temperatura\(8),
	datab => temperatura(7),
	datad => VCC,
	cin => \pid|Add1~9\,
	combout => \pid|Add1~10_combout\,
	cout => \pid|Add1~11\);

-- Location: LCCOMB_X61_Y40_N14
\pid|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~12_combout\ = ((temperatura(8) $ (\pid|ultima_temperatura\(9) $ (\pid|Add1~11\)))) # (GND)
-- \pid|Add1~13\ = CARRY((temperatura(8) & (\pid|ultima_temperatura\(9) & !\pid|Add1~11\)) # (!temperatura(8) & ((\pid|ultima_temperatura\(9)) # (!\pid|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(8),
	datab => \pid|ultima_temperatura\(9),
	datad => VCC,
	cin => \pid|Add1~11\,
	combout => \pid|Add1~12_combout\,
	cout => \pid|Add1~13\);

-- Location: LCCOMB_X61_Y40_N16
\pid|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~14_combout\ = (temperatura(9) & ((\pid|ultima_temperatura\(10) & (!\pid|Add1~13\)) # (!\pid|ultima_temperatura\(10) & ((\pid|Add1~13\) # (GND))))) # (!temperatura(9) & ((\pid|ultima_temperatura\(10) & (\pid|Add1~13\ & VCC)) # 
-- (!\pid|ultima_temperatura\(10) & (!\pid|Add1~13\))))
-- \pid|Add1~15\ = CARRY((temperatura(9) & ((!\pid|Add1~13\) # (!\pid|ultima_temperatura\(10)))) # (!temperatura(9) & (!\pid|ultima_temperatura\(10) & !\pid|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(9),
	datab => \pid|ultima_temperatura\(10),
	datad => VCC,
	cin => \pid|Add1~13\,
	combout => \pid|Add1~14_combout\,
	cout => \pid|Add1~15\);

-- Location: LCCOMB_X61_Y40_N18
\pid|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~16_combout\ = ((\pid|ultima_temperatura\(11) $ (temperatura(10) $ (\pid|Add1~15\)))) # (GND)
-- \pid|Add1~17\ = CARRY((\pid|ultima_temperatura\(11) & ((!\pid|Add1~15\) # (!temperatura(10)))) # (!\pid|ultima_temperatura\(11) & (!temperatura(10) & !\pid|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|ultima_temperatura\(11),
	datab => temperatura(10),
	datad => VCC,
	cin => \pid|Add1~15\,
	combout => \pid|Add1~16_combout\,
	cout => \pid|Add1~17\);

-- Location: LCCOMB_X61_Y40_N20
\pid|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~18_combout\ = (temperatura(11) & ((\pid|ultima_temperatura\(12) & (!\pid|Add1~17\)) # (!\pid|ultima_temperatura\(12) & ((\pid|Add1~17\) # (GND))))) # (!temperatura(11) & ((\pid|ultima_temperatura\(12) & (\pid|Add1~17\ & VCC)) # 
-- (!\pid|ultima_temperatura\(12) & (!\pid|Add1~17\))))
-- \pid|Add1~19\ = CARRY((temperatura(11) & ((!\pid|Add1~17\) # (!\pid|ultima_temperatura\(12)))) # (!temperatura(11) & (!\pid|ultima_temperatura\(12) & !\pid|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperatura(11),
	datab => \pid|ultima_temperatura\(12),
	datad => VCC,
	cin => \pid|Add1~17\,
	combout => \pid|Add1~18_combout\,
	cout => \pid|Add1~19\);

-- Location: LCCOMB_X61_Y40_N22
\pid|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add1~20_combout\ = \pid|Add1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pid|Add1~19\,
	combout => \pid|Add1~20_combout\);

-- Location: LCCOMB_X60_Y43_N0
\pid|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~0_combout\ = (\pid|Add0~0_combout\ & (\pid|Add1~6_combout\ $ (VCC))) # (!\pid|Add0~0_combout\ & (\pid|Add1~6_combout\ & VCC))
-- \pid|Add3~1\ = CARRY((\pid|Add0~0_combout\ & \pid|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add0~0_combout\,
	datab => \pid|Add1~6_combout\,
	datad => VCC,
	combout => \pid|Add3~0_combout\,
	cout => \pid|Add3~1\);

-- Location: LCCOMB_X60_Y43_N2
\pid|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~2_combout\ = (\pid|Add0~2_combout\ & ((\pid|Add1~8_combout\ & (\pid|Add3~1\ & VCC)) # (!\pid|Add1~8_combout\ & (!\pid|Add3~1\)))) # (!\pid|Add0~2_combout\ & ((\pid|Add1~8_combout\ & (!\pid|Add3~1\)) # (!\pid|Add1~8_combout\ & ((\pid|Add3~1\) # 
-- (GND)))))
-- \pid|Add3~3\ = CARRY((\pid|Add0~2_combout\ & (!\pid|Add1~8_combout\ & !\pid|Add3~1\)) # (!\pid|Add0~2_combout\ & ((!\pid|Add3~1\) # (!\pid|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add0~2_combout\,
	datab => \pid|Add1~8_combout\,
	datad => VCC,
	cin => \pid|Add3~1\,
	combout => \pid|Add3~2_combout\,
	cout => \pid|Add3~3\);

-- Location: LCCOMB_X60_Y43_N4
\pid|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~4_combout\ = ((\pid|Add1~10_combout\ $ (\pid|Add0~4_combout\ $ (!\pid|Add3~3\)))) # (GND)
-- \pid|Add3~5\ = CARRY((\pid|Add1~10_combout\ & ((\pid|Add0~4_combout\) # (!\pid|Add3~3\))) # (!\pid|Add1~10_combout\ & (\pid|Add0~4_combout\ & !\pid|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add1~10_combout\,
	datab => \pid|Add0~4_combout\,
	datad => VCC,
	cin => \pid|Add3~3\,
	combout => \pid|Add3~4_combout\,
	cout => \pid|Add3~5\);

-- Location: LCCOMB_X60_Y43_N6
\pid|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~6_combout\ = (\pid|Add0~6_combout\ & ((\pid|Add1~12_combout\ & (\pid|Add3~5\ & VCC)) # (!\pid|Add1~12_combout\ & (!\pid|Add3~5\)))) # (!\pid|Add0~6_combout\ & ((\pid|Add1~12_combout\ & (!\pid|Add3~5\)) # (!\pid|Add1~12_combout\ & ((\pid|Add3~5\) 
-- # (GND)))))
-- \pid|Add3~7\ = CARRY((\pid|Add0~6_combout\ & (!\pid|Add1~12_combout\ & !\pid|Add3~5\)) # (!\pid|Add0~6_combout\ & ((!\pid|Add3~5\) # (!\pid|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add0~6_combout\,
	datab => \pid|Add1~12_combout\,
	datad => VCC,
	cin => \pid|Add3~5\,
	combout => \pid|Add3~6_combout\,
	cout => \pid|Add3~7\);

-- Location: LCCOMB_X60_Y43_N8
\pid|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~8_combout\ = ((\pid|Add0~8_combout\ $ (\pid|Add1~14_combout\ $ (!\pid|Add3~7\)))) # (GND)
-- \pid|Add3~9\ = CARRY((\pid|Add0~8_combout\ & ((\pid|Add1~14_combout\) # (!\pid|Add3~7\))) # (!\pid|Add0~8_combout\ & (\pid|Add1~14_combout\ & !\pid|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add0~8_combout\,
	datab => \pid|Add1~14_combout\,
	datad => VCC,
	cin => \pid|Add3~7\,
	combout => \pid|Add3~8_combout\,
	cout => \pid|Add3~9\);

-- Location: LCCOMB_X60_Y43_N10
\pid|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~10_combout\ = (\pid|Add0~10_combout\ & ((\pid|Add1~16_combout\ & (\pid|Add3~9\ & VCC)) # (!\pid|Add1~16_combout\ & (!\pid|Add3~9\)))) # (!\pid|Add0~10_combout\ & ((\pid|Add1~16_combout\ & (!\pid|Add3~9\)) # (!\pid|Add1~16_combout\ & 
-- ((\pid|Add3~9\) # (GND)))))
-- \pid|Add3~11\ = CARRY((\pid|Add0~10_combout\ & (!\pid|Add1~16_combout\ & !\pid|Add3~9\)) # (!\pid|Add0~10_combout\ & ((!\pid|Add3~9\) # (!\pid|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add0~10_combout\,
	datab => \pid|Add1~16_combout\,
	datad => VCC,
	cin => \pid|Add3~9\,
	combout => \pid|Add3~10_combout\,
	cout => \pid|Add3~11\);

-- Location: LCCOMB_X60_Y43_N12
\pid|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~12_combout\ = ((\pid|Add1~18_combout\ $ (\pid|Add0~12_combout\ $ (!\pid|Add3~11\)))) # (GND)
-- \pid|Add3~13\ = CARRY((\pid|Add1~18_combout\ & ((\pid|Add0~12_combout\) # (!\pid|Add3~11\))) # (!\pid|Add1~18_combout\ & (\pid|Add0~12_combout\ & !\pid|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add1~18_combout\,
	datab => \pid|Add0~12_combout\,
	datad => VCC,
	cin => \pid|Add3~11\,
	combout => \pid|Add3~12_combout\,
	cout => \pid|Add3~13\);

-- Location: LCCOMB_X60_Y43_N14
\pid|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~14_combout\ = (\pid|Add1~20_combout\ & ((\pid|Add0~14_combout\ & (\pid|Add3~13\ & VCC)) # (!\pid|Add0~14_combout\ & (!\pid|Add3~13\)))) # (!\pid|Add1~20_combout\ & ((\pid|Add0~14_combout\ & (!\pid|Add3~13\)) # (!\pid|Add0~14_combout\ & 
-- ((\pid|Add3~13\) # (GND)))))
-- \pid|Add3~15\ = CARRY((\pid|Add1~20_combout\ & (!\pid|Add0~14_combout\ & !\pid|Add3~13\)) # (!\pid|Add1~20_combout\ & ((!\pid|Add3~13\) # (!\pid|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add1~20_combout\,
	datab => \pid|Add0~14_combout\,
	datad => VCC,
	cin => \pid|Add3~13\,
	combout => \pid|Add3~14_combout\,
	cout => \pid|Add3~15\);

-- Location: LCCOMB_X60_Y43_N16
\pid|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~16_combout\ = ((\pid|Add1~20_combout\ $ (\pid|Add0~16_combout\ $ (!\pid|Add3~15\)))) # (GND)
-- \pid|Add3~17\ = CARRY((\pid|Add1~20_combout\ & ((\pid|Add0~16_combout\) # (!\pid|Add3~15\))) # (!\pid|Add1~20_combout\ & (\pid|Add0~16_combout\ & !\pid|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add1~20_combout\,
	datab => \pid|Add0~16_combout\,
	datad => VCC,
	cin => \pid|Add3~15\,
	combout => \pid|Add3~16_combout\,
	cout => \pid|Add3~17\);

-- Location: LCCOMB_X60_Y43_N18
\pid|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~18_combout\ = (\pid|Add0~18_combout\ & ((\pid|Add1~20_combout\ & (\pid|Add3~17\ & VCC)) # (!\pid|Add1~20_combout\ & (!\pid|Add3~17\)))) # (!\pid|Add0~18_combout\ & ((\pid|Add1~20_combout\ & (!\pid|Add3~17\)) # (!\pid|Add1~20_combout\ & 
-- ((\pid|Add3~17\) # (GND)))))
-- \pid|Add3~19\ = CARRY((\pid|Add0~18_combout\ & (!\pid|Add1~20_combout\ & !\pid|Add3~17\)) # (!\pid|Add0~18_combout\ & ((!\pid|Add3~17\) # (!\pid|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add0~18_combout\,
	datab => \pid|Add1~20_combout\,
	datad => VCC,
	cin => \pid|Add3~17\,
	combout => \pid|Add3~18_combout\,
	cout => \pid|Add3~19\);

-- Location: LCCOMB_X60_Y43_N20
\pid|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~20_combout\ = ((\pid|Add1~20_combout\ $ (\pid|Add0~20_combout\ $ (!\pid|Add3~19\)))) # (GND)
-- \pid|Add3~21\ = CARRY((\pid|Add1~20_combout\ & ((\pid|Add0~20_combout\) # (!\pid|Add3~19\))) # (!\pid|Add1~20_combout\ & (\pid|Add0~20_combout\ & !\pid|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add1~20_combout\,
	datab => \pid|Add0~20_combout\,
	datad => VCC,
	cin => \pid|Add3~19\,
	combout => \pid|Add3~20_combout\,
	cout => \pid|Add3~21\);

-- Location: LCCOMB_X60_Y43_N22
\pid|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add3~22_combout\ = \pid|Add0~20_combout\ $ (\pid|Add3~21\ $ (\pid|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pid|Add0~20_combout\,
	datad => \pid|Add1~20_combout\,
	cin => \pid|Add3~21\,
	combout => \pid|Add3~22_combout\);

-- Location: LCCOMB_X60_Y43_N24
\pid|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add4~0_combout\ = (\pid|Add3~0_combout\ & (\pid|Add3~4_combout\ $ (VCC))) # (!\pid|Add3~0_combout\ & (\pid|Add3~4_combout\ & VCC))
-- \pid|Add4~1\ = CARRY((\pid|Add3~0_combout\ & \pid|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~0_combout\,
	datab => \pid|Add3~4_combout\,
	datad => VCC,
	combout => \pid|Add4~0_combout\,
	cout => \pid|Add4~1\);

-- Location: LCCOMB_X60_Y43_N26
\pid|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add4~2_combout\ = (\pid|Add3~6_combout\ & ((\pid|Add3~2_combout\ & (\pid|Add4~1\ & VCC)) # (!\pid|Add3~2_combout\ & (!\pid|Add4~1\)))) # (!\pid|Add3~6_combout\ & ((\pid|Add3~2_combout\ & (!\pid|Add4~1\)) # (!\pid|Add3~2_combout\ & ((\pid|Add4~1\) # 
-- (GND)))))
-- \pid|Add4~3\ = CARRY((\pid|Add3~6_combout\ & (!\pid|Add3~2_combout\ & !\pid|Add4~1\)) # (!\pid|Add3~6_combout\ & ((!\pid|Add4~1\) # (!\pid|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~6_combout\,
	datab => \pid|Add3~2_combout\,
	datad => VCC,
	cin => \pid|Add4~1\,
	combout => \pid|Add4~2_combout\,
	cout => \pid|Add4~3\);

-- Location: LCCOMB_X60_Y43_N28
\pid|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add4~4_combout\ = ((\pid|Add3~4_combout\ $ (\pid|Add3~8_combout\ $ (!\pid|Add4~3\)))) # (GND)
-- \pid|Add4~5\ = CARRY((\pid|Add3~4_combout\ & ((\pid|Add3~8_combout\) # (!\pid|Add4~3\))) # (!\pid|Add3~4_combout\ & (\pid|Add3~8_combout\ & !\pid|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~4_combout\,
	datab => \pid|Add3~8_combout\,
	datad => VCC,
	cin => \pid|Add4~3\,
	combout => \pid|Add4~4_combout\,
	cout => \pid|Add4~5\);

-- Location: LCCOMB_X61_Y43_N20
\pid|percentual_potencia~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~0_combout\ = (\pid|Add3~8_combout\) # ((\pid|Add3~6_combout\ & ((\pid|Add3~2_combout\) # (\pid|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~2_combout\,
	datab => \pid|Add3~6_combout\,
	datac => \pid|Add3~4_combout\,
	datad => \pid|Add3~8_combout\,
	combout => \pid|percentual_potencia~0_combout\);

-- Location: LCCOMB_X61_Y43_N2
\pid|percentual_potencia~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~1_combout\ = (\pid|Add3~14_combout\) # ((\pid|Add3~10_combout\) # ((\pid|Add3~16_combout\) # (\pid|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~14_combout\,
	datab => \pid|Add3~10_combout\,
	datac => \pid|Add3~16_combout\,
	datad => \pid|Add3~12_combout\,
	combout => \pid|percentual_potencia~1_combout\);

-- Location: LCCOMB_X61_Y43_N8
\pid|percentual_potencia~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~2_combout\ = (\pid|Add3~20_combout\) # ((\pid|Add3~18_combout\) # ((\pid|percentual_potencia~0_combout\) # (\pid|percentual_potencia~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~20_combout\,
	datab => \pid|Add3~18_combout\,
	datac => \pid|percentual_potencia~0_combout\,
	datad => \pid|percentual_potencia~1_combout\,
	combout => \pid|percentual_potencia~2_combout\);

-- Location: LCCOMB_X62_Y43_N8
\pid|percentual_potencia~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~3_combout\ = (!\pid|Add3~22_combout\ & ((\pid|Add4~4_combout\) # (\pid|percentual_potencia~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~22_combout\,
	datac => \pid|Add4~4_combout\,
	datad => \pid|percentual_potencia~2_combout\,
	combout => \pid|percentual_potencia~3_combout\);

-- Location: FF_X62_Y43_N9
\pid|percentual_potencia[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	d => \pid|percentual_potencia~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|percentual_potencia\(5));

-- Location: LCCOMB_X60_Y43_N30
\pid|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|Add4~6_combout\ = \pid|Add3~6_combout\ $ (\pid|Add4~5\ $ (\pid|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~6_combout\,
	datad => \pid|Add3~10_combout\,
	cin => \pid|Add4~5\,
	combout => \pid|Add4~6_combout\);

-- Location: LCCOMB_X61_Y43_N6
\pid|percentual_potencia~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~4_combout\ = (\pid|Add3~18_combout\) # ((\pid|percentual_potencia~0_combout\) # (\pid|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|Add3~18_combout\,
	datac => \pid|percentual_potencia~0_combout\,
	datad => \pid|Add4~6_combout\,
	combout => \pid|percentual_potencia~4_combout\);

-- Location: LCCOMB_X61_Y43_N24
\pid|percentual_potencia~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~5_combout\ = (!\pid|Add3~22_combout\ & ((\pid|Add3~20_combout\) # ((\pid|percentual_potencia~1_combout\) # (\pid|percentual_potencia~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~20_combout\,
	datab => \pid|Add3~22_combout\,
	datac => \pid|percentual_potencia~1_combout\,
	datad => \pid|percentual_potencia~4_combout\,
	combout => \pid|percentual_potencia~5_combout\);

-- Location: FF_X61_Y43_N25
\pid|percentual_potencia[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	d => \pid|percentual_potencia~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|percentual_potencia\(6));

-- Location: LCCOMB_X62_Y43_N18
\pid|percentual_potencia~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~6_combout\ = (!\pid|Add3~22_combout\ & (\pid|Add4~2_combout\ & !\pid|percentual_potencia~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~22_combout\,
	datac => \pid|Add4~2_combout\,
	datad => \pid|percentual_potencia~2_combout\,
	combout => \pid|percentual_potencia~6_combout\);

-- Location: FF_X62_Y43_N19
\pid|percentual_potencia[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	d => \pid|percentual_potencia~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|percentual_potencia\(4));

-- Location: LCCOMB_X61_Y43_N22
\pid|percentual_potencia~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~9_combout\ = (\pid|Add3~2_combout\) # ((\pid|percentual_potencia~0_combout\) # (\pid|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~2_combout\,
	datac => \pid|percentual_potencia~0_combout\,
	datad => \pid|Add3~18_combout\,
	combout => \pid|percentual_potencia~9_combout\);

-- Location: LCCOMB_X61_Y43_N12
\pid|percentual_potencia~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~10_combout\ = (!\pid|Add3~22_combout\ & ((\pid|Add3~20_combout\) # ((\pid|percentual_potencia~1_combout\) # (\pid|percentual_potencia~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~20_combout\,
	datab => \pid|percentual_potencia~1_combout\,
	datac => \pid|percentual_potencia~9_combout\,
	datad => \pid|Add3~22_combout\,
	combout => \pid|percentual_potencia~10_combout\);

-- Location: FF_X61_Y43_N13
\pid|percentual_potencia[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	d => \pid|percentual_potencia~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|percentual_potencia\(2));

-- Location: LCCOMB_X61_Y43_N4
\pid|percentual_potencia~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~7_combout\ = (!\pid|Add3~18_combout\ & (!\pid|percentual_potencia~0_combout\ & \pid|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|Add3~18_combout\,
	datac => \pid|percentual_potencia~0_combout\,
	datad => \pid|Add4~0_combout\,
	combout => \pid|percentual_potencia~7_combout\);

-- Location: LCCOMB_X61_Y43_N18
\pid|percentual_potencia~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~8_combout\ = (!\pid|Add3~20_combout\ & (!\pid|percentual_potencia~1_combout\ & (\pid|percentual_potencia~7_combout\ & !\pid|Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~20_combout\,
	datab => \pid|percentual_potencia~1_combout\,
	datac => \pid|percentual_potencia~7_combout\,
	datad => \pid|Add3~22_combout\,
	combout => \pid|percentual_potencia~8_combout\);

-- Location: FF_X61_Y43_N19
\pid|percentual_potencia[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	d => \pid|percentual_potencia~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|percentual_potencia\(3));

-- Location: LCCOMB_X63_Y44_N2
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\pid|percentual_potencia\(6) & ((\pid|percentual_potencia\(4)) # ((\pid|percentual_potencia\(2)) # (\pid|percentual_potencia\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(6),
	datab => \pid|percentual_potencia\(4),
	datac => \pid|percentual_potencia\(2),
	datad => \pid|percentual_potencia\(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y43_N22
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \pid|percentual_potencia\(4) $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\pid|percentual_potencia\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(4),
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X63_Y43_N24
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\pid|percentual_potencia\(5) & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\pid|percentual_potencia\(5) & 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\pid|percentual_potencia\(5) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(5),
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X63_Y43_N26
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\pid|percentual_potencia\(6) & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\pid|percentual_potencia\(6) & 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\pid|percentual_potencia\(6) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(6),
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X63_Y43_N28
\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X63_Y43_N30
\Div2|auto_generated|divider|divider|StageOut[18]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X63_Y43_N8
\Div2|auto_generated|divider|divider|StageOut[18]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\pid|percentual_potencia\(6) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(6),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X63_Y43_N6
\Div2|auto_generated|divider|divider|StageOut[17]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X63_Y43_N20
\Div2|auto_generated|divider|divider|StageOut[17]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\pid|percentual_potencia\(5) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(5),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X63_Y43_N4
\Div2|auto_generated|divider|divider|StageOut[16]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\pid|percentual_potencia\(4) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(4),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X63_Y43_N0
\Div2|auto_generated|divider|divider|StageOut[16]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X62_Y43_N16
\Div2|auto_generated|divider|divider|StageOut[15]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\pid|percentual_potencia\(3) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(3),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X63_Y43_N2
\Div2|auto_generated|divider|divider|StageOut[15]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\pid|percentual_potencia\(3) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(3),
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X63_Y43_N10
\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~32_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X63_Y43_N12
\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[16]~30_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[16]~31_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[16]~31_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[16]~30_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X63_Y43_N14
\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X63_Y43_N16
\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[18]~27_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y43_N18
\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y44_N26
\Div2|auto_generated|divider|divider|StageOut[23]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~34_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X62_Y44_N28
\Div2|auto_generated|divider|divider|StageOut[23]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\pid|percentual_potencia\(5))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \pid|percentual_potencia\(5),
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X62_Y44_N10
\Div2|auto_generated|divider|divider|StageOut[22]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\pid|percentual_potencia\(4))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(4),
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X62_Y44_N20
\Div2|auto_generated|divider|divider|StageOut[22]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X62_Y44_N30
\Div2|auto_generated|divider|divider|StageOut[21]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\pid|percentual_potencia\(3) & \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(3),
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X62_Y44_N24
\Div2|auto_generated|divider|divider|StageOut[21]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~37_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X62_Y44_N12
\Div2|auto_generated|divider|divider|StageOut[20]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~39_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \pid|percentual_potencia\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \pid|percentual_potencia\(2),
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X62_Y44_N18
\Div2|auto_generated|divider|divider|StageOut[20]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \pid|percentual_potencia\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \pid|percentual_potencia\(2),
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X62_Y44_N0
\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X62_Y44_N2
\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[21]~36_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[21]~37_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[21]~37_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~36_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X62_Y44_N4
\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~35_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~35_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X62_Y44_N6
\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[23]~34_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[23]~47_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y44_N8
\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y44_N20
\dezena_potencia_tmp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_potencia_tmp~8_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\LessThan0~0_combout\) # (!\pid|percentual_potencia\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(5),
	datac => \LessThan0~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \dezena_potencia_tmp~8_combout\);

-- Location: FF_X63_Y44_N21
\dezena_potencia_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_potencia_tmp~8_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_potencia_tmp(1));

-- Location: LCCOMB_X62_Y44_N14
\Div2|auto_generated|divider|divider|StageOut[28]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X62_Y44_N22
\Div2|auto_generated|divider|divider|StageOut[28]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X63_Y44_N26
\Div2|auto_generated|divider|divider|StageOut[27]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X63_Y44_N18
\Div2|auto_generated|divider|divider|StageOut[27]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\pid|percentual_potencia\(3))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(3),
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X62_Y44_N16
\Div2|auto_generated|divider|divider|StageOut[26]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~43_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X63_Y44_N24
\Div2|auto_generated|divider|divider|StageOut[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\pid|percentual_potencia\(2) & \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(2),
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X61_Y43_N28
\pid|percentual_potencia~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~11_combout\ = (\pid|Add3~0_combout\ & (!\pid|percentual_potencia~0_combout\ & !\pid|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~0_combout\,
	datac => \pid|percentual_potencia~0_combout\,
	datad => \pid|Add3~18_combout\,
	combout => \pid|percentual_potencia~11_combout\);

-- Location: LCCOMB_X61_Y43_N26
\pid|percentual_potencia~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pid|percentual_potencia~12_combout\ = (!\pid|Add3~20_combout\ & (!\pid|Add3~22_combout\ & (!\pid|percentual_potencia~1_combout\ & \pid|percentual_potencia~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|Add3~20_combout\,
	datab => \pid|Add3~22_combout\,
	datac => \pid|percentual_potencia~1_combout\,
	datad => \pid|percentual_potencia~11_combout\,
	combout => \pid|percentual_potencia~12_combout\);

-- Location: FF_X61_Y43_N27
\pid|percentual_potencia[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pid~clkctrl_outclk\,
	d => \pid|percentual_potencia~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pid|percentual_potencia\(1));

-- Location: LCCOMB_X63_Y44_N30
\Div2|auto_generated|divider|divider|StageOut[25]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\pid|percentual_potencia\(1) & \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(1),
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X63_Y44_N4
\Div2|auto_generated|divider|divider|StageOut[25]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~45_combout\ = (\pid|percentual_potencia\(1) & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(1),
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X63_Y44_N8
\Div2|auto_generated|divider|divider|op_5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[25]~44_combout\) # (\Div2|auto_generated|divider|divider|StageOut[25]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X63_Y44_N10
\Div2|auto_generated|divider|divider|op_5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[26]~43_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[26]~42_combout\ & !\Div2|auto_generated|divider|divider|op_5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~1_cout\,
	cout => \Div2|auto_generated|divider|divider|op_5~3_cout\);

-- Location: LCCOMB_X63_Y44_N12
\Div2|auto_generated|divider|divider|op_5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|op_5~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~41_combout\) # (\Div2|auto_generated|divider|divider|StageOut[27]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~3_cout\,
	cout => \Div2|auto_generated|divider|divider|op_5~5_cout\);

-- Location: LCCOMB_X63_Y44_N14
\Div2|auto_generated|divider|divider|op_5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[28]~40_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[28]~46_combout\ & !\Div2|auto_generated|divider|divider|op_5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|op_5~5_cout\,
	cout => \Div2|auto_generated|divider|divider|op_5~7_cout\);

-- Location: LCCOMB_X63_Y44_N16
\Div2|auto_generated|divider|divider|op_5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~8_combout\ = \Div2|auto_generated|divider|divider|op_5~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_5~7_cout\,
	combout => \Div2|auto_generated|divider|divider|op_5~8_combout\);

-- Location: LCCOMB_X63_Y44_N22
\dezena_potencia_tmp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_potencia_tmp~9_combout\ = ((\pid|percentual_potencia\(5) & \LessThan0~0_combout\)) # (!\Div2|auto_generated|divider|divider|op_5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(5),
	datac => \LessThan0~0_combout\,
	datad => \Div2|auto_generated|divider|divider|op_5~8_combout\,
	combout => \dezena_potencia_tmp~9_combout\);

-- Location: FF_X63_Y44_N23
\dezena_potencia_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_potencia_tmp~9_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_potencia_tmp(0));

-- Location: LCCOMB_X63_Y44_N28
\dezena_potencia_tmp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_potencia_tmp~6_combout\ = ((\pid|percentual_potencia\(5) & \LessThan0~0_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(5),
	datab => \LessThan0~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \dezena_potencia_tmp~6_combout\);

-- Location: FF_X63_Y44_N29
\dezena_potencia_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_potencia_tmp~6_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_potencia_tmp(3));

-- Location: LCCOMB_X63_Y44_N6
\dezena_potencia_tmp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_potencia_tmp~7_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\LessThan0~0_combout\) # (!\pid|percentual_potencia\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(5),
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \LessThan0~0_combout\,
	combout => \dezena_potencia_tmp~7_combout\);

-- Location: FF_X63_Y44_N7
\dezena_potencia_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_potencia_tmp~7_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_potencia_tmp(2));

-- Location: LCCOMB_X66_Y53_N0
\display_dezena_potencia|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_potencia|out_display[0]~0_combout\ = (dezena_potencia_tmp(1) & (((dezena_potencia_tmp(3))))) # (!dezena_potencia_tmp(1) & (dezena_potencia_tmp(2) $ (((dezena_potencia_tmp(0) & !dezena_potencia_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_potencia_tmp(1),
	datab => dezena_potencia_tmp(0),
	datac => dezena_potencia_tmp(3),
	datad => dezena_potencia_tmp(2),
	combout => \display_dezena_potencia|out_display[0]~0_combout\);

-- Location: LCCOMB_X66_Y53_N22
\display_dezena_potencia|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_potencia|out_display[1]~1_combout\ = (dezena_potencia_tmp(3) & ((dezena_potencia_tmp(1)) # ((dezena_potencia_tmp(2))))) # (!dezena_potencia_tmp(3) & (dezena_potencia_tmp(2) & (dezena_potencia_tmp(1) $ (dezena_potencia_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_potencia_tmp(1),
	datab => dezena_potencia_tmp(0),
	datac => dezena_potencia_tmp(3),
	datad => dezena_potencia_tmp(2),
	combout => \display_dezena_potencia|out_display[1]~1_combout\);

-- Location: LCCOMB_X66_Y53_N24
\display_dezena_potencia|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_potencia|out_display[2]~2_combout\ = (dezena_potencia_tmp(2) & (((!dezena_potencia_tmp(3))))) # (!dezena_potencia_tmp(2) & (((dezena_potencia_tmp(0) & !dezena_potencia_tmp(3))) # (!dezena_potencia_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_potencia_tmp(1),
	datab => dezena_potencia_tmp(0),
	datac => dezena_potencia_tmp(3),
	datad => dezena_potencia_tmp(2),
	combout => \display_dezena_potencia|out_display[2]~2_combout\);

-- Location: LCCOMB_X66_Y53_N2
\display_dezena_potencia|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_potencia|out_display[3]~3_combout\ = (dezena_potencia_tmp(1) & ((dezena_potencia_tmp(3)) # ((dezena_potencia_tmp(0) & dezena_potencia_tmp(2))))) # (!dezena_potencia_tmp(1) & (dezena_potencia_tmp(2) $ (((dezena_potencia_tmp(0) & 
-- !dezena_potencia_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_potencia_tmp(1),
	datab => dezena_potencia_tmp(0),
	datac => dezena_potencia_tmp(3),
	datad => dezena_potencia_tmp(2),
	combout => \display_dezena_potencia|out_display[3]~3_combout\);

-- Location: LCCOMB_X66_Y53_N20
\display_dezena_potencia|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_potencia|out_display[4]~4_combout\ = (dezena_potencia_tmp(0)) # ((dezena_potencia_tmp(1) & (dezena_potencia_tmp(3))) # (!dezena_potencia_tmp(1) & ((dezena_potencia_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_potencia_tmp(1),
	datab => dezena_potencia_tmp(0),
	datac => dezena_potencia_tmp(3),
	datad => dezena_potencia_tmp(2),
	combout => \display_dezena_potencia|out_display[4]~4_combout\);

-- Location: LCCOMB_X66_Y53_N10
\display_dezena_potencia|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_potencia|out_display[5]~5_combout\ = (dezena_potencia_tmp(0) & (!dezena_potencia_tmp(1) & (dezena_potencia_tmp(3) $ (dezena_potencia_tmp(2))))) # (!dezena_potencia_tmp(0) & ((dezena_potencia_tmp(2) & ((!dezena_potencia_tmp(3)))) # 
-- (!dezena_potencia_tmp(2) & (!dezena_potencia_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_potencia_tmp(1),
	datab => dezena_potencia_tmp(0),
	datac => dezena_potencia_tmp(3),
	datad => dezena_potencia_tmp(2),
	combout => \display_dezena_potencia|out_display[5]~5_combout\);

-- Location: LCCOMB_X66_Y53_N12
\display_dezena_potencia|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena_potencia|out_display[6]~6_combout\ = (dezena_potencia_tmp(1) & ((dezena_potencia_tmp(3)) # ((dezena_potencia_tmp(0) & dezena_potencia_tmp(2))))) # (!dezena_potencia_tmp(1) & ((dezena_potencia_tmp(3) $ (!dezena_potencia_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_potencia_tmp(1),
	datab => dezena_potencia_tmp(0),
	datac => dezena_potencia_tmp(3),
	datad => dezena_potencia_tmp(2),
	combout => \display_dezena_potencia|out_display[6]~6_combout\);

-- Location: LCCOMB_X63_Y44_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & \pid|percentual_potencia\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \pid|percentual_potencia\(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y43_N0
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \pid|percentual_potencia\(4) $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\pid|percentual_potencia\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(4),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X62_Y43_N2
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\pid|percentual_potencia\(5) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\pid|percentual_potencia\(5) & 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\pid|percentual_potencia\(5) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(5),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X62_Y43_N4
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\pid|percentual_potencia\(6) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\pid|percentual_potencia\(6) & 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\pid|percentual_potencia\(6) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(6),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X62_Y43_N6
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X63_Y45_N12
\Mod2|auto_generated|divider|divider|StageOut[21]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\pid|percentual_potencia\(3) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X62_Y43_N26
\Mod2|auto_generated|divider|divider|StageOut[21]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~45_combout\ = (\pid|percentual_potencia\(3) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X63_Y45_N2
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[21]~45_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[21]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X62_Y43_N20
\Mod2|auto_generated|divider|divider|StageOut[24]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~39_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X62_Y43_N30
\Mod2|auto_generated|divider|divider|StageOut[24]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\pid|percentual_potencia\(6) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(6),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X62_Y43_N10
\Mod2|auto_generated|divider|divider|StageOut[23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\pid|percentual_potencia\(5) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(5),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X62_Y43_N28
\Mod2|auto_generated|divider|divider|StageOut[23]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X62_Y43_N22
\Mod2|auto_generated|divider|divider|StageOut[22]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\pid|percentual_potencia\(4) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X62_Y43_N12
\Mod2|auto_generated|divider|divider|StageOut[22]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X63_Y45_N4
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X63_Y45_N6
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X63_Y45_N8
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod2|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod2|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X63_Y45_N10
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y45_N26
\Mod2|auto_generated|divider|divider|StageOut[32]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\pid|percentual_potencia\(6)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \pid|percentual_potencia\(6),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X63_Y45_N18
\Mod2|auto_generated|divider|divider|StageOut[32]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~50_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~50_combout\);

-- Location: LCCOMB_X62_Y45_N22
\Mod2|auto_generated|divider|divider|StageOut[31]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\pid|percentual_potencia\(5))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(5),
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\);

-- Location: LCCOMB_X63_Y45_N0
\Mod2|auto_generated|divider|divider|StageOut[31]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~51_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~51_combout\);

-- Location: LCCOMB_X63_Y45_N20
\Mod2|auto_generated|divider|divider|StageOut[30]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\pid|percentual_potencia\(4))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \pid|percentual_potencia\(4),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\);

-- Location: LCCOMB_X63_Y45_N14
\Mod2|auto_generated|divider|divider|StageOut[30]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~52_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~52_combout\);

-- Location: LCCOMB_X63_Y45_N30
\Mod2|auto_generated|divider|divider|StageOut[29]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\);

-- Location: LCCOMB_X62_Y45_N20
\Mod2|auto_generated|divider|divider|StageOut[29]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\ = (\pid|percentual_potencia\(3) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(3),
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\);

-- Location: LCCOMB_X62_Y45_N30
\Mod2|auto_generated|divider|divider|StageOut[28]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~48_combout\ = (\pid|percentual_potencia\(2) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(2),
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~48_combout\);

-- Location: LCCOMB_X63_Y45_N28
\Mod2|auto_generated|divider|divider|StageOut[28]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~49_combout\ = (\pid|percentual_potencia\(2) & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pid|percentual_potencia\(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~49_combout\);

-- Location: LCCOMB_X62_Y45_N4
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[28]~48_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[28]~49_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[28]~48_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[28]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[28]~48_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[28]~49_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X62_Y45_N6
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X62_Y45_N8
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[30]~52_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[30]~52_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[30]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[30]~52_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X62_Y45_N10
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[31]~51_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[31]~51_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~51_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[31]~51_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X62_Y45_N12
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[32]~50_combout\))))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[32]~50_combout\) # (GND))))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[32]~50_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[32]~50_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X62_Y45_N14
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X61_Y45_N10
\Mod2|auto_generated|divider|divider|StageOut[37]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[37]~67_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\pid|percentual_potencia\(3))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(3),
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[37]~67_combout\);

-- Location: LCCOMB_X62_Y45_N18
\Mod2|auto_generated|divider|divider|StageOut[37]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[37]~53_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[37]~53_combout\);

-- Location: LCCOMB_X61_Y45_N6
\Mod2|auto_generated|divider|divider|StageOut[36]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[36]~54_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \pid|percentual_potencia\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \pid|percentual_potencia\(2),
	combout => \Mod2|auto_generated|divider|divider|StageOut[36]~54_combout\);

-- Location: LCCOMB_X62_Y45_N28
\Mod2|auto_generated|divider|divider|StageOut[36]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[36]~55_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[36]~55_combout\);

-- Location: LCCOMB_X61_Y45_N30
\Mod2|auto_generated|divider|divider|StageOut[35]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[35]~57_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \pid|percentual_potencia\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \pid|percentual_potencia\(1),
	combout => \Mod2|auto_generated|divider|divider|StageOut[35]~57_combout\);

-- Location: LCCOMB_X61_Y45_N4
\Mod2|auto_generated|divider|divider|StageOut[35]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[35]~56_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \pid|percentual_potencia\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \pid|percentual_potencia\(1),
	combout => \Mod2|auto_generated|divider|divider|StageOut[35]~56_combout\);

-- Location: LCCOMB_X61_Y45_N16
\Mod2|auto_generated|divider|divider|op_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[35]~56_combout\)))
-- \Mod2|auto_generated|divider|divider|op_5~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[35]~57_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[35]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[35]~57_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[35]~56_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X61_Y45_N18
\Mod2|auto_generated|divider|divider|op_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~2_combout\ = (\Mod2|auto_generated|divider|divider|op_5~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[36]~54_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[36]~55_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|op_5~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[36]~54_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[36]~55_combout\)))
-- \Mod2|auto_generated|divider|divider|op_5~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[36]~54_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[36]~55_combout\ & !\Mod2|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[36]~55_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_5~1\,
	combout => \Mod2|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X61_Y45_N20
\Mod2|auto_generated|divider|divider|op_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~4_combout\ = (\Mod2|auto_generated|divider|divider|op_5~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[37]~67_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[37]~53_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|op_5~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[37]~67_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[37]~53_combout\)))))
-- \Mod2|auto_generated|divider|divider|op_5~5\ = CARRY((!\Mod2|auto_generated|divider|divider|op_5~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[37]~67_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[37]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[37]~67_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[37]~53_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_5~3\,
	combout => \Mod2|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X62_Y45_N0
\unidade_potencia_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_potencia_tmp~0_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[29]~47_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[29]~46_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \unidade_potencia_tmp~0_combout\);

-- Location: LCCOMB_X62_Y45_N2
\Mod2|auto_generated|divider|divider|StageOut[40]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[40]~58_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X61_Y45_N2
\Mod2|auto_generated|divider|divider|StageOut[40]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[40]~61_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[40]~61_combout\);

-- Location: LCCOMB_X61_Y45_N12
\Mod2|auto_generated|divider|divider|StageOut[39]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[39]~59_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[39]~59_combout\);

-- Location: LCCOMB_X62_Y45_N16
\Mod2|auto_generated|divider|divider|StageOut[39]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[39]~62_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[31]~65_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[39]~62_combout\);

-- Location: LCCOMB_X63_Y45_N16
\Mod2|auto_generated|divider|divider|StageOut[38]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[38]~63_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[30]~66_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[38]~63_combout\);

-- Location: LCCOMB_X62_Y45_N24
\Mod2|auto_generated|divider|divider|StageOut[38]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[38]~60_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[38]~60_combout\);

-- Location: LCCOMB_X61_Y45_N22
\Mod2|auto_generated|divider|divider|op_5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[38]~63_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[38]~60_combout\ & !\Mod2|auto_generated|divider|divider|op_5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[38]~63_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[38]~60_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_5~5\,
	cout => \Mod2|auto_generated|divider|divider|op_5~7_cout\);

-- Location: LCCOMB_X61_Y45_N24
\Mod2|auto_generated|divider|divider|op_5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[39]~59_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[39]~62_combout\) # (!\Mod2|auto_generated|divider|divider|op_5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[39]~59_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[39]~62_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_5~7_cout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X61_Y45_N26
\Mod2|auto_generated|divider|divider|op_5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~11_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[40]~58_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[40]~61_combout\ & !\Mod2|auto_generated|divider|divider|op_5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[40]~61_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_5~9_cout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~11_cout\);

-- Location: LCCOMB_X61_Y45_N28
\Mod2|auto_generated|divider|divider|op_5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~12_combout\ = \Mod2|auto_generated|divider|divider|op_5~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|op_5~11_cout\,
	combout => \Mod2|auto_generated|divider|divider|op_5~12_combout\);

-- Location: LCCOMB_X61_Y45_N0
\unidade_potencia_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_potencia_tmp~1_combout\ = (\LessThan0~1_combout\) # ((\Mod2|auto_generated|divider|divider|op_5~12_combout\ & ((\unidade_potencia_tmp~0_combout\))) # (!\Mod2|auto_generated|divider|divider|op_5~12_combout\ & 
-- (\Mod2|auto_generated|divider|divider|op_5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Mod2|auto_generated|divider|divider|op_5~4_combout\,
	datac => \unidade_potencia_tmp~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_5~12_combout\,
	combout => \unidade_potencia_tmp~1_combout\);

-- Location: FF_X61_Y45_N1
\unidade_potencia_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \unidade_potencia_tmp~1_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_potencia_tmp(3));

-- Location: LCCOMB_X62_Y45_N26
\unidade_potencia_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_potencia_tmp~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\pid|percentual_potencia\(2))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pid|percentual_potencia\(2),
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \unidade_potencia_tmp~2_combout\);

-- Location: LCCOMB_X61_Y45_N14
\unidade_potencia_tmp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_potencia_tmp~3_combout\ = (!\LessThan0~1_combout\ & ((\Mod2|auto_generated|divider|divider|op_5~12_combout\ & ((\unidade_potencia_tmp~2_combout\))) # (!\Mod2|auto_generated|divider|divider|op_5~12_combout\ & 
-- (\Mod2|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Mod2|auto_generated|divider|divider|op_5~2_combout\,
	datac => \unidade_potencia_tmp~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_5~12_combout\,
	combout => \unidade_potencia_tmp~3_combout\);

-- Location: FF_X61_Y45_N15
\unidade_potencia_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \unidade_potencia_tmp~3_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_potencia_tmp(2));

-- Location: LCCOMB_X61_Y45_N8
\unidade_potencia_tmp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_potencia_tmp~4_combout\ = (!\LessThan0~1_combout\ & ((\Mod2|auto_generated|divider|divider|op_5~12_combout\ & (\pid|percentual_potencia\(1))) # (!\Mod2|auto_generated|divider|divider|op_5~12_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|op_5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pid|percentual_potencia\(1),
	datab => \Mod2|auto_generated|divider|divider|op_5~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_5~12_combout\,
	combout => \unidade_potencia_tmp~4_combout\);

-- Location: FF_X61_Y45_N9
\unidade_potencia_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \unidade_potencia_tmp~4_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_potencia_tmp(1));

-- Location: LCCOMB_X63_Y45_N24
\unidade_potencia_tmp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_potencia_tmp[0]~feeder_combout\ = \LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~1_combout\,
	combout => \unidade_potencia_tmp[0]~feeder_combout\);

-- Location: FF_X63_Y45_N25
\unidade_potencia_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \unidade_potencia_tmp[0]~feeder_combout\,
	ena => \Equal4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_potencia_tmp(0));

-- Location: LCCOMB_X67_Y50_N4
\display_unidade_potencia|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_potencia|out_display[0]~0_combout\ = (unidade_potencia_tmp(1) & (unidade_potencia_tmp(3))) # (!unidade_potencia_tmp(1) & (unidade_potencia_tmp(2) $ (((!unidade_potencia_tmp(3) & unidade_potencia_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_potencia_tmp(3),
	datab => unidade_potencia_tmp(2),
	datac => unidade_potencia_tmp(1),
	datad => unidade_potencia_tmp(0),
	combout => \display_unidade_potencia|out_display[0]~0_combout\);

-- Location: LCCOMB_X67_Y50_N14
\display_unidade_potencia|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_potencia|out_display[1]~1_combout\ = (unidade_potencia_tmp(3) & ((unidade_potencia_tmp(2)) # ((unidade_potencia_tmp(1))))) # (!unidade_potencia_tmp(3) & (unidade_potencia_tmp(2) & (unidade_potencia_tmp(1) $ (unidade_potencia_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_potencia_tmp(3),
	datab => unidade_potencia_tmp(2),
	datac => unidade_potencia_tmp(1),
	datad => unidade_potencia_tmp(0),
	combout => \display_unidade_potencia|out_display[1]~1_combout\);

-- Location: LCCOMB_X67_Y50_N16
\display_unidade_potencia|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_potencia|out_display[2]~2_combout\ = (unidade_potencia_tmp(2) & (!unidade_potencia_tmp(3))) # (!unidade_potencia_tmp(2) & (((!unidade_potencia_tmp(3) & unidade_potencia_tmp(0))) # (!unidade_potencia_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_potencia_tmp(3),
	datab => unidade_potencia_tmp(2),
	datac => unidade_potencia_tmp(1),
	datad => unidade_potencia_tmp(0),
	combout => \display_unidade_potencia|out_display[2]~2_combout\);

-- Location: LCCOMB_X67_Y50_N2
\display_unidade_potencia|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_potencia|out_display[3]~3_combout\ = (unidade_potencia_tmp(1) & ((unidade_potencia_tmp(3)) # ((unidade_potencia_tmp(2) & unidade_potencia_tmp(0))))) # (!unidade_potencia_tmp(1) & (unidade_potencia_tmp(2) $ (((!unidade_potencia_tmp(3) & 
-- unidade_potencia_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_potencia_tmp(3),
	datab => unidade_potencia_tmp(2),
	datac => unidade_potencia_tmp(1),
	datad => unidade_potencia_tmp(0),
	combout => \display_unidade_potencia|out_display[3]~3_combout\);

-- Location: LCCOMB_X67_Y50_N28
\display_unidade_potencia|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_potencia|out_display[4]~4_combout\ = (unidade_potencia_tmp(0)) # ((unidade_potencia_tmp(1) & (unidade_potencia_tmp(3))) # (!unidade_potencia_tmp(1) & ((unidade_potencia_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_potencia_tmp(3),
	datab => unidade_potencia_tmp(2),
	datac => unidade_potencia_tmp(1),
	datad => unidade_potencia_tmp(0),
	combout => \display_unidade_potencia|out_display[4]~4_combout\);

-- Location: LCCOMB_X67_Y50_N10
\display_unidade_potencia|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_potencia|out_display[5]~5_combout\ = (unidade_potencia_tmp(2) & (!unidade_potencia_tmp(3) & ((!unidade_potencia_tmp(0)) # (!unidade_potencia_tmp(1))))) # (!unidade_potencia_tmp(2) & (!unidade_potencia_tmp(1) & ((unidade_potencia_tmp(3)) # 
-- (!unidade_potencia_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_potencia_tmp(3),
	datab => unidade_potencia_tmp(2),
	datac => unidade_potencia_tmp(1),
	datad => unidade_potencia_tmp(0),
	combout => \display_unidade_potencia|out_display[5]~5_combout\);

-- Location: LCCOMB_X67_Y50_N12
\display_unidade_potencia|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade_potencia|out_display[6]~6_combout\ = (unidade_potencia_tmp(2) & ((unidade_potencia_tmp(3)) # ((unidade_potencia_tmp(1) & unidade_potencia_tmp(0))))) # (!unidade_potencia_tmp(2) & (unidade_potencia_tmp(3) $ ((!unidade_potencia_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_potencia_tmp(3),
	datab => unidade_potencia_tmp(2),
	datac => unidade_potencia_tmp(1),
	datad => unidade_potencia_tmp(0),
	combout => \display_unidade_potencia|out_display[6]~6_combout\);

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

ww_pid_ativo <= \pid_ativo~output_o\;

ww_dezena_set_point(0) <= \dezena_set_point[0]~output_o\;

ww_dezena_set_point(1) <= \dezena_set_point[1]~output_o\;

ww_dezena_set_point(2) <= \dezena_set_point[2]~output_o\;

ww_dezena_set_point(3) <= \dezena_set_point[3]~output_o\;

ww_dezena_set_point(4) <= \dezena_set_point[4]~output_o\;

ww_dezena_set_point(5) <= \dezena_set_point[5]~output_o\;

ww_dezena_set_point(6) <= \dezena_set_point[6]~output_o\;

ww_unidade_set_point(0) <= \unidade_set_point[0]~output_o\;

ww_unidade_set_point(1) <= \unidade_set_point[1]~output_o\;

ww_unidade_set_point(2) <= \unidade_set_point[2]~output_o\;

ww_unidade_set_point(3) <= \unidade_set_point[3]~output_o\;

ww_unidade_set_point(4) <= \unidade_set_point[4]~output_o\;

ww_unidade_set_point(5) <= \unidade_set_point[5]~output_o\;

ww_unidade_set_point(6) <= \unidade_set_point[6]~output_o\;

ww_dezena_temperatura(0) <= \dezena_temperatura[0]~output_o\;

ww_dezena_temperatura(1) <= \dezena_temperatura[1]~output_o\;

ww_dezena_temperatura(2) <= \dezena_temperatura[2]~output_o\;

ww_dezena_temperatura(3) <= \dezena_temperatura[3]~output_o\;

ww_dezena_temperatura(4) <= \dezena_temperatura[4]~output_o\;

ww_dezena_temperatura(5) <= \dezena_temperatura[5]~output_o\;

ww_dezena_temperatura(6) <= \dezena_temperatura[6]~output_o\;

ww_unidade_temperatura(0) <= \unidade_temperatura[0]~output_o\;

ww_unidade_temperatura(1) <= \unidade_temperatura[1]~output_o\;

ww_unidade_temperatura(2) <= \unidade_temperatura[2]~output_o\;

ww_unidade_temperatura(3) <= \unidade_temperatura[3]~output_o\;

ww_unidade_temperatura(4) <= \unidade_temperatura[4]~output_o\;

ww_unidade_temperatura(5) <= \unidade_temperatura[5]~output_o\;

ww_unidade_temperatura(6) <= \unidade_temperatura[6]~output_o\;

ww_dezena_potencia(0) <= \dezena_potencia[0]~output_o\;

ww_dezena_potencia(1) <= \dezena_potencia[1]~output_o\;

ww_dezena_potencia(2) <= \dezena_potencia[2]~output_o\;

ww_dezena_potencia(3) <= \dezena_potencia[3]~output_o\;

ww_dezena_potencia(4) <= \dezena_potencia[4]~output_o\;

ww_dezena_potencia(5) <= \dezena_potencia[5]~output_o\;

ww_dezena_potencia(6) <= \dezena_potencia[6]~output_o\;

ww_unidade_potencia(0) <= \unidade_potencia[0]~output_o\;

ww_unidade_potencia(1) <= \unidade_potencia[1]~output_o\;

ww_unidade_potencia(2) <= \unidade_potencia[2]~output_o\;

ww_unidade_potencia(3) <= \unidade_potencia[3]~output_o\;

ww_unidade_potencia(4) <= \unidade_potencia[4]~output_o\;

ww_unidade_potencia(5) <= \unidade_potencia[5]~output_o\;

ww_unidade_potencia(6) <= \unidade_potencia[6]~output_o\;
END structure;


