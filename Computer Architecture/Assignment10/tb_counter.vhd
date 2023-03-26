--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:30:38 03/26/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/up-down counter/counter/tb_UDC.vhd
-- Project Name:  counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UDC
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
 
ENTITY tb_UDC IS
END tb_UDC;
 
ARCHITECTURE behavior OF tb_UDC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UDC
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         m : IN  std_logic;
         q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal m : std_logic := '0';

	--BiDirs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UDC PORT MAP (
          clk => clk,
          reset => reset,
          m => m,
          q => q
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
      reset<='0';
		m<='0';
		wait for clk_period*15;
		m<='1';
		wait for clk_period*15;
   end process;

END;
