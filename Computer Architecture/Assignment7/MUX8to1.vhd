----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:08 03/17/2023 
-- Design Name: 
-- Module Name:    MUX8to1 - Behavioral 
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

entity MUX8to1 is
    Port ( p : in  STD_LOGIC_VECTOR (7 downto 0);
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           y : out  STD_LOGIC);
end MUX8to1;

architecture Behavioral of MUX8to1 is
signal a,b,c,d,e,f,g,h: std_logic;
begin
a<= ((not s(2)) and (not s(1)) and (not s(0))) and p(0);
b<= ((not s(2)) and (not s(1)) and s(0)) and p(1);
c<= ((not s(2)) and s(1) and (not s(0))) and p(2);
d<= ((not s(2)) and s(1) and s(0)) and p(3);
e<= (s(2) and (not s(1)) and (not s(0))) and p(4);
f<= (s(2) and (not s(1)) and s(0)) and p(5);
g<= (s(2) and s(1) and (not s(0))) and p(6);
h<= (s(2) and s(1) and s(0)) and p(7);
y<= a or b or c or d or e or f or g or h;

end Behavioral;

