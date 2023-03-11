----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:02:41 03/11/2023 
-- Design Name: 
-- Module Name:    comparator - Behavioral 
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

entity comparator is
    Port ( x1 : in  STD_LOGIC_VECTOR (3 downto 0);
           x2 : in  STD_LOGIC_VECTOR (3 downto 0);
           g : out  STD_LOGIC;
           e : out  STD_LOGIC;
           l : out  STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin
g<= (x1(3) and (not x2(3))) or ((x1(3) xnor x2(3)) and x1(2) and (not x2(2))) or ((x1(3) xnor x2(3)) and (x1(2) xnor x2(2)) and x1(1) and (not x2(1))) or ((x1(3) xnor x2(3)) and (x1(2) xnor x2(2)) and (x1(1) xnor x2(1)) and x1(0) and (not x2(0)));
e<= (x1(3) xnor x2(3)) and (x1(1) xnor x2(2)) and (x1(1) xnor x2(1)) and (x1(0) xnor x2(0));
l<= (x2(3) and (not x1(3))) or ((x1(3) xnor x2(3)) and x2(2) and (not x1(2))) or ((x1(3) xnor x2(3)) and (x1(2) xnor x2(2)) and x2(1) and (not x1(1))) or ((x1(3) xnor x2(3)) and (x1(2) xnor x2(2)) and (x1(1) xnor x2(1)) and x2(0) and (not x1(0)));

end Behavioral;

