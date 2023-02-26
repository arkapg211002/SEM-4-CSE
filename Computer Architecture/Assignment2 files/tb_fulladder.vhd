--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:11:20 02/26/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/FAfromHA/FAHA/tb_fulladder.vhd
-- Project Name:  FAHA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladder
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
 
ENTITY tb_fulladder IS
END tb_fulladder;
 
ARCHITECTURE behavior OF tb_fulladder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder
    PORT(
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder PORT MAP (
          x1 => x1,
          x2 => x2,
          cin => cin,
          sum => sum,
          carry => carry
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
     x1<='0';
	  x2<='0';
	  cin<='0';
	  wait for 1 ps;
	  x1<='0';
	  x2<='0';
	  cin<='1';
	  wait for 1 ps;
	  x1<='0';
	  x2<='1';
	  cin<='0';
	  wait for 1 ps;
	  x1<='0';
	  x2<='1';
	  cin<='1';
	  wait for 1 ps;
	  x1<='1';
	  x2<='0';
	  cin<='0';
	  wait for 1 ps;
	  x1<='1';
	  x2<='0';
	  cin<='1';
	  wait for 1 ps;
	  x1<='1';
	  x2<='1';
	  cin<='0';
	  wait for 1 ps;
	  x1<='1';
	  x2<='1';
	  cin<='1';
	  wait for 1 ps;
   end process;
   

END;
