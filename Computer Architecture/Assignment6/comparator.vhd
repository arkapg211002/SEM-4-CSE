----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:20 03/13/2023 
-- Design Name: 
-- Module Name:    comp4bit - Behavioral 
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

entity comp4bit is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           g : out  STD_LOGIC;
           e : out  STD_LOGIC;
           l : out  STD_LOGIC);
end comp4bit;

architecture Behavioral of comp4bit is

begin
g<= (a(3) and (not b(3))) or ((a(3) xnor b(3)) and a(2) and (not b(2))) or ((a(3) xnor b(3)) and (a(2) xnor b(2)) and a(1) and (not b(1))) or ((a(3) xnor b(3)) and (a(2) xnor b(2)) and (a(1) xnor b(1)) and a(0) and (not b(0)));
e<= (a(3) xnor b(3)) and (a(2) xnor b(2)) and (a(1) xnor b(1)) and (a(0) xnor b(0));
l<= (b(3) and (not a(3))) or ((a(3) xnor b(3)) and b(2) and (not a(2))) or ((a(3) xnor b(3)) and (a(2) xnor b(2)) and b(1) and (not a(1))) or ((a(3) xnor b(3)) and (a(2) xnor b(2)) and (a(1) xnor b(1)) and b(0) and (not a(0)));
end Behavioral;

