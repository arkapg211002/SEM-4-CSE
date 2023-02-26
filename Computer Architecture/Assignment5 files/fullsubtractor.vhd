----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:29:09 02/26/2023 
-- Design Name: 
-- Module Name:    fullsubtractor - Behavioral 
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

entity fullsubtractor is
    Port ( x1,x2,cin : in  STD_LOGIC;
           dout,bout : out  STD_LOGIC);
end fullsubtractor;

architecture Behavioral of fullsubtractor is

component halfsubtractor is
    Port ( a,b : in  STD_LOGIC;
           diff,borrow : out  STD_LOGIC);
end component;

signal t1,t2,t3: std_logic;

begin
m1: halfsubtractor port map(a=>x1, b=>x2, diff=>t1, borrow=>t2);
m2: halfsubtractor port map(a=>t1, b=>cin, diff=>dout, borrow=>t3);
bout<= t2 and t3;

end Behavioral;

