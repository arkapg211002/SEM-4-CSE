--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:07:32 03/25/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/Shift register/SIPOnew/tb_sipo_new.vhd
-- Project Name:  SIPOnew
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo_new
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
 
ENTITY tb_sipo_new IS
END tb_sipo_new;
 
ARCHITECTURE behavior OF tb_sipo_new IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo_new
    PORT(
         clock : IN  std_logic;
         sin : IN  std_logic;
         p0 : OUT  std_logic;
         p1 : OUT  std_logic;
         p2 : OUT  std_logic;
         p3 : OUT  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal sin : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal p0 : std_logic;
   signal p1 : std_logic;
   signal p2 : std_logic;
   signal p3 : std_logic;

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo_new PORT MAP (
          clock => clock,
          sin => sin,
          p0 => p0,
          p1 => p1,
          p2 => p2,
          p3 => p3,
          reset => reset
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '1';
		wait for clock_period/2;
		clock <= '0';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      sin<='1';
		wait for clock_period;
   end process;

END;
