----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:57:59 02/26/2023 
-- Design Name: 
-- Module Name:    FS_RTL - Behavioral 
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

entity FS_RTL is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Bout : out  STD_LOGIC;
           Diff : out  STD_LOGIC);
end FS_RTL;

architecture Behavioral of FS_RTL is

begin
Diff<= ((not A) and (not B) and Cin) or ((not A) and (not Cin) and B) or ((not B) and (not Cin) and A) or (A and B and Cin);
Bout<= ((not A) and B) or ((not A) and Cin) or (B and Cin);


end Behavioral;

