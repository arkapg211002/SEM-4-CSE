----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:34 03/19/2023 
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
    Port ( s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end srff;

architecture Behavioral of srff is

begin
process(s,r,rst,clk)
begin
if(rst='1') then
q<='0';
elsif(rising_edge(clk))then
if(s /= r) then
q<=s;
qb<=r;
elsif(s='1' and r='1')then
q<='Z'; -- use capital letter better use Z
qb<='Z';-- use capital letter better use Z
end if;
end if;
end process;
end Behavioral;

