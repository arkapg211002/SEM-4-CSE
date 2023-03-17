--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:12:09 03/12/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/DeMUX1to4/Demux/tb_demux.vhd
-- Project Name:  Demux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux1to4
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
 
ENTITY tb_demux IS
END tb_demux;
 
ARCHITECTURE behavior OF tb_demux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux1to4
    PORT(
         i : IN  std_logic;
         s : IN  std_logic_vector(2 downto 0);
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
			e : OUT  std_logic;
			f : OUT  std_logic;
			g : OUT  std_logic;
			h : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal a : std_logic;
   signal b : std_logic;
   signal c : std_logic;
   signal d : std_logic;
	signal e : std_logic;
	signal f : std_logic;
	signal g : std_logic;
	signal h : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux1to4 PORT MAP (
          i => i,
          s => s,
          a => a,
          b => b,
          c => c,
          d => d,
			 e => e,
			 f => f,
			 g => g,
			 h => h
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      i<='1';
		s<="000";
		wait for 1 ps;
		i<='1';
		s<="001";
		wait for 1 ps;
		i<='1';
		s<="010";
		wait for 1 ps;
		i<='1';
		s<="011";
		wait for 1 ps;		
		i<='1';
		s<="100";
		wait for 1 ps;
		i<='1';
		s<="101";
		wait for 1 ps;
		i<='1';
		s<="110";
		wait for 1 ps;
		i<='1';
		s<="111";
		wait for 1 ps;
		
   end process;

END;
