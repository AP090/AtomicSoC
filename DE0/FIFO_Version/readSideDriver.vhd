-- AD5791 SPI Driver
--
-- Created by Will Lunden 12/10/2015
-- Modified by Will Lunden 10/13/2016
-- Added SyncHighCounter on 10/18/2016


 
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity readSideDriver is
Port(
	DRIVER_RESET : in STD_Logic; --Resets the driver
	SCKIN : in STD_Logic; --Clock input for SPI line. Output clock rate is this frequency/2
	DATA_IN : in STD_Logic_Vector(0 to 19); --20 bit, 2's complement input word
	RDEMPTY : in STD_Logic; --Empty indicator from FIFO
	OPALKELLY : in STD_Logic; --Lab clock signal from Opal Kelly
	RDCLOCK : out STD_Logic; --Clock to read side of FIFO
	RDREQ : out STD_Logic; --Read acknowledgement to FIFO
	DATA_OUT : out STD_Logic; --SPI data output line
	SYNC : out STD_Logic; --SPI sync line
	RESET : out STD_Logic; --SPI reset line
	CLR : out STD_Logic; --SPI clear line
	SCKOUT : out STD_Logic; --SPI clock out
	LDAC : out STD_Logic
	
);
end readSideDriver;

architecture archname of readSideDriver is
   --FSM definition:
	Type state is (s0,s1,s2,s3,s4,PRESYNCLOW,SYNCLOW,WRITEDATABIT,CLOCKDOWN,SYNCHIGH); --Sync steps included explicitly for clarity
	Signal currentState : state := PRESYNCLOW;
	Signal incrementer : unsigned(7 downto 0):="00000000"; -- To count our way through the SPI word
	Signal SyncHighCounter : unsigned(7 downto 0):="00000000"; -- To ensure SYNC stays high for long enough
	Constant configurationWord : std_logic_vector(0 to 23) := b"001000000000000000100010"; --Initial word to output
	Signal outputWord : std_logic_vector(0 to 23) := configurationWord; -- The word we are writing out over the SPI line
	Signal configCounter: unsigned(14 downto 0):="000000000000000"; --We write the configuration word N_CONFIG_WORD_WRITES times at startup
	Signal latch: std_Logic;
	Constant N_CONFIG_WORD_WRITES : integer := 100; --config word is written this many times PLUS ONE

	
	begin
		-- 
		--One clocked process, one combinatorial process.
		-- 
		process(SCKIN,DRIVER_RESET) -- The clocked process that drives the state machine
		begin
		
		if (DRIVER_RESET = '1') then
		currentState <= PRESYNCLOW;
		configCounter <= "000000000000000";
		latch <= '0';
			elsif (SCKIN'event and SCKIN = '1') then
				case currentState is
				when s0 =>
				 IF (OPALKELLY = '1' AND latch = '0') THEN
						latch <= '1';
						currentState <= s2;
						IF (RDEMPTY = '0') THEN
						outputWord <="0001"&DATA_IN;
						END IF;
					ELSIF (OPALKELLY = '0' AND latch = '1') THEN
						latch <= '0';
						currentState <= s1;
               ELSE
						currentState <= s1;
				END IF;
				when s1 => 
						currentState <= s0;
				when s2 =>
						currentState <= s3;
				when s3 =>
						currentState <= s4;
				when s4 => 
						currentState <= SYNCLOW;
				when PRESYNCLOW => --Happens when driver is reset
				SyncHighCounter <= "00000000";
				outputWord <=configurationWord;
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
				when SYNCHIGH => --Return to SYNCLOW if init not complete, otherwise go to s0 (FIFO read clock cycling)
				incrementer <= "00000000";
				if(SyncHighCounter < 3) then --Changed from 5 to 3
				SyncHighCounter <= SyncHighCounter + 1;
				currentState <= SYNCHIGH;
				elsif(configCounter < N_CONFIG_WORD_WRITES) then
				configCounter <= configCounter + 1;
				currentState <= SYNCLOW;
				SyncHighCounter <= "00000000";
				else
				currentState <= s0;
				SyncHighCounter <= "00000000";
				end if;
				end case;
			end if;
		end process;
		
		process(currentState,OPALKELLY,latch,incrementer,outputWord,syncHighCounter) --Combinatorial process
		begin
			case currentState is	
			
				when s0 =>  -- Read clock high, waiting for OK edge
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '1';
				RDREQ <= '0';
				if(latch = '0') then
				LDAC <= not(OPALKELLY);
				else
				LDAC <= '1';
				end if;
				
				when s1 => -- Read clock low, going back to s0
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '0';
				RDREQ <= '0';
				if(latch = '0') then
				LDAC <= not(OPALKELLY);
				else
				LDAC <= '1';
				end if;
				
				when s2 =>  -- Read clock low, read acknowledgement high, the data gets latched in during s2, and we give the LDAC pin a bit of grace period 
				--outputWord <= "1111"&DATA_IN;
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '0';
				RDREQ <= '1';
				LDAC <= '0';
				
				when s3 =>  -- Read clock high (clocking in read ack)
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '1';
				RDREQ <= '1';
				LDAC <= '1';
				
				when s4 => -- Read clock low and read ack low. Could be combined with SYNCLOW but things are perhaps clearer this way
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '0';
				RDREQ <= '0';
				LDAC <= '1';
				
				when PRESYNCLOW => --Same as SYNCLOW, but with DAC reset pin brought low. Happens only on driver reset
				SYNC <= '1';
				RESET <= '0';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '0';
				RDREQ <= '0';
				LDAC <= '1';
				
				
				when SYNCLOW => --Set clock high, sync low to prepare for output
				SYNC <= '0';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '0';
				RDREQ <= '0';
				LDAC <= '1';
				
				when WRITEDATABIT => --Place a data bit on the DATA_OUT pin
				SYNC <= '0';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= outputWord(to_integer(incrementer));
				RDCLOCK <= '1';
				RDREQ <= '0';
				LDAC <= '1';
				when CLOCKDOWN => --Clock it out
				SYNC <= '0';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '0';
				RDCLOCK <= '0';
				RDREQ <= '0';
				LDAC <= '1';
				when SYNCHIGH => --Set sync back to high
				SYNC <= '1';
				RESET <= '1';
				CLR <= '1';
				SCKOUT <= '1';
				DATA_OUT <= '0';
				RDCLOCK <= '0';
				RDREQ <= '0';
				LDAC <= '1';
			end case;
		end process;
	end archname;