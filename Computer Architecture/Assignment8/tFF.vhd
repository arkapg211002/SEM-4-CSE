----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:01 03/19/2023 
-- Design Name: 
-- Module Name:    tFF - Behavioral 
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

entity tFF is
    Port ( clk : in  STD_LOGIC;
           t : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end tFF;

architecture Behavioral of tFF is

begin

process(clk,t,rst)
variable tmp: std_logic:='0';
begin
if(rst='1')then
tmp:='0';
elsif(rising_edge(clk))then
if(t='1')then
tmp:=not tmp;
end if;
end if;
q<=tmp;
qb<=not tmp;
end process;

end Behavioral;

