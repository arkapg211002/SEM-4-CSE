--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:02:30 05/19/2023
-- Design Name:   
-- Module Name:   /home/pinaki/Desktop/13000121003/D_to_jk_ff/D_to_jk_test.vhd
-- Project Name:  D_to_jk_ff
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_to_jk_ff
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
 
ENTITY D_to_jk_test IS
END D_to_jk_test;
 
ARCHITECTURE behavior OF D_to_jk_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_to_jk_ff
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         CLK : IN  std_logic;
         CLEAR : IN  std_logic;
         Q_out : OUT  std_logic;
         Q_bar_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';
   signal CLEAR : std_logic := '0';

 	--Outputs
   signal Q_out : std_logic;
   signal Q_bar_out : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_to_jk_ff PORT MAP (
          J => J,
          K => K,
          CLK => CLK,
          CLEAR => CLEAR,
          Q_out => Q_out,
          Q_bar_out => Q_bar_out
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 1 ps;
      J<='0';
		K<='0';
		CLEAR<='0';
		wait for 2 ps;
		J<='0';
		K<='1';
		wait for 2 ps;
		J<='1';
		K<='0';
		wait for 2 ps;
		J<='1';
		K<='1';
   end process;

END;
