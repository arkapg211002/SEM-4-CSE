----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:13:59 03/26/2023 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( s : in  STD_LOGIC_VECTOR (3 downto 0);
           a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           f : out  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin

process(s,a,b,cin)
variable t: std_logic_vector(3 downto 0);
begin
case s is
when "0000"=>
	if(cin='0')then
		f<= a+b;
	else
		f<= a+b+1;
	end if;
when "0001"=>
	if(cin='0')then
		f<= a+(not b);
	else 
		f<= a+(not b)+1;
	end if;
when "0010"=>
	if(cin='0')then
		f<= a-1;
	else 
		f<= a;
	end if;
when "0011"=>
	if(cin='0')then
		f<= a;
	else 
		f<= a-1;
	end if;
when "0100"=>f<= a and b;
when "0101"=>f<= a or b;
when "0110"=>f<= a xor b;
when "0111"=>f<= not a;
when "1000"=>
	t:=a;
	t(2 downto 0):= t(3 downto 1);
	t(3):='0';
	f<=t;
when "1001"=>
	t:=a;
	t(2 downto 0):= t(3 downto 1);
	t(3):='0';
	f<=t;
when "1010"=>
	t:=a;
	t(3 downto 1):= t(2 downto 0);
	t(0):='0';
	f<=t;
when "1011"=>
	t:=a;
	t(3 downto 1):= t(2 downto 0);
	t(0):='0';
	f<=t;
when others=>f<="0000";
end case;
end process;

end Behavioral;


