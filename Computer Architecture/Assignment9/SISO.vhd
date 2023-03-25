----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:24:01 03/25/2023 
-- Design Name: 
-- Module Name:    siso - Behavioral 
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

entity siso is
    Port ( clock : in  STD_LOGIC;
           sin : in  STD_LOGIC;
           sout : out  STD_LOGIC;
           reset : in  STD_LOGIC);
end siso;

architecture Behavioral of siso is

component D is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;

signal t1,t2,t3: std_logic;

begin

m1: D port map(clock,sin,t1,reset);
m2: D port map(clock,t1,t2,reset);
m3: D port map(clock,t2,t3,reset);
m4: D port map(clock,t3,sout,reset);

end Behavioral;

