library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_OR is
port (
    clock1_in : in std_logic;
    clock2_in : in std_logic;
    or_out : out std_logic
);
end;

architecture Behavioral of clock_OR is
begin
    or_out <= clock1_in or clock2_in;    -- 2 input AND gate
end Behavioral;