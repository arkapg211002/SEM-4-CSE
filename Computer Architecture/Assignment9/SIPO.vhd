----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:24:08 03/25/2023 
-- Design Name: 
-- Module Name:    sipo - Behavioral 
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

entity sipo is
    Port ( clock : in  STD_LOGIC;
           sin : in  STD_LOGIC;
           p : inout  STD_LOGIC_VECTOR (3 downto 0):=(others=>'0');
			  
           reset : in  STD_LOGIC);
end sipo;

architecture Behavioral of sipo is

component D is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;

signal t0,t1,t2,t3: std_logic:='0';

begin

m1: D port map(clock,sin,t3,reset);
m2: D port map(clock,t3,t2,reset);
m3: D port map(clock,t2,t1,reset);
m4: D port map(clock,t1,t0,reset);
p<= t3 & t2 & t1 & t0;

--m1: D port map(clock,sin,a,reset);
--m2: D port map(clock,a,b,reset);
--m3: D port map(clock,b,c,reset);
--m4: D port map(clock,c,e,reset);

end Behavioral;

