----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:21:40 03/25/2023 
-- Design Name: 
-- Module Name:    PIPO - Behavioral 
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

entity PIPO is
    Port ( clock : in  STD_LOGIC;
           i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           reset : in  STD_LOGIC);
end PIPO;

architecture Behavioral of PIPO is

component D is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;

signal q: std_logic_vector(3 downto 0);

begin

m1: D port map(clock,i(3),q(3),reset);
m2: D port map(clock,i(2),q(2),reset);
m3: D port map(clock,i(1),q(1),reset);
m4: D port map(clock,i(0),q(0),reset);
s<=q;

end Behavioral;

