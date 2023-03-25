----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:47:48 03/25/2023 
-- Design Name: 
-- Module Name:    piso - Behavioral 
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

entity piso is
    Port ( clock : in  STD_LOGIC;
           i : in  STD_LOGIC_VECTOR (3 downto 0);
           load : in  STD_LOGIC;
           sout : out  STD_LOGIC;
           reset : in  STD_LOGIC);
end piso;

architecture Behavioral of piso is

component D is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;

signal q: std_logic_vector(3 downto 0);
signal t1,t2,t3: std_logic;

begin

m1: D port map(clock,i(3),q(3),reset);
t1<= (q(3) and load) or (i(2) and (not load));
m2: D port map(clock,t1,q(2),reset);
t2<= (q(2) and load) or (i(1) and (not load));
m3: D port map(clock,t2,q(1),reset);
t3<= (q(1) and load) or (i(0) and (not load));
m4: D port map(clock,t3,q(0),reset);
sout<=q(0);

end Behavioral;

