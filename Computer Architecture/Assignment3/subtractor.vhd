----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:04 02/27/2023 
-- Design Name: 
-- Module Name:    CFSub_rt - Behavioral 
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

entity CFSub_rt is
    Port ( P1 : in  STD_LOGIC_VECTOR (3 downto 0);
           P2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC_VECTOR (3 downto 0);
           Bout : out  STD_LOGIC);
end CFSub_rt;

architecture Behavioral of CFSub_rt is
component Fs_rtl is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           d : out  STD_LOGIC;
           b : out  STD_LOGIC);
end component;
signal t,t2,t3:STD_LOGIC;
begin
Q1:Fs_rtl Port Map(P1(0),p2(0),Bin,Diff(0),t);
Q2:Fs_rtl Port Map(P1(1),p2(1),t,Diff(1),t2);
Q3:Fs_rtl Port Map(P1(2),p2(2),t2,Diff(2),t3);
Q4:Fs_rtl Port Map(P1(3),p2(3),t3,Diff(3),Bout);
end Behavioral;

