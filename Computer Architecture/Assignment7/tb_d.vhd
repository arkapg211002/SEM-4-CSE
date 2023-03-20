--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:17 03/20/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121058/Demux1to8/tb_d.vhd
-- Project Name:  Demux1to8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux1to8
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
 
ENTITY tb_d IS
END tb_d;
 
ARCHITECTURE behavior OF tb_d IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux1to8
    PORT(
         i : IN  std_logic;
         s : IN  std_logic_vector(2 downto 0);
         o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux1to8 PORT MAP (
          i => i,
          s => s,
          o => o
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
