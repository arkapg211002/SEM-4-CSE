----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:55:01 03/27/2023 
-- Design Name: 
-- Module Name:    jkff - Behavioral 
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

entity jkff is
    Port ( clk : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qb : inout  STD_LOGIC;
           rst : in  STD_LOGIC);
end jkff;

architecture Behavioral of jkff is

signal t,tb:std_logic:='0';

begin

q<=t;
qb<=tb;
process(clk,j,k,rst)
begin
if(rst='1')then
t<='0';
tb<='1';
elsif(rising_edge(clk))then
if(j/=k)then
t<=j;
tb<=k;
elsif(j='1' and k='1')then
t<= not t;
tb<= not tb;
end if;
end if;
end process;

end Behavioral;

