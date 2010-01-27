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
-------------------------------------------------------------------------------
--
--  Author:  Andreas Habegger, Christoph Zimmermann
--  Date of creation: 8. April 2009
--  Description:
--      FSM that controls the interface between the EZ-USB (and it's internal
--      GPIF, General Purpose Interface) and our FPGA. The interface is
--      synchronous, where the GPIF provides the clock. This FSM is synchronous
--      to the GPIF clock, also this side of the FIFO's.
--
--    You can find more detailed information how the interface works in the
--    ../Doc folder.
--
--  Target Devices:     general
--  Tool versions:      Xilinx ISE 11.1, XST
--  Dependencies:
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

library work;
use work.GECKO3COM_defines.all;

entity gpif_com_fsm is
  port (
    i_nReset         : in  std_logic;
    i_IFCLK          : in  std_logic;  -- GPIF CLK (GPIF is Master and provides the clock)
    i_WRU            : in  std_logic;   -- write from GPIF
    i_RDYU           : in  std_logic;   -- GPIF is ready
    i_EOM            : in  std_logic;   -- all data for X2U transfer is in FIFO
    i_U2X_FULL       : in  std_logic;
    i_U2X_AM_FULL    : in  std_logic;   -- signals for IN FIFO
    i_X2U_FULL_IFCLK : in  std_logic;
    i_X2U_AM_EMPTY   : in  std_logic;
    i_X2U_EMPTY      : in  std_logic;   -- signals for OUT FIFO
    o_bus_trans_dir  : out std_logic;
    o_U2X_WR_EN      : out std_logic;   -- signals for IN FIFO
    o_X2U_RD_EN      : out std_logic;   -- signals for OUT FIFO
    o_FIFOrst        : out std_logic;
    o_WRX            : out std_logic;   -- To write to GPIF
    o_RDYX           : out std_logic;   -- Core is ready
    o_ABORT          : out std_logic;  -- abort condition detected. we have to flush the data
    o_RX             : out std_logic;
    o_TX             : out std_logic    --
    );

end gpif_com_fsm;



architecture fsm of gpif_com_fsm is

  -- XST specific synthesize attributes
  attribute safe_implementation: string;
  attribute safe_recovery_state: string;
 
  
  -----------------------------------------------------------------------------
  -- FSM
  -----------------------------------------------------------------------------

  type   t_busAccess is (readFromGPIF, writeToGPIF);
  signal s_bus_trans_dir : t_busAccess;
  

  type t_fsmState is (rst, idle,        -- controll states
                      inRQ, inACK, inWait, inTrans, inThrot,
                      inThrotBreak,inThrotBreak2, inThrotEnd,
                      endInTrans,  -- in com states
                      outRQ, outTrans, outACK, outUSBwait, outFIFOwait,
                      endOutTrans);  -- out com states

  
  
  signal pr_state, nx_state : t_fsmState;
  -- XST specific synthesize attributes
  attribute safe_recovery_state of pr_state : signal is "idle";
  attribute safe_implementation of pr_state : signal is "yes";

  

  
  -- interconection signals
  signal s_FIFOrst, s_RDYX, s_WRX, s_ABORT : std_logic;

  -- USB to Xilinx (U2X)
  signal s_U2X_WR_EN : std_logic;

  -- Xilinx to USB (X2U)
  signal s_X2U_RD_EN : std_logic;
  
