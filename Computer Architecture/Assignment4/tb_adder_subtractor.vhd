--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:42:14 03/11/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/AdderSubtractor/adder-subtractor/tb_adder_subtractor.vhd
-- Project Name:  adder-subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_subtractor
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
 
ENTITY tb_adder_subtractor IS
END tb_adder_subtractor;
 
ARCHITECTURE behavior OF tb_adder_subtractor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_subtractor
    PORT(
         x1 : IN  std_logic_vector(3 downto 0);
         x2 : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic_vector(3 downto 0) := (others => '0');
   signal x2 : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_subtractor PORT MAP (
          x1 => x1,
          x2 => x2,
          cin => cin,
          s => s,
          cout => cout
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      x1<="1001";
		x2<="1100";
		cin<='0';
		wait for 1 ps;
		x1<="1001";
		x2<="1100";
		cin<='1';
		wait for 1 ps;
		x1<="1011";
		x2<="1000";
		cin<='0';
		wait for 1 ps;
		x1<="1011";
		x2<="1000";
		cin<='1';
		wait for 1 ps;
   end process;

END;
