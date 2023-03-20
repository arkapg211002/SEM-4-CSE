----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:07 03/20/2023 
-- Design Name: 
-- Module Name:    demux1to8 - Behavioral 
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

entity demux1to8 is
    Port ( i : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           o : out  STD_LOGIC_VECTOR (7 downto 0));
end demux1to8;

architecture Behavioral of demux1to8 is

begin
process(i,s)
begin
o<="00000000";
case s is
when "000"=>o(0)<=i;
when "001"=>o(1)<=i;
when "010"=>o(2)<=i;
when "011"=>o(3)<=i;
when "100"=>o(4)<=i;
when "101"=>o(5)<=i;
when "110"=>o(6)<=i;
when "111"=>o(7)<=i;
when others=>o<="00000000";
end case;
end process;

end Behavioral;

