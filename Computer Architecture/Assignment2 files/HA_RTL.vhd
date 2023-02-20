----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:18 02/20/2023 
-- Design Name: 
-- Module Name:    HA_RTL - Behavioral 
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

entity HA_RTL is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end HA_RTL;

architecture Behavioral of HA_RTL is
signal sa:STD_LOGIC:= '0';
signal sb:STD_LOGIC:= '0';
signal saa:STD_LOGIC:= '0';
signal sbb:STD_LOGIC:= '0';
begin
sa<= not A;
sb<= not B;
saa<= sa and B;
sbb<= sb and A;
Sum<= saa and sbb;
Carry<= A and B;

end Behavioral;

