--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:14:27 03/11/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/comparator/comparator4bit/tb_comparator.vhd
-- Project Name:  comparator4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator
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
 
    COMPONENT comparator
    PORT(
         x1 : IN  std_logic_vector(3 downto 0);
         x2 : IN  std_logic_vector(3 downto 0);
         g : OUT  std_logic;
         e : OUT  std_logic;
         l : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic_vector(3 downto 0) := (others => '0');
   signal x2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal g : std_logic;
   signal e : std_logic;
   signal l : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator PORT MAP (
          x1 => x1,
          x2 => x2,
          g => g,
          e => e,
          l => l
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      x1<="1001";
		x2<="1000";
		wait for 1 ps;
		x1<="1000";
		x2<="1001";
		wait for 1 ps;
		x1<="1001";
		x2<="1001";
		wait for 1 ps;
		
   end process;

END;
