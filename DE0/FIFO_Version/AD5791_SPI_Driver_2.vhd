-- AD5791 SPI Driver
--
-- Created by Will Lunden 12/10/2015
-- Modified by Will Lunden 1/28/2016
-- 
-- This entity reads in a 20 bit data word from a parallel bus
-- and then outputs a 24 bit command to the AD5791 evaluation board
-- over an SPI line. The word is only read in when an external trigger 
-- edge is detected
--
-- The output word is initialized to the 24-bit configuration word that prepares the DAC
-- to accept data in 2's complement form using a 0-10V reference. See the data sheet
-- for more information on this configuration word
--
 
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AD5791_SPI_Driver_2 is
Port(
	SCKIN : in STD_Logic; --Clock input for SPI line. Output clock rate is this frequency/2
	DATA_IN : in STD_Logic_Vector(0 to 19); --20 bit, 2's complement input word
	DATA_OUT : out STD_Logic; --SPI data output line
	SYNC : out STD_Logic; --SPI sync line
	RESET : out STD_Logic; --SPI reset line
	CLR : out STD_Logic; --SPI clear line
	SCKOUT : out STD_Logic --SPI clock out

);
end AD5791_SPI_Driver_2;

architecture archname of AD5791_SPI_Driver_2 is
   --FSM definition:
	Type state is (GETDATA,SYNCLOW,WRITEDATABIT,CLOCKDOWN,SYNCHIGH); --Sync steps included explicitly for clarity
	Signal currentState : state := SYNCLOW;
	Signal incrementer : unsigned(7 downto 0):="00000000"; -- To count our way through the SPI word
	Constant configurationWord : std_logic_vector(0 to 23) := b"001000000000000000100010"; --Initial word to output
	Signal outputWord : std_logic_vector(0 to 23) := configurationWord; -- The word we are writing out over the SPI line
	Signal configCounter: unsigned(14 downto 0):="000000000000000"; --We write the configuration word N_CONFIG_WORD_WRITES times at startup
	Constant N_CONFIG_WORD_WRITES : integer := 25000; 

	
	begin
		-- 
		--One clocked process, one combinatorial process.
		-- 
		process(SCKIN) -- The clocked process that drives the state machine
		begin
			if (SCKIN'event and SCKIN = '1') then
				case currentState is
				when GETDATA => --Advance the state
				currentState <= SYNCLOW;
				when SYNCLOW => --Advance the state
				currentState <= WRITEDATABIT;
				when WRITEDATABIT => --Advance the state and the counter
				currentState <= CLOCKDOWN;
				incrementer <= incrementer + 1;
				when CLOCKDOWN => --Return to WRITEDATABIT if less than 24 bits written; otherwise advance to SYNCHIGH
				if(incrementer < 24) then
				currentState <= WRITEDATABIT;
				else
				currentState <= SYNCHIGH;
				end if;
				when SYNCHIGH => --Reset to state WAITING
				incrementer <= "00000000";
				currentState <= GETDATA;
				if(configCounter < N_CONFIG_WORD_WRITES) then
				configCounter <= configCounter + 1;
				end if;
				end case;
			end if;
		end process;
		
		process(currentState,DATA_IN,SCKIN) --Combinatorial process
		begin
			case currentState is	
				when GETDATA => --Read in 20 bit data word, pre-append the 4 configuration bits
				if(configCounter < N_CONFIG_WORD_WRITES) then
				outputWord <= configurationWord;
				else
				outputWord <= "0001"&DATA_IN;
				end if;
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				when SYNCLOW => --Set clock high, sync low to prepare for output
				SYNC <= '0';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				when WRITEDATABIT => --Place a data bit on the DATA_OUT pin
				SYNC <= '0';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= outputWord(to_integer(incrementer));
				when CLOCKDOWN => --Clock it out
				SYNC <= '0';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '0';
				when SYNCHIGH => --Set sync back to high
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
			end case;
		end process;
	end archname;