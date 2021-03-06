--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:48:15 12/08/2014
-- Design Name:   
-- Module Name:   C:/Users/Rodrigo/Documents/Curso_ICTP/Lab4_DivisorFrecuencia/divisorFrecuencia_tb.vhd
-- Project Name:  Lab4_DivisorFrecuencia
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divisorFrecuencia_mod
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY divisorFrecuencia_tb IS
END divisorFrecuencia_tb;
 
ARCHITECTURE behavior OF divisorFrecuencia_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divisorFrecuencia_mod
		port (
			clk, rst : in std_logic;
			clk_out : out std_logic
		);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	signal rst : std_logic := '1';
 	
	--Outputs
   signal clk_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divisorFrecuencia_mod PORT MAP (
          clk => clk,
          clk_out => clk_out,
			 rst => rst
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
		rst <= '1';
		wait for clk_period;
		rst <= '0';
		wait for clk_period;
		rst <= '1';
		
		wait for clk_period*30;
      -- insert stimulus here 

      wait;
   end process;

END;
