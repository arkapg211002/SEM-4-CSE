----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:02:38 03/25/2023 
-- Design Name: 
-- Module Name:    sipo_new - Behavioral 
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

entity sipo_new is
    Port ( clock : in  STD_LOGIC;
           sin : in  STD_LOGIC;
           p0 : out  STD_LOGIC;
           p1 : out  STD_LOGIC;
           p2 : out  STD_LOGIC;
           p3 : out  STD_LOGIC;
           reset : in  STD_LOGIC);
end sipo_new;

architecture Behavioral of sipo_new is

component D is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;

signal t0,t1,t2,t3: std_logic:='0';

begin

m1: D port map(clock,sin,t3,reset);
p3<=t3;

m2: D port map(clock,t3,t2,reset);
p2<=t2;

m3: D port map(clock,t2,t1,reset);
p1<=t1;

m4: D port map(clock,t1,t0,reset);
p0<=t0;

end Behavioral;

