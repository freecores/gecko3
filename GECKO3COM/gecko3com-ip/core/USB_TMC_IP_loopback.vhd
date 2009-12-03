library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

library work;
use work.USB_TMC_IP_Defs.all;

entity USB_TMC_IP_loopback is
  port (
    i_nReset,
	 i_SYSCLK,									 -- FPGA System CLK
	 i_U2X_AM_EMPTY,
	 i_U2X_EMPTY,
	 i_X2U_AM_FULL,
	 i_X2U_FULL	    : in  std_logic;
	 i_U2X_DATA     : in  std_logic_vector(SIZE_DBUS_FPGA-1 downto 0);
	 o_U2X_RD_EN,
	 o_X2U_WR_EN    : out std_logic;
	 o_X2U_DATA     : out std_logic_vector(SIZE_DBUS_FPGA-1 downto 0)
	);
end USB_TMC_IP_loopback;



architecture loopback of USB_TMC_IP_loopback is

  
  type t_fsmLoop is (rst, idle, writeRQ, writeIn, writeEnd);
  
  signal pr_stateLoop, nx_stateLoop : t_fsmLoop;

  -----------------------------------------------------------------------------
  -- controll bus
  -----------------------------------------------------------------------------
	 signal	s_U2X_RD_EN,
				s_X2U_WR_EN : std_logic;
  
  
begin

	 o_U2X_RD_EN  <=  s_U2X_RD_EN;
	 o_X2U_WR_EN  <=  s_X2U_WR_EN;

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
		  
			if i_U2X_AM_EMPTY = '0' and i_X2U_AM_FULL = '0' then
			  nx_stateLoop <= writeRQ;
			  s_U2X_RD_EN <= '1';
			else
			  nx_stateLoop <= idle;
        end if;
		  
        when writeRQ =>

          s_U2X_RD_EN <= '1';
			 s_X2U_WR_EN <= '0';
			 nx_stateLoop <= writeIn;
			 
		  when writeIn =>
			
 			 if i_U2X_EMPTY = '1' and i_X2U_AM_FULL = '0' then
		  		  	nx_stateLoop <= writeEnd;
					s_U2X_RD_EN <= '1';
					s_X2U_WR_EN <= '1';
					
			 elsif i_U2X_EMPTY = '0' and i_X2U_AM_FULL = '1' then
					nx_stateLoop <= writeEnd;
					s_U2X_RD_EN <= '0';
					s_X2U_WR_EN <= '1';
					
			 elsif i_U2X_EMPTY = '1' and i_X2U_AM_FULL = '1' then
					nx_stateLoop <= writeEnd; --idle;
					s_U2X_RD_EN <= '0';
					s_X2U_WR_EN <= '1'; ---s_X2U_WR_EN <= '0';
					
			  else
			      nx_stateLoop <= writeIn;
					s_X2U_WR_EN <= '1';
					s_U2X_RD_EN <= '1';
			 end if;

				
		  when writeEnd =>
				nx_stateLoop <= idle;
				s_U2X_RD_EN <= '0';
				s_X2U_WR_EN <= '1';


        -- error case
        when others =>
          nx_stateLoop <= idle;
      end case;
      
    end process loopTrans;
            
end loopback;
