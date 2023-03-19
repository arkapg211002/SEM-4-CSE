----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:23 03/19/2023 
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

begin
process(clk,j,k,rst)
variable t: std_logic;
begin
if(rst='1')then
t:='0';
elsif(rising_edge(clk))then
if(j/=k)then
t:=j;
elsif(j='1' and k='1')then
t:= not q;
end if;
end if;
q<=t;
qb<=not t;
end process;

end Behavioral;

