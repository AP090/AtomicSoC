library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync_2ff is
port (
    async_in : in std_logic;
    clk : in std_logic;
    rst : in std_logic;
    sync_out : out std_logic
);
end;

architecture a of sync_2ff is
Signal ff1, ff2: std_logic;
-- It's nice to let the synthesizer know what you're doing. Altera's way of doing it as follows:
ATTRIBUTE altera_attribute : string;
ATTRIBUTE altera_attribute OF ff1 : signal is "-name SYNCHRONIZER_IDENTIFICATION ""FORCED IF ASYNCHRONOUS""";
ATTRIBUTE altera_attribute OF a : architecture is "-name SDC_STATEMENT ""set_false_path -to *|sync_2ff:*|ff1 """;

-- also set the 'preserve' attribute to ff1 and ff2 so the synthesis tool doesn't optimize them away
ATTRIBUTE preserve: boolean;
ATTRIBUTE preserve OF ff1: signal IS true;
ATTRIBUTE preserve OF ff2: signal IS true;

begin

synchronizer: process(clk, rst)
begin
if rst = '1' then
    ff1 <= '0';
    ff2 <= '0';
elsif rising_edge(clk) then
    ff1 <= async_in;
    ff2 <= ff1;
    sync_out <= ff2;
end if;
end process synchronizer;
end a;