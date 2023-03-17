--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:21:45 03/17/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/MUX4to1/Mux/tb_mux.vhd
-- Project Name:  Mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX8to1
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
 
ENTITY tb_mux IS
END tb_mux;
 
ARCHITECTURE behavior OF tb_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX8to1
    PORT(
         p : IN  std_logic_vector(7 downto 0);
         s : IN  std_logic_vector(2 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic_vector(7 downto 0) := (others => '0');
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX8to1 PORT MAP (
          p => p,
          s => s,
          y => y
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      p<= "10101011";
		s<= "000";
		wait for 1 ps;
		p<= "10101011";
		s<= "001";
		wait for 1 ps;
		p<= "10101011";
		s<= "010";
		wait for 1 ps;
		p<= "10101011";
		s<= "011";
		wait for 1 ps;
		p<= "10101011";
		s<= "100";
		wait for 1 ps;
		p<= "10101011";
		s<= "101";
		wait for 1 ps;
		p<= "10101011";
		s<= "110";
		wait for 1 ps;
		p<= "10101011";
		s<= "111";
		wait for 1 ps;
   end process;

END;
