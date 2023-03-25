--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:31:33 03/25/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/Shift register/SIPO/tb_sipo.vhd
-- Project Name:  SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo
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
 
ENTITY tb_sipo IS
END tb_sipo;
 
ARCHITECTURE behavior OF tb_sipo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo
    PORT(
         clock : IN  std_logic;
         sin : IN  std_logic;
         p : INOUT  std_logic_vector(3 downto 0):=(others=>'0');
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal sin : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal p : std_logic_vector(3 downto 0):=(others=>'0');

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo PORT MAP (
          clock => clock,
          sin => sin,
          p => p,
          reset => reset
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '1';
		wait for clock_period/2;
		clock <= '0';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset<='0';
		sin<='1';
		wait for clock_period;
   end process;

END;
