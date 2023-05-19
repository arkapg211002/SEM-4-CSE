----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:07 04/04/2023 
-- Design Name: 
-- Module Name:    D_ff_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_FF_rtl is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Clear : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_bar : out  STD_LOGIC);
end D_FF_rtl;

architecture Behavioral of D_FF_rtl is
signal qtemp,qbartemp: std_logic:='0';
begin
Q<=qtemp;
Q_bar<=qbartemp;
	process(Clear,D)
	begin
		if(Clear='1') then
			qtemp<='0';
			qbartemp<='1';
		elsif(D='0') then
				qtemp<='0';
				qbartemp<='1';
		elsif(D='1') then
				qtemp<='1';
				qbartemp<='0';
		end if;
	end process;
end Behavioral;
