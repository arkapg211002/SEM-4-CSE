----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:39:51 03/26/2023 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
	 generic(
        DATA_WIDTH : integer := 8; -- The width of the data bus
        ADDR_WIDTH : integer := 10 -- The width of the address bus
    );
    port(
        clk : in std_logic; -- The clock input
        we : in std_logic; -- The write enable input
        addr : in std_logic_vector(ADDR_WIDTH - 1 downto 0); -- The address input
        din : in std_logic_vector(DATA_WIDTH - 1 downto 0); -- The data input
        dout : out std_logic_vector(DATA_WIDTH - 1 downto 0) -- The data output
    );
end RAM;

architecture Behavioral of RAM is

type memory_array is array (0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0); 
-- declare memory array with size based on address width and data width

signal mem : memory_array := (others => (others => '0')); 
-- initialize memory array with default value of '0'

function conv_integer(v : std_logic_vector) return integer is
    begin
        return to_integer(unsigned(v));
end conv_integer;
-- The conv_integer() function is used in the RAM module process to convert 
--the addr signal from a std_logic_vector to an integer value. 
--The integer value is then used to index into the memory array to read or write data.

begin

process(clk)
    begin
        if rising_edge(clk) then -- check for positive edge of clock
            if we = '1' then -- check for write enable signal
                mem(conv_integer(addr)) <= din; 
					 -- store the input data to the memory location specified by address
            end if;
            dout <= mem(conv_integer(addr)); 
				-- output the data stored at the memory location specified by address
        end if;
end process;

end Behavioral;

