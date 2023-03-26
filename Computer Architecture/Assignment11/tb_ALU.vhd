--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:17:11 03/26/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/ALU/ALU4bit/tb_alu.vhd
-- Project Name:  ALU4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY tb_alu IS
END tb_alu;
 
ARCHITECTURE behavior OF tb_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         s : IN  std_logic_vector(3 downto 0);
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         f : OUT  std_logic_vector(3 downto 0);
         cin : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(3 downto 0) := (others => '0');
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal f : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          s => s,
          a => a,
          b => b,
          f => f,
          cin => cin
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      s<="0000";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;		
		s<="0000";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		
		s<="0001";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;		
		s<="0001";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		
		s<="0010";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;		
		s<="0010";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		
		s<="0011";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		s<="0011";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		
		s<="0100";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		
		s<="0101";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		
		s<="0110";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		
		s<="0111";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		
		s<="1000";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		
		s<="1010";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		
   end process;

END;
