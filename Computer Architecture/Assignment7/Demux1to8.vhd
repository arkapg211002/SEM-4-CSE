----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:08:58 03/12/2023 
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
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
			  e : out  STD_LOGIC;
			  f : out  STD_LOGIC;
			  g : out  STD_LOGIC;
			  h : out  STD_LOGIC);
end demux1to4;

architecture Behavioral of demux1to8 is

--signal c0,c1,c2,c3,c4,c5,c6,c7: std_logic;

begin
a<= (not s(2)) and (not s(1)) and (not s(0)) and i;
b<= (not s(2)) and (not s(1)) and s(0) and i;
c<= (not s(2)) and s(1) and (not s(0)) and i;
d<= (not s(2)) and s(1) and s(0) and i;
e<= s(2) and (not s(1)) and (not s(0)) and i;
f<= s(2) and (not s(1)) and s(0) and i;
g<= s(2) and s(1) and (not s(0)) and i;
h<= s(2) and s(1) and s(0) and i;
end Behavioral;

