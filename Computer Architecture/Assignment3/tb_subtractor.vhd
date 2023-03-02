--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:30:27 02/27/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121033/CSub/NS_test.vhd
-- Project Name:  CSub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CFSub_rt
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
 
ENTITY NS_test IS
END NS_test;
 
ARCHITECTURE behavior OF NS_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CFSub_rt
    PORT(
         P1 : IN  std_logic_vector(3 downto 0);
         P2 : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic;
         Diff : OUT  std_logic_vector(3 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal P1 : std_logic_vector(3 downto 0) := (others => '0');
   signal P2 : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal Diff : std_logic_vector(3 downto 0);
   signal Bout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CFSub_rt PORT MAP (
          P1 => P1,
          P2 => P2,
          Bin => Bin,
          Diff => Diff,
          Bout => Bout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      P1<="1100";P2<="1001";Bin<='0';
      wait for 1 ps;
		P1<="1100";P2<="1001";Bin<='1';
		wait for 1 ps;
		P1<="0101";P2<="0111";Bin<='0';
      wait for 1 ps;
		P1<="0101";P2<="0111";Bin<='1';
		wait for 1 ps;

   end process;

END;