begin

  

  o_FIFOrst       <= s_FIFOrst;
  o_X2U_RD_EN     <= s_X2U_RD_EN;
  o_WRX           <= s_WRX;
  o_RDYX          <= s_RDYX;
  o_U2X_WR_EN     <= s_U2X_WR_EN;
  o_bus_trans_dir <= '1' when s_bus_trans_dir = writeToGPIF else '0';
  o_ABORT         <= s_ABORT;


  -----------------------------------------------------------------------------
  -- FSM GPIF
  -----------------------------------------------------------------------------

  -- state reg
  action : process(i_IFCLK, i_nReset)
  begin

    if i_nReset = '0' then
      pr_state <= rst;
      
    elsif rising_edge(i_IFCLK) then
        pr_state <= nx_state;
    end if;
  end process action;


  -- comb logic
  transaction : process(pr_state, i_WRU, i_RDYU, i_U2X_FULL, i_U2X_AM_FULL,
                        i_X2U_EMPTY, i_X2U_FULL_IFCLK, i_EOM)
    variable state_number : std_logic_vector(3 downto 0);  -- debug information
  begin  -- process transaction

    -- default signal values to avoid latches:
    s_FIFOrst       <= '0';
    s_bus_trans_dir <= readFromGPIF;
    s_U2X_WR_EN     <= '0';
    s_X2U_RD_EN     <= '0';
    nx_state        <= idle;
    s_WRX           <= '0';
    s_RDYX          <= '0';
    s_ABORT         <= '0';
    o_RX            <= '0';
    o_TX            <= '0';

    case pr_state is
      -- controll

      when rst =>
        state_number := x"1";
        -- output signal values:
        s_FIFOrst   <= '1';
        s_WRX       <= '0';
        s_RDYX      <= '0';
        s_U2X_WR_EN <= '0';
        s_X2U_RD_EN <= '0';
        s_ABORT     <= '1';
        o_RX        <= '0';
        o_TX        <= '0';
        s_bus_trans_dir <= readFromGPIF;

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        else
          nx_state <= idle;
        end if;
        
      when idle =>
        state_number := x"2";
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
        elsif i_WRU = '0' and
          (i_X2U_FULL_IFCLK = '1' or i_EOM = '1') and i_X2U_EMPTY = '0' then
          nx_state <= outRQ;
        else
          nx_state <= idle;
        end if;

        -----------------------------------------------------------------------
        -- in trans
      when inRQ =>
        state_number := x"3";      
        -- output signal values:
        s_WRX  <= '0';
        s_RDYX <= '0';
        s_U2X_WR_EN <= '0';
        o_RX        <= '0';
        
        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_U2X_FULL = '0' then
          nx_state <= inACK;
        else
          nx_state <= idle;
        end if;

      when inACK =>
        state_number := x"4";
        -- output signal values:
        s_WRX       <= '0';
        s_RDYX      <= '1';
        s_U2X_WR_EN <= '0';
        o_RX        <= '1';

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_WRU = '1' then
          --nx_state <= inTrans;
          nx_state <= inWait;
        else
          nx_state <= endInTrans;
        end if;

        when inWait =>
        state_number := x"5";
        -- output signal values:
        s_WRX       <= '0';
        s_RDYX      <= '1';
        s_U2X_WR_EN <= '0';
        o_RX        <= '1';

        -- state decisions
        nx_state <= inTrans;
        
      when inTrans =>
        state_number := x"6";
        -- output signal values:
        s_WRX       <= '0';
        s_RDYX      <= '1';
        s_U2X_WR_EN <= '1';
        o_RX        <= '1';

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_WRU = '0' then
          nx_state <= endInTrans;
        elsif i_U2X_AM_FULL = '1' then
          nx_state <= inThrot;
        else
          nx_state <= inTrans;
        end if;

      when inThrot =>
        state_number := x"7";
        -- output signal values:
        s_WRX       <= '0';
        s_RDYX      <= '0';
        s_U2X_WR_EN <= '0';
        o_RX        <= '1';

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_U2X_AM_FULL = '0' then
          nx_state <= inThrotBreak;
          --nx_state <= inThrotEnd;
        elsif i_WRU = '0' then
          nx_state <= endInTrans;
        else
          nx_state <= inThrot;
        end if;

      when inThrotBreak =>
        state_number := x"8";
        -- this is a one clock delay to help the fx2 to see the RDYX signal.
       
        -- output signal values:
        s_WRX       <= '0';
        s_RDYX      <= '1';
        s_U2X_WR_EN <= '0';
        o_RX        <= '1';

        -- state decisions 
        --nx_state <= inThrotBreak2;
        nx_state <= inThrotEnd;

      --when inThrotBreak2 =>
      --  -- this is a one clock delay to help the fx2 to see the RDYX signal.
       
      --  -- output signal values:
      --  s_WRX       <= '0';
      --  s_RDYX      <= '1';
      --  s_U2X_WR_EN <= '0';
      --  o_RX        <= '1';

      --  -- state decisions 
      --  nx_state <= inThrotEnd;
        
      when inThrotEnd =>
        state_number := x"9";
        -- this is a one clock delay to help the fx2 to see the RDYX signal.
       
        -- output signal values:
        s_WRX       <= '0';
        s_RDYX      <= '1';
        s_U2X_WR_EN <= '0';
        o_RX        <= '1';

        -- state decisions 
        nx_state <= inTrans;
        
      when endInTrans =>
        state_number := x"A";
        -- output signal values:
        s_WRX       <= '0';
        s_RDYX      <= '0';
        s_U2X_WR_EN <= '0';
        o_RX        <= '0';

        -- state decisions
        nx_state <= idle;

        -----------------------------------------------------------------------
        -- out trans
      when outRQ =>
        state_number := x"B";
        -- output signal values:
        s_WRX       <= '1';
        s_RDYX      <= '0';
        s_X2U_RD_EN <= '0';

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_WRU = '1' and i_RDYU = '0' then
          nx_state <= inRQ;
        else
          nx_state <= outACK;
        end if;

     when outACK =>
        state_number := x"C";
        -- output signal values:
        s_WRX       <= '1';
        s_RDYX      <= '0';
        s_X2U_RD_EN <= '1';
        o_TX        <= '1';

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_WRU = '0' and i_RDYU = '1' then
          nx_state <= outTrans;
        else
          nx_state <= outUSBwait;
        end if;

      when outTrans =>
        state_number := x"D";
        -- output signal values:
        s_WRX           <= '1';
        s_RDYX          <= '0';
        s_X2U_RD_EN     <= '1';
        o_TX            <= '1';
        s_bus_trans_dir <= writeToGPIF;
        
        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state        <= rst;
        elsif i_X2U_EMPTY = '1' and i_EOM = '1' then
          nx_state <= endOutTrans;
        elsif i_X2U_EMPTY = '1' and i_EOM = '0' then
          nx_state <= outFIFOwait;  
        elsif i_WRU = '0' and i_RDYU = '1' then
          nx_state <= outTrans;
        else
          nx_state    <= outUSBwait;
        end if;

      when outUSBwait =>
        state_number := x"E";
        -- output signal values:
        s_WRX       <= '1';
        s_RDYX      <= '0';
        s_X2U_RD_EN <= '0';
        o_TX        <= '1';
        s_bus_trans_dir <= writeToGPIF;

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_WRU = '0' and i_RDYU = '1' then
          nx_state <= outTrans;
        else
          nx_state <= outUSBwait;
        end if;
        
      when outFIFOwait =>
        state_number := x"F";
        -- output signal values:
        s_WRX       <= '1';
        s_RDYX      <= '1';
        s_X2U_RD_EN <= '0';
        o_TX        <= '1';
        s_bus_trans_dir <= writeToGPIF;

        -- state decisions
        if i_WRU = '1' and i_RDYU = '1' then
          nx_state <= rst;
        elsif i_X2U_EMPTY = '1' and i_EOM = '1' then
          nx_state <= endOutTrans;
        elsif i_X2U_EMPTY = '0' and i_EOM = '0' then
          nx_state <= outTrans;
        else
          nx_state <= outFIFOwait;
        end if;
        
      when endOutTrans =>
        state_number := x"9";
        -- output signal values:
        s_RDYX          <= '0';
        s_WRX           <= '0'; 
        s_X2U_RD_EN     <= '0'; 
        s_bus_trans_dir <= writeToGPIF;
        
        -- state decisions
        if i_RDYU = '0' then
          nx_state <= idle;
        else
          nx_state <= endOutTrans;
        end if;
        
        -- error case
      when others =>
        nx_state <= idle;
    end case;
    
  end process transaction;
  
end fsm;
