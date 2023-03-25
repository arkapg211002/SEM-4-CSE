--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:08:03 03/25/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/Shift register/PISO/tb_piso.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piso
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
 
ENTITY tb_piso IS
END tb_piso;
 
ARCHITECTURE behavior OF tb_piso IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT piso
    PORT(
         clock : IN  std_logic;
         i : IN  std_logic_vector(3 downto 0);
         load : IN  std_logic;
         sout : OUT  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal i : std_logic_vector(3 downto 0) := (others => '0');
   signal load : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal sout : std_logic;

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso PORT MAP (
          clock => clock,
          i => i,
          load => load,
          sout => sout,
          reset => reset
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		reset<='0';
		i<="0011";
		load<='0';
		wait for clock_period;
   end process;

END;
