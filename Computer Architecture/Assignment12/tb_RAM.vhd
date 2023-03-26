--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:53:26 03/26/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinx/RAM/RAM/tb_ram.vhd
-- Project Name:  RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY tb_ram IS
END tb_ram;
 
ARCHITECTURE behavior OF tb_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         clk : IN  std_logic;
         we : IN  std_logic;
         addr : IN  std_logic_vector(9 downto 0);
         din : IN  std_logic_vector(7 downto 0);
         dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal we : std_logic := '0';
   signal addr : std_logic_vector(9 downto 0) := (others => '0');
   signal din : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          clk => clk,
          we => we,
          addr => addr,
          din => din,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
			-- Write data to the RAM
        din <= x"AA";
        addr <= "0000000000";
        we <= '1';
        wait for 2 ps;
        we <= '0';
		  
		   -- Read data from the RAM
        addr <= "0000000000";
        wait for 2 ps;
        assert dout = x"AA" report "Error: Wrong data read from RAM!" severity error;
		  
		  -- Write data to another location in the RAM
        din <= x"55";
        addr <= "0000000100";
        we <= '1';
        wait for 2 ps;
        we <= '0';
		  
		  -- Read data from the new location in the RAM
        addr <= "0000000100";
        wait for 2 ps;
        assert dout = x"55" report "Error: Wrong data read from RAM!" severity error;
		  
		  wait for 2 ps;
		  
   end process;

END;
