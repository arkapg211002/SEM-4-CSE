----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:52:51 02/26/2023 
-- Design Name: 
-- Module Name:    HS_RTL - Behavioral 
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

entity HS_RTL is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bout : out  STD_LOGIC;
           Diff : out  STD_LOGIC);
end HS_RTL;

architecture Behavioral of HS_RTL is

begin
Bout<= (A and (not B)) or ((not A) and B);
Diff<= (not A) and B;


end Behavioral;

