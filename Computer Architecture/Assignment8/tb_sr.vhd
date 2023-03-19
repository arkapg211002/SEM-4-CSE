--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:52:46 03/19/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/Flip-flop/sr/tb_sr.vhd
-- Project Name:  sr
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: srff
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
 
ENTITY tb_sr IS
END tb_sr;
 
ARCHITECTURE behavior OF tb_sr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT srff
    PORT(
         s : IN  std_logic;
         r : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qb : std_logic;

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: srff PORT MAP (
          s => s,
          r => r,
          rst => rst,
          clk => clk,
          q => q,
          qb => qb
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for 1 ps;
		clk <= '0';
		wait for 1 ps;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst<='0';
		s<='0';
		r<='0';
		wait for 2 ps;
		s<='0';
		r<='1';
		wait for 2 ps;
		s<='0';
		r<='0';
		wait for 2 ps;
		s<='1';
		r<='0';
		wait for 2 ps;
		s<='0';
		r<='0';
		wait for 2 ps;
		s<='1';
		r<='1';
		wait for 2 ps;
   end process;

END;
