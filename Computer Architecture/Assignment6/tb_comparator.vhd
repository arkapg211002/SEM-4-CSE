--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:41 03/13/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121058/AddderSubtractor/comparator/comparator4bit/tb_comparator.vhd
-- Project Name:  comparator4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp4bit
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
 
ENTITY tb_comparator IS
END tb_comparator;
 
ARCHITECTURE behavior OF tb_comparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp4bit
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         g : OUT  std_logic;
         e : OUT  std_logic;
         l : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal g : std_logic;
   signal e : std_logic;
   signal l : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp4bit PORT MAP (
          a => a,
          b => b,
          g => g,
          e => e,
          l => l
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      a<="1100";
		b<="1001";
		wait for 1 ps;
		a<="1000";
		b<="1001";
		wait for 1 ps;
		a<="1001";
		b<="1001";
		wait for 1 ps;
   end process;

END;
