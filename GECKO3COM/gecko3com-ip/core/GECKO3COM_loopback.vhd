--  GECKO3COM IP Core
--
--  Copyright (C) 2009 by
--   ___    ___   _   _
--  (  _ \ (  __)( ) ( )
--  | (_) )| (   | |_| |   Bern University of Applied Sciences
--  |  _ < |  _) |  _  |   School of Engineering and
--  | (_) )| |   | | | |   Information Technology
--  (____/ (_)   (_) (_)
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details. 
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
--  URL to the project description: 
--    http://labs.ti.bfh.ch/gecko/wiki/systems/gecko3com/start
----------------------------------------------------------------------------------
--
--  Author:  Andreas Habegger, Christoph Zimmermann
--  Date of creation: 8. April 2009
--  Description:
--   	Test scenario for the GECKO3com simple IP core. (Not the one for Xilinx EDK)
--		This loopback module takes the received data and simply sends it back 
--    where it came from.
--
--  Target Devices:	general
--  Tool versions: 	11.1
--  Dependencies:
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.GECKO3COM_defines.all;

entity GECKO3COM_loopback is
  port (
    i_nReset,
    i_IFCLK,									 -- GPIF CLK (GPIF is Master and provides the clock)
    i_SYSCLK,									 -- FPGA System CLK
    i_WRU,                              -- write from GPIF
    i_RDYU 	  : in   	std_logic;        -- GPIF is ready
    o_WRX,                              -- To write to GPIF
    o_RDYX    : out  	std_logic;      -- IP Core is ready
    o_LEDrx,                            -- controll LED rx
    o_LEDtx : out 	 	std_logic; 		 -- controll LED tx
    o_LEDrun  : out  	std_logic;      -- controll LED running signalisation
    b_gpif_bus 	  : inout	std_logic_vector(SIZE_DBUS_GPIF-1 downto 0));  -- bidirect data bus
	);
end GECKO3COM_loopback;



architecture loopback of GECKO3COM_loopback is

  
  type t_fsmLoop is (rst, idle, writeRQ, writeIn, writeEnd);
  
  signal pr_stateLoop, nx_stateLoop : t_fsmLoop;
  
  signal  i_U2X_AM_EMPTY,
          i_U2X_EMPTY,
          i_X2U_AM_FULL,
          i_X2U_FULL	    : in  std_logic;
	signal  i_U2X_DATA     : in  std_logic_vector(SIZE_DBUS_FPGA-1 downto 0);
	signal  o_U2X_RD_EN,
          o_X2U_WR_EN    : out std_logic;
  signal  o_X2U_DATA     : out std_logic_vector(SIZE_DBUS_FPGA-1 downto 0)

  -----------------------------------------------------------------------------
  -- controll bus
  -----------------------------------------------------------------------------
	 signal	s_U2X_RD_EN,
				s_X2U_WR_EN : std_logic;
  
  
  --------------------------------------------------------------------------------- 
  --     COMPONENTS  
  ---------------------------------------------------------------------------------

  component gpif_com
  port (
    i_nReset,
    i_IFCLK,									 -- GPIF CLK (GPIF is Master and provides the clock)
    i_SYSCLK,									 -- FPGA System CLK
    i_WRU,                              -- write from GPIF
    i_RDYU 	  : in   	std_logic;        -- GPIF is ready
    o_WRX,                              -- To write to GPIF
    o_RDYX    : out  	std_logic;      -- IP Core is ready
    o_ABORT   : out   std_logic;  -- Abort detected, you have to flush the data
    o_RX,                            -- controll LED rx
    o_TX : out 	 	std_logic; 		 -- controll LED tx
    b_gpif_bus 	  : inout	std_logic_vector(SIZE_DBUS_GPIF-1 downto 0));  -- bidirect data bus
  end USB_TMC_IP;
  
begin

	 o_U2X_RD_EN  <=  s_U2X_RD_EN;
	 o_X2U_WR_EN  <=  s_X2U_WR_EN;
   
   o_LEDrun <= '1';
   
   GPIF_INTERFACE : gpif_com
   port map (
    i_nReset    =>  i_nReset,
    i_IFCLK     =>  i_IFCLK,									 -- GPIF CLK (GPIF is Master and provides the clock)
    i_SYSCLK    =>  i_SYSCLK,									 -- FPGA System CLK
    i_WRU       =>  i_WRU,                              -- write from GPIF
    i_RDYU      =>  i_RDYU,        -- GPIF is ready
    o_WRX       =>  o_WRX,                              -- To write to GPIF
    o_RDYX      =>  o_RDYX,      -- IP Core is ready
    o_ABORT     =>  o_ABORT,  -- Abort detected, you have to flush the data
    o_LEDrx     =>  o_LEDrx,                            -- controll LED rx
    o_LEDtx     =>  o_LEDtx, 		 -- controll LED tx
    o_LEDrun    =>  o_LEDrun,      -- controll LED running signalisation
    b_gpif_bus  =>  b_gpif_buf
   );

    ---------------------------------------------------------------------------
    -- FPGA CLK DOMAIN -> opb site
    ---------------------------------------------------------------------------

  bus_loop_Dmap : process (i_SYSCLK)

  begin  -- process bus_access
    if rising_edge(i_SYSCLK) then
          o_X2U_DATA <= i_U2X_DATA;
    end if;
  end process bus_loop_Dmap;


 -----------------------------------------------------------------------------
  -- FSM Loop
  -----------------------------------------------------------------------------

    -- state reg
  actionLoop : process(i_SYSCLK, i_nReset)
    begin

      if i_nReset = '0' then
        pr_stateLoop <= rst;

      elsif rising_edge(i_SYSCLK) then

		  pr_stateLoop <= nx_stateLoop;

      end if;
    end process actionLoop;


    -- comb logic
    loopTrans : process(pr_stateLoop, i_U2X_AM_EMPTY, i_U2X_EMPTY, i_X2U_AM_FULL )
    begin  -- process transaction
	 
	    -- default signal sets to avoid latches
			 s_X2U_WR_EN <= '0';
          s_U2X_RD_EN <= '0';
			 
      case pr_stateLoop is
        -- controll

        when rst =>
			 s_X2U_WR_EN <= '0';
          s_U2X_RD_EN <= '0';
          nx_stateLoop <= idle;
			 			 
        when idle =>
		   -- when the input fifo has data (is not empty) and the output fifo is not full:
			if i_U2X_AM_EMPTY = '0' and i_X2U_AM_FULL = '0' then
			  nx_stateLoop <= writeRQ;
			  s_U2X_RD_EN <= '1';
			else
			  nx_stateLoop <= idle;
        end if;
		  
        when writeRQ =>
		    -- enable read from input fifo. wait one cycle untill the data is available to be written
          s_U2X_RD_EN <= '1';
			 s_X2U_WR_EN <= '0';
			 nx_stateLoop <= writeIn;
			 
		  when writeIn =>
			
 			 if i_U2X_EMPTY = '1' and i_X2U_AM_FULL = '0' then
			      -- input fifo is empty, end the transfer
		  		  	nx_stateLoop <= writeEnd;
					s_U2X_RD_EN <= '1'; -- i guess that this should be '0' here. zac1
					s_X2U_WR_EN <= '1';
					
			 elsif i_U2X_EMPTY = '0' and i_X2U_AM_FULL = '1' then
			      -- output data is full, still data in the input fifo
					nx_stateLoop <= writeEnd;
					s_U2X_RD_EN <= '0';
					s_X2U_WR_EN <= '1';
					
			 elsif i_U2X_EMPTY = '1' and i_X2U_AM_FULL = '1' then
					-- input fifo empty and output fifo full
					nx_stateLoop <= writeEnd; --idle;
					s_U2X_RD_EN <= '0';
					s_X2U_WR_EN <= '1'; ---s_X2U_WR_EN <= '0';
					
			  else
			      -- input fifo has data, output fifo has free space
			      nx_stateLoop <= writeIn;
					s_X2U_WR_EN <= '1';
					s_U2X_RD_EN <= '1';
			 end if;

				
		  when writeEnd =>
		      -- copy the last data from the register to the output fifo
				nx_stateLoop <= idle;
				s_U2X_RD_EN <= '0';
				s_X2U_WR_EN <= '1';


        -- error case
        when others =>
          nx_stateLoop <= idle;
      end case;
      
    end process loopTrans;
            
end loopback;
