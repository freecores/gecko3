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
--   	FSM that controls the interface between the EZ-USB (and it's internal GPIF,
--    General Purpose Interface) and our FPGA. The interface is synchronous, where
--    the GPIF provides the clock. This FSM is synchronous to the GPIF clock, also
--    this side of the FIFO's.
--
--    You can find more detailed information how the interface works in the ../Doc
--    folder.
--
--  Target Devices:	Xilinx Spartan3 FPGA's (usage of BlockRam in the Datapath)
--  Tool versions: 	11.1
--  Dependencies:
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

library work;
use work.GECKO3COM_defines.all;

entity gpif_com_fsm is
  port (
    i_nReset,
    i_IFCLK,									-- GPIF CLK (GPIF is Master and provides the clock)
    i_WRU,                             -- write from GPIF
    i_RDYU 	      : in    std_logic;       -- GPIF is ready
    i_U2X_FULL,
    i_U2X_AM_FULL,	 -- signals for IN FIFO
    i_X2U_AM_EMPTY,
    i_X2U_EMPTY	: in  std_logic;     -- signals for OUT FIFO
    o_bus_trans_dir : out    std_logic;
    o_U2X_WR_EN, 						      -- signals for IN FIFO
    o_X2U_RD_EN,								-- signals for OUT FIFO
    o_FIFOrst,
    o_WRX,                             -- To write to GPIF
    o_RDYX    : out   std_logic;       -- Core is ready
    o_ABORT   : out   std_logic;       -- abort condition detected. we have to flush the data
    o_RX,
    o_TX       : out   std_logic 		--
	);
end gpif_com_fsm;



architecture fsm of gpif_com_fsm is

 -----------------------------------------------------------------------------
  -- FSM
  -----------------------------------------------------------------------------

  type t_busAccess is (readFromGPIF, writeToGPIF);
  signal s_bus_trans_dir : t_busAccess;
  

  type t_fsmState is (rst, idle,                                  -- controll states
                     inRQ, inACK, inTrans, throt, endInTrans,  -- in com states
                     outRQ, outTrans, endOutTrans);             -- out com states


  signal pr_state, nx_state : t_fsmState;


  -- interconection signals

  signal s_FIFOrst,
         s_RDYX,
         s_WRX           : std_logic;

     -- USB to Xilinx (U2X)
  signal s_U2X_WR_EN : std_logic;

     -- Xilinx to USB (X2U)
  signal s_X2U_RD_EN   : std_logic;
 
