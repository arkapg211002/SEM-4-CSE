----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:29:01 02/27/2023 
-- Design Name: 
-- Module Name:    fullsubtractor - Behavioral 
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

entity fullsubtractor is
    Port ( a,b,cin : in  STD_LOGIC;
           diff,borrow : out  STD_LOGIC);
end fullsubtractor;

architecture Behavioral of fullsubtractor is

begin

diff<= a xor b xor cin;
borrow<=((not a)and b) or ((not a)and cin) or (b and cin);

end Behavioral;

