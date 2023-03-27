--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:02:01 03/27/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121058/JK/tb_jkff.vhd
-- Project Name:  JK
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jkff
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
 
ENTITY tb_jkff IS
END tb_jkff;
 
ARCHITECTURE behavior OF tb_jkff IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jkff
    PORT(
         clk : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic;
         q : INOUT  std_logic;
         qb : INOUT  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal rst : std_logic := '0';

	--BiDirs
   signal q : std_logic;
   signal qb : std_logic;

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jkff PORT MAP (
          clk => clk,
          j => j,
          k => k,
          q => q,
          qb => qb,
          rst => rst
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 1 ps;
		clk <= '1';
		wait for 1 ps;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst<='0';
		j<='0';
		k<='0';
		wait for 2 ps;
		j<='0';
		k<='1';
		wait for 2 ps;
		j<='0';
		k<='0';
		wait for 2 ps;
		j<='1';
		k<='0';
		wait for 2 ps;
		j<='0';
		k<='0';
		wait for 2 ps;
		j<='1';
		k<='1';
		wait for 2 ps;
   end process;

END;
