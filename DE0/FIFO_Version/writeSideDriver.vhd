library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY writeSideDriver IS
   PORT(
      clk      : IN   STD_LOGIC;
      hps_input: IN   STD_LOGIC;
      reset    : IN   STD_LOGIC;
      busy     : OUT  STD_LOGIC;
		wclock   : OUT  STD_LOGIC;
		wreq		: Out  STD_LOGIC
		);
END writeSideDriver;
ARCHITECTURE a OF writeSideDriver IS
   TYPE STATE_TYPE IS (s0,s1,s2,s3,s4);
   SIGNAL state   : STATE_TYPE := s0;
	SIGNAL latch	: STD_LOGIC := '0';
BEGIN
   PROCESS (clk,reset)
   BEGIN
		if (reset = '1') then
		state <= s0;
		latch <= '0';
      elsif (clk'EVENT AND clk = '1') THEN
         CASE state IS
            WHEN s0=>
               IF (hps_input = '1' AND latch = '0') THEN
						latch <= '1';
                  state <= s2;
					ELSIF (hps_input = '0' AND latch = '1') THEN
						latch <= '0';
						state <= s1;
               ELSE
                  state <= s1;
               END IF;
            WHEN s1=>
               state <= s0;
            WHEN s2=>
					state <= s3;
				WHEN s3=>
               state <= s4;
				WHEN s4=>
					state <= s0;
         END CASE;
      END IF;
   END PROCESS;
   
   PROCESS (state)
   BEGIN
      CASE state IS
         WHEN s0 =>
            wreq <= '0';
				wclock <= '1';
				busy <= '0';
         WHEN s1 =>
            wreq <= '0';
				wclock <= '0';
				busy <= '0';
         WHEN s2 =>
            wreq <= '1';
				wclock <= '0';
				busy <= '1';
			WHEN s3 =>
            wreq <= '1';
				wclock <= '1';
				busy <= '1';
			WHEN s4 =>
            wreq <= '0';
				wclock <= '0';
				busy <= '1';
      END CASE;
   END PROCESS;
   
END a;