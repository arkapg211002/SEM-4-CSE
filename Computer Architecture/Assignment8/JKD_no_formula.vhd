----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:46:54 05/19/2023 
-- Design Name: 
-- Module Name:    JKd - Behavioral 
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

entity JKd is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           Qout : out  STD_LOGIC;
           QBout : out  STD_LOGIC);
end JKd;

architecture Behavioral of JKd is

component D is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;

signal t,tb: std_logic:='0';

begin

--Qout<=t;
--Qbout<=tb;


process(clock,reset,j,k)
begin
if(reset='1')then
t<='0';
tb<='1';
elsif(rising_edge(clock))then
if(j/=k)then
t<=j;
tb<=k;
elsif(j='1' and k='1')then
t<= not t;
tb<= not tb;
end if;
end if;
end process;

m1: D port map(clock,reset,t,Qout);
m2: D port map(clock,reset,tb,Qbout);

end Behavioral;

