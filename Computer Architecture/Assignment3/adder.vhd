----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:00 02/27/2023 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
    Port ( x1 : in  STD_LOGIC_VECTOR (3 downto 0);
           x2 : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end adder;

architecture Behavioral of adder is

component fulladder is
    Port ( a,b,cin : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end component;

signal c0,c1,c2: std_logic;

begin

m1: fulladder port map(x1(0),x2(0),c,s(0),c0);
m2: fulladder port map(x1(1),x2(1),c0,s(1),c1);
m3: fulladder port map(x1(2),x2(2),c1,s(2),c2);
m4: fulladder port map(x1(3),x2(3),c2,s(3),cout);


end Behavioral;

