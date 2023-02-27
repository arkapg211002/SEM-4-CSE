--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:43:51 02/22/2023
-- Design Name:   
-- Module Name:   /home/ise/Desktop/AndGate/Andgateise/And_time.vhd
-- Project Name:  Andgateise
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AndRTL
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
 
ENTITY And_time IS
END And_time;
 
ARCHITECTURE behavior OF And_time IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AndRTL
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AndRTL PORT MAP (
          A => A,
          B => B,
          Y => Y
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
     A<='0';
	  B<='0';
	  wait for 1 ps;
	  A<='0';
	  B<='1';
	  wait for 1 ps;
	  A<='1';
	  B<='0';
	  wait for 1 ps;
	  A<='1';
	  B<='1';
	  wait for 1 ps;
   end process;

END;