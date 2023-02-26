----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:58:38 02/26/2023 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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

entity fulladder is
    Port ( x1,x2,cin : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

component halfadder is
    Port ( a,b : in  STD_LOGIC;
           s,c : out  STD_LOGIC);
end component;

signal t1,t2,t3: std_logic;

begin

m1: halfadder port map(a=>x1, b=>x2, s=>t1, c=>t2);
m2: halfadder port map(a=>t1, b=>cin, s=>sum, c=>t3);
carry<= t2 and t3;


end Behavioral;

