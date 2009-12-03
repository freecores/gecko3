library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

library work;
use work.USB_TMC_IP_Defs.all;

entity gpif_com is
  port (
    i_nReset,
    i_IFCLK,									-- GPIF CLK (is Master)
    i_WRU,                             -- write from GPIF
    i_RDYU 	      : in    std_logic;       -- GPIF is ready
    i_U2X_FULL,
    i_U2X_AM_FULL,	 -- signals for IN FIFO
    i_X2U_AM_EMPTY,
	 i_X2U_EMPTY	: in  std_logic;     -- signals for OUT FIFO
	 i_dbus        : in    std_logic_vector(SIZE_DBUS_GPIF-1 downto 0);	-- OUT FIFO DBUS
	 o_U2X_WR_EN, 						      -- signals for IN FIFO
	 o_X2U_RD_EN,								-- signals for OUT FIFO
	 o_FIFOrst,
    o_WRX,                             -- To write to GPIF
    o_RDYX    : out   std_logic;       -- Core is ready
	 o_LEDrx,
	 o_LEDtx,
	 o_LEDrun  : out   std_logic; 		--
	 o_dbus    : out   std_logic_vector(SIZE_DBUS_GPIF-1 downto 0);	-- IN FIFO DBUS
    b_dbus 	  : inout std_logic_vector(SIZE_DBUS_GPIF-1 downto 0));  -- bidirect data bus
end gpif_com;



architecture com_core of gpif_com is

 -----------------------------------------------------------------------------
  -- FSM
  -----------------------------------------------------------------------------

  type t_fsmState is (rst, idle,                                  -- controll states
                     inRQ, inACK, inTrans, throt, endInTrans,  -- in com states
                     outRQ, outTrans, endOutTrans);             -- out com states
  
  type t_busAccess is (readFromGPIF, writeToGPIF);


  signal pr_state, nx_state : t_fsmState;


  -- interconection signals

  signal s_bus_trans_dir     : t_busAccess;
  signal s_FIFOrst           : std_logic;

     -- U2X
  signal s_U2X_FULL,
         s_U2X_AM_FULL  : std_logic;

     -- X2U
  signal s_X2U_EMPTY,
         s_X2U_AM_EMPTY : std_logic;
 
