----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:06 03/27/2023 
-- Design Name: 
-- Module Name:    srff - Behavioral 
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

entity srff is
    Port ( clk : in  STD_LOGIC;
           s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end srff;

architecture Behavioral of srff is

signal t,tb: std_logic:='0';

begin
q<=t;
qb<=tb;
process(clk,s,r,rst)
begin
if(rst='1')then
t<='0';
tb<='1';
elsif(rising_edge(clk))then
if(s/=r)then
t<=s;
tb<=r;
elsif(s='1' and r='1')then
t<='Z';
tb<='Z';
end if;
end if;
end process;


end Behavioral;

