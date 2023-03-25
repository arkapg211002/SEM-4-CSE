--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:35:42 03/25/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/Shift register/SISO/tb_siso.vhd
-- Project Name:  SISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: siso
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
 
ENTITY tb_siso IS
END tb_siso;
 
ARCHITECTURE behavior OF tb_siso IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT siso
    PORT(
         clock : IN  std_logic;
         sin : IN  std_logic;
         sout : OUT  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal sin : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal sout : std_logic;

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: siso PORT MAP (
          clock => clock,
          sin => sin,
          sout => sout,
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
      reset<='0';
		--sin<='0';
		--wait for clock_period;
		sin<='1';
		wait for clock_period;
   end process;

END;
