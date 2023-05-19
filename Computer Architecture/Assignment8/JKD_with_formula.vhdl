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

entity jkd is
    Port ( clock : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           Qout : inout  STD_LOGIC;
           QBout : inout  STD_LOGIC);
end jkd;

architecture Behavioral of jkd is

component D is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  q : inout STD_LOGIC;
           qb : inout  STD_LOGIC);
end component;

signal t: std_logic;
--signal qt,qtb: std_logic:='0';

begin
--Qout<=qt;
--Qbout<=qtb;
t<= (j and (not Qout)) or ((not k) and Qbout);
m1 : D port map(clock,reset,t,Qout,Qbout);

end Behavioral;

