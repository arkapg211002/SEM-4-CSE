----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:08:58 03/12/2023 
-- Design Name: 
-- Module Name:    demux1to4 - Behavioral 
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

entity demux1to4 is
    Port ( i : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC);
end demux1to4;

architecture Behavioral of demux1to4 is

begin
a<= (not s(1)) and (not s(0)) and i;
b<= (not s(1)) and s(0) and i;
c<= s(1) and (not s(0)) and i;
d<= s(1) and s(0) and i;

end Behavioral;

