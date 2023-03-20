----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:24 03/20/2023 
-- Design Name: 
-- Module Name:    mux8to1 - Behavioral 
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

entity mux8to1 is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           o : out  STD_LOGIC);
end mux8to1;

architecture Behavioral of mux8to1 is

begin
process(a,s)
begin
case s is
when "000"=>o<=a(0);
when "001"=>o<=a(1);
when "010"=>o<=a(2);
when "011"=>o<=a(3);
when "100"=>o<=a(4);
when "101"=>o<=a(5);
when "110"=>o<=a(6);
when "111"=>o<=a(7);
when others=>o<='0';
end case;
end process;
end Behavioral;