begin

  o_FIFOrst   <= s_FIFOrst;
  o_X2U_RD_EN <= s_X2U_RD_EN;
  o_WRX       <= s_WRX;                    
  o_RDYX      <= s_RDYX; 
  o_U2X_WR_EN <= 	s_U2X_WR_EN;
  o_bus_trans_dir <= '1' when s_bus_trans_dir = writeToGPIF else '0';
	 

  -----------------------------------------------------------------------------
  -- FSM GPIF
  -----------------------------------------------------------------------------

    -- state reg
  action : process(i_IFCLK, i_nReset)
		variable v_setup : integer range 0 to 15;
    begin

      if i_nReset = '0' then
        pr_state <= rst;
		  v_setup := 0;
        
      elsif rising_edge(i_IFCLK) then
		    if v_setup < SETUP_TIME then
			    v_setup := v_setup + 1;
			 elsif nx_state = rst then
				 v_setup := 0;
				 pr_state <= nx_state;
			 else
			    pr_state <= nx_state;
          end if;
      end if;
    end process action;


    -- comb logic
    transaction : process(pr_state, i_WRU, i_RDYU, i_U2X_AM_FULL, i_X2U_EMPTY)
    begin  -- process transaction
	 
	    -- default signal values to avoid latches:
		  s_FIFOrst       <= '0';
		  s_bus_trans_dir <= readFromGPIF;
		  s_U2X_WR_EN 		<= '0';
		  s_X2U_RD_EN		<= '0';
		  nx_state 		   <= idle;
		  s_WRX				<= '0';
		  s_RDYX				<= '0';
		  o_LEDrun			<= '1';
		  o_LEDrx			<= '0';
		  o_LEDtx			<= '0';
		  
      case pr_state is
        -- controll

        when rst =>
				-- output signal values:
           s_FIFOrst       <= '1';
           s_WRX           <= '0';
           s_RDYX          <= '0';
           s_U2X_WR_EN     <= '0';
           s_X2U_RD_EN     <= '0';
           
           s_bus_trans_dir <= readFromGPIF;
			  
			    -- state decisions
           nx_state        <= idle;
			  o_LEDrun			<= '0';
			  
        
        when idle =>
				-- output signal values:
          s_FIFOrst       <= '0';
          s_WRX           <= '0';
          s_RDYX          <= '0';
          s_U2X_WR_EN     <= '0';
          s_X2U_RD_EN     <= '0';
          s_bus_trans_dir <= readFromGPIF;
			 
			    -- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_WRU = '1' and i_RDYU = '0' then
            nx_state <= inRQ;
          elsif i_WRU = '0' and i_X2U_EMPTY = '0' then
            nx_state <= outRQ;
          else
            nx_state <= idle;
          end if;

        -- in trans
        when inRQ =>
				-- output signal values:
          s_WRX  <= '0';
          s_RDYX <= '0';
			    -- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_U2X_AM_FULL = '0' then
            nx_state <= inACK;
				s_RDYX		 <= '1';
          else
            nx_state <= idle;
          end if;

        when inACK =>
				-- output signal values:
          s_WRX  		 <= '0';
          s_RDYX		 <= '0';
			 s_U2X_WR_EN <= '0';
			 
			    -- state decisions
			 if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_WRU = '1' then
            nx_state    <= inTrans;
			   s_U2X_WR_EN <= '1';
				s_RDYX		 <= '1';
          else
            nx_state <= endInTrans;
          end if;

        when inTrans =>
				-- output signal values:
          s_WRX       <= '0';
          s_RDYX      <= '0';
			 o_LEDrx		 <= '1';

				-- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_WRU = '0' then
            nx_state <= endInTrans;
				s_RDYX      <= '1';
	         s_U2X_WR_EN <= '1';
          elsif i_U2X_AM_FULL = '1' then
            nx_state <= throt;
    			s_U2X_WR_EN <= '1';
          else
            nx_state <= inTrans;
	         s_RDYX      <= '1';
	         s_U2X_WR_EN <= '1';
          end if;

        when throt =>
				-- output signal values:
          s_WRX       <= '0';
          s_RDYX      <= '0';
          s_U2X_WR_EN <= '0';
				-- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_U2X_AM_FULL = '0' then
            nx_state <= inACK;
				s_RDYX      <= '1';
				s_U2X_WR_EN <= '1';
          elsif i_WRU = '0' then
            nx_state <= endInTrans;
          else
            nx_state <= throt;
          end if;
 
        when endInTrans =>
				-- output signal values:
          s_WRX       <= '0';
          s_RDYX      <= '0';
          s_U2X_WR_EN <= '1';
				-- state decisions
          nx_state <= idle;


        -- out trans
        when outRQ =>
				-- output signal values:
          s_WRX  <= '1';
          s_RDYX <= '0';
				-- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
	         s_WRX    <= '0';
          elsif i_WRU = '1' and i_RDYU = '0' then
            nx_state <= inRQ;
          elsif i_WRU = '0' and i_RDYU = '0' then  -- vervollständigt, wenn ez-usb noch beschäfigt mit altem transfer
            s_X2U_RD_EN     <= '1';
				nx_state        <= outTrans;
--            s_bus_trans_dir <= writeToGPIF;
			 else
				nx_state        <= outRQ;
          end if;


        when outTrans =>
				-- output signal values:
           s_WRX           <= '1';
           s_RDYX          <= '0';
           s_X2U_RD_EN     <= '1';
           s_bus_trans_dir <= writeToGPIF;
			  o_LEDtx			<= '1';
				-- state decisions
           if i_WRU = '1' and i_RDYU = '1' then
             nx_state <= rst;
				 s_WRX           <= '0';
             s_X2U_RD_EN     <= '0';
             s_bus_trans_dir <= readFromGPIF;
           elsif i_X2U_EMPTY = '1' then
             nx_state <= endOutTrans;
           elsif i_WRU = '0' and i_RDYU = '1' then
             nx_state <= outTrans;
           else
				 s_X2U_RD_EN     <= '0';		-- to realise a wait case
				 nx_state <= outTrans;
           end if;
           
        when endOutTrans =>
				-- output signal values:
			 s_RDYX      <= '0';
          s_WRX       <= '1';  -- nötig um letzte 16bit an ez-usb zu schreiben
          s_X2U_RD_EN <= '1';  -- nötig da empyte flag schon beim ersten fifo zugriff auftaucht, zweite 16bit müssen noch gelesen werden
			 s_bus_trans_dir <= writeToGPIF;
				-- state decisions
          nx_state <= idle;
        -- error case
        when others =>
          nx_state <= idle;
      end case;
      
    end process transaction;
    
end com_core;
