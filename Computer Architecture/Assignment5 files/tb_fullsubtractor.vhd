--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:35:49 02/26/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/FSfromHS/FSwithHS/tb_fullsubtractor.vhd
-- Project Name:  FSwithHS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullsubtractor
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
 
ENTITY tb_fullsubtractor IS
END tb_fullsubtractor;
 
ARCHITECTURE behavior OF tb_fullsubtractor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullsubtractor
    PORT(
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         cin : IN  std_logic;
         dout : OUT  std_logic;
         bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal dout : std_logic;
   signal bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullsubtractor PORT MAP (
          x1 => x1,
          x2 => x2,
          cin => cin,
          dout => dout,
          bout => bout
        );

   -- Clock process definitions
   
 

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
