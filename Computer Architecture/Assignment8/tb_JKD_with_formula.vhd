--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:24:06 05/19/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/jk with d/JKD/tb_jkd.vhd
-- Project Name:  JKD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jkd
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
 
ENTITY tb_jkd IS
END tb_jkd;
 
ARCHITECTURE behavior OF tb_jkd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jkd
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic;
         Qout : INOUT  std_logic;
         QBout : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';

	--BiDirs
   signal Qout : std_logic;
   signal QBout : std_logic;

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jkd PORT MAP (
          clock => clock,
          reset => reset,
          j => j,
          k => k,
          Qout => Qout,
          QBout => QBout
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset<='0';
		
		j<='0';
		k<='0';
		wait for 2 ps;
		
		j<='0';
		k<='1';
		wait for 2 ps;
		
		j<='1';
		k<='0';
		wait for 2 ps;
		
		j<='1';
		k<='1';
		wait for 2 ps;
   end process;

END;
