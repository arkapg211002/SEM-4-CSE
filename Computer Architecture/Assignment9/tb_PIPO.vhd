--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:24:58 03/25/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/Shift register/PIPO/tb_pipo.vhd
-- Project Name:  PIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PIPO
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
 
ENTITY tb_pipo IS
END tb_pipo;
 
ARCHITECTURE behavior OF tb_pipo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PIPO
    PORT(
         clock : IN  std_logic;
         i : IN  std_logic_vector(3 downto 0);
         s : OUT  std_logic_vector(3 downto 0);
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal i : std_logic_vector(3 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PIPO PORT MAP (
          clock => clock,
          i => i,
          s => s,
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
		i<="1101";
		wait for clock_period;
   end process;

END;