begin




  -----------------------------------------------------------------------------
  -- Data bus access
  -----------------------------------------------------------------------------

  -- purpose: to handle the access on the bidirect bus
  -- type   : combinational
  -- inputs : s_bus_trans_dir
  -- outputs: 
  bus_access : process (i_IFCLK, s_bus_trans_dir)

  begin  -- process bus_access
    if s_bus_trans_dir = writeToGPIF then
      b_dbus <= i_dbus;
    else
      b_dbus <= (others => 'Z');
      if rising_edge(i_IFCLK) then
        o_dbus <= b_dbus;
      end if;
    end if;
  end process bus_access;




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
    transaction : process(pr_state, i_WRU, i_RDYU, s_U2X_AM_FULL, s_X2U_EMPTY)
    begin  -- process transaction
	 
	    -- default signal sets to avoid latches
		  s_FIFOrst       <= '0';
		  s_bus_trans_dir <= readFromGPIF;
		  o_U2X_WR_EN 		<= '0';
		  o_X2U_RD_EN		<= '0';
		  nx_state 		   <= idle;
		  o_WRX				<= '0';
		  o_RDYX				<= '0';
		  o_LEDrun			<= '1';
		  o_LEDrx			<= '0';
		  o_LEDtx			<= '0';
		  
      case pr_state is
        -- controll

        when rst =>
				-- out signal states
           s_FIFOrst       <= '1';
           o_WRX           <= '0';
           o_RDYX          <= '0';
           
           s_bus_trans_dir <= readFromGPIF;
			  
			    -- state decisions
           nx_state        <= idle;
			  o_LEDrun			<= '0';
        
        when idle =>
				-- out signal states
          s_FIFOrst       <= '0';
          o_WRX           <= '0';
          o_RDYX          <= '0';
          o_U2X_WR_EN     <= '0';
          o_X2U_RD_EN     <= '0';
          s_bus_trans_dir <= readFromGPIF;

			    -- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_WRU = '1' and i_RDYU = '0' then
            nx_state <= inRQ;
          elsif i_WRU = '0' and s_X2U_EMPTY = '0' then
            nx_state <= outRQ;
          else
            nx_state <= idle;
          end if;

        -- in trans
        when inRQ =>
				-- out signal states
          o_WRX  <= '0';
          o_RDYX <= '0';
			    -- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif s_U2X_AM_FULL = '0' then
            nx_state <= inACK;
				o_RDYX		 <= '1';
          else
            nx_state <= idle;
          end if;

        when inACK =>
				-- out signal states
          o_WRX  		 <= '0';
          o_RDYX		 <= '0';
			 o_U2X_WR_EN <= '0';
			 
			    -- state decisions
			 if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_WRU = '1' then
            nx_state    <= inTrans;
			   o_U2X_WR_EN <= '1';
				o_RDYX		 <= '1';
          else
            nx_state <= endInTrans;
          end if;

        when inTrans =>
				-- out signal states
          o_WRX       <= '0';
          o_RDYX      <= '0';
			 o_LEDrx		 <= '1';

				-- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_WRU = '0' then
            nx_state <= endInTrans;
				o_RDYX      <= '1';
	         o_U2X_WR_EN <= '1';
          elsif i_U2X_AM_FULL = '1' then
            nx_state <= throt;
    			o_U2X_WR_EN <= '1';
          else
            nx_state <= inTrans;
	         o_RDYX      <= '1';
	         o_U2X_WR_EN <= '1';
          end if;

        when throt =>
				-- out signal states
          o_WRX       <= '0';
          o_RDYX      <= '0';
          o_U2X_WR_EN <= '0';
				-- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
          elsif i_U2X_AM_FULL = '0' then
            nx_state <= inACK;
				o_RDYX      <= '1';
				o_U2X_WR_EN <= '1';
          elsif i_WRU = '0' then
            nx_state <= endInTrans;
          else
            nx_state <= throt;
          end if;
 
        when endInTrans =>
				-- out signal states
          o_WRX       <= '0';
          o_RDYX      <= '0';
          o_U2X_WR_EN <= '1';
				-- state decisions
          nx_state <= idle;


        -- out trans
        when outRQ =>
				-- out signal states
          o_WRX  <= '1';
          o_RDYX <= '0';
				-- state decisions
          if i_WRU = '1' and i_RDYU = '1' then
            nx_state <= rst;
	         o_WRX    <= '0';
          elsif i_WRU = '1' and i_RDYU = '0' then
            nx_state <= inRQ;
          elsif i_WRU = '0' and i_RDYU = '0' then  -- vervollständigt, wenn ez-usb noch beschäfigt mit altem transfer
            nx_state        <= outTrans;
--            s_bus_trans_dir <= writeToGPIF;
          else
				nx_state        <= outRQ;
          end if;


        when outTrans =>
				-- out signal states
           o_WRX           <= '1';
           o_RDYX          <= '0';
           o_X2U_RD_EN     <= '1';
           s_bus_trans_dir <= writeToGPIF;
			  o_LEDtx			<= '1';
				-- state decisions
           if i_WRU = '1' and i_RDYU = '1' then
             nx_state <= rst;
				 o_WRX           <= '0';
             o_X2U_RD_EN     <= '0';
             s_bus_trans_dir <= readFromGPIF;
           elsif s_X2U_EMPTY = '1' then
             nx_state <= endOutTrans;
           elsif i_WRU = '0' and i_RDYU = '1' then
             nx_state <= outTrans;
           else
				 o_X2U_RD_EN     <= '0';		-- to realise a wait case
				 nx_state <= outTrans;
           end if;
           
        when endOutTrans =>
				-- out signal states
          o_WRX       <= '1';  -- nötig um letzte 16bit an ez-usb zu schreiben
          o_RDYX      <= '0';
          o_X2U_RD_EN <= '1';  -- nötig, da empyte flag schon beim ersten fifo zugriff auftaucht, zweite 16bit müssen noch gelesen werden
			 s_bus_trans_dir <= writeToGPIF;
				-- state decisions
          nx_state <= idle;

        -- error case
        when others =>
          nx_state <= idle;
      end case;
      
    end process transaction;
    
end com_core;
