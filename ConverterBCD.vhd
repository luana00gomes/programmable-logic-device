library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity conv_bcd is
    Port (
        bin_in : in STD_LOGIC;
        bcd_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end conv_bcd;

architecture Behavioral of conv_bcd is
begin
    process(bin_in)
    begin
        case bin_in is
            when '0' =>
                bcd_out <= "00000000"; -- 0 em BCD
            when '1' =>
                bcd_out <= "00000001"; -- 1 em BCD
        end case;
    end process;
end Behavioral;
