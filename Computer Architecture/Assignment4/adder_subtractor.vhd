----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:31:09 03/11/2023 
-- Design Name: 
-- Module Name:    adder_subtractor - Behavioral 
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

entity adder_subtractor is
    Port ( x1 : in  STD_LOGIC_VECTOR (3 downto 0);
           x2 : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end adder_subtractor;

architecture Behavioral of adder_subtractor is

component fulladder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

component xorgate is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal c0,c1,c2: std_logic;
signal i: std_logic_vector (3 downto 0);

begin
m1: xorgate port map(x2(0),cin,i(0));
m2: xorgate port map(x2(1),cin,i(1));
m3: xorgate port map(x2(2),cin,i(2));
m4: xorgate port map(x2(3),cin,i(3));

m5: fulladder port map(x1(0),i(0),cin,s(0),c0);
m6: fulladder port map(x1(1),i(1),c0,s(1),c1);
m7: fulladder port map(x1(2),i(2),c1,s(2),c2);
m8: fulladder port map(x1(3),i(3),c2,s(3),cout);

end Behavioral;

