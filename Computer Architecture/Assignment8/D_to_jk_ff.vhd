----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:40 05/19/2023 
-- Design Name: 
-- Module Name:    D_to_jk_ff - Behavioral 
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

entity D_to_jk_ff is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLEAR : in  STD_LOGIC;
           Q_out : out  STD_LOGIC;
           Q_bar_out : out  STD_LOGIC);
end D_to_jk_ff;

architecture Behavioral of D_to_jk_ff is
component D_FF_rtl is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Clear : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_bar : out  STD_LOGIC);
end component;
signal t,t1,t2: std_logic:='0';

begin
	Q_bar_out<=t1;
	process(CLK)
	begin
		if(rising_edge(CLK)) then
			if(J='0' and K='0') then
				NULL;
			elsif(J='0' and K='1') then
				t<='0';
			elsif(J='1' and K='0') then
				t<='1';
			else
				t<=t1;
			end if;
		end if;
	end process;
	JK: D_FF_rtl port map(D=>t,Clk=>CLK,Clear=>CLEAR,Q=>Q_out,Q_bar=>t1);

end Behavioral;

