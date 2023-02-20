----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:03:44 02/20/2023 
-- Design Name: 
-- Module Name:    fs_rtl - Behavioral 
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

entity fs_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end fs_rtl;

architecture Behavioral of fs_rtl is

begin

Diff<= ((not A) and B and Bin) or ((not B) and A and Bin) or ((not Bin) and B and A) or (A and B and Bin);
Bout<= ((not A) and B) or ((not A) and Bin) or (B and Bin);

end Behavioral;

