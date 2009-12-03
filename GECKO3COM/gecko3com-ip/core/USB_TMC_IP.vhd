library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

library work;
use work.USB_TMC_func.all;
use work.USB_TMC_IP_Defs.all;
use work.USB_TMC_cmp.all;


entity USB_TMC_IP is
  port (
    i_nReset,
    i_IFCLK,									 -- GPIF CLK (is Master)
	 i_SYSCLK,									 -- FPGA System CLK
    i_WRU,                              -- write from GPIF
    i_RDYU 	  : in   	std_logic;        -- GPIF is ready
--	 i_ENAIP	  : in   	std_logic;  		 -- enable the IP core
--	 i_RDYD2IP : in   	std_logic;			 -- data RDY 2 the IP core   
--	 i_d2USB   : in   	std_logic_vector(SIZE_DBUS_FPGA-1 downto 0);  -- FPGA DBUS
--	 i_RxD 	  : in   	std_logic;
--	 o_TxD     : out		std_logic;
--	 i_Switches: in		std_logic_vector(NUMBER_OF_SW-1 downto 0);
    o_WRX,                              -- To write to GPIF
    o_RDYX    : out  	std_logic;      -- Core is ready
--	 o_RDYIP   : out  	std_logic; 		 -- IP ready FPGA site
--	 o_DAVIP   : out  	std_logic; 		 -- Data available for FPGA
	 o_LEDrx,                            -- controll LED rx __DEB_INFO__
	 o_LEDtx : out 	 	std_logic; 		 -- controll LED tx __DEB_INFO__
	 o_LEDrun  : out  	std_logic;      -- controll LED running signalisation __DEB_INFO__
--	 o_d2FPGA  : out  	std_logic_vector(SIZE_DBUS_FPGA-1 downto 0);  -- FPGA DBUS
    b_dbus 	  : inout	std_logic_vector(SIZE_DBUS_GPIF-1 downto 0));  -- bidirect data bus
end USB_TMC_IP;



architecture top_core of USB_TMC_IP is


  -- interconection signals

  signal s_FIFOrst           : std_logic;

     -- U2X
  signal s_U2X_FIFO_WR_EN,
         s_U2X_FIFO_RD_EN,
         s_U2X_FULL,
         s_U2X_AM_FULL,
         s_U2X_EMPTY,
         s_U2X_AM_EMPTY : std_logic;

     -- X2U
  signal s_X2U_FIFO_WR_EN,
         s_X2U_FIFO_RD_EN,
         s_X2U_FULL,
         s_X2U_AM_FULL,
         s_X2U_EMPTY,
         s_X2U_AM_EMPTY : std_logic;
			
	-- data signals
	signal s_X2U_FIFO_dbus_out : std_logic_vector(SIZE_DBUS_GPIF-1 downto 0);
	

  -------------------------------------------------------------------------------
  -- data bus
  -------------------------------------------------------------------------------

  -- data signals
	signal s_dbus_in  : std_logic_vector(SIZE_DBUS_GPIF-1 downto 0);
	signal s_dbus_out : std_logic_vector(SIZE_DBUS_GPIF-1 downto 0);
	
	signal s_opb_in	: std_logic_vector(SIZE_DBUS_FPGA-1 downto 0);
	signal s_opb_out	: std_logic_vector(SIZE_DBUS_FPGA-1 downto 0);
	
	
  -------------------------------------------------------------------------------
  -- USBTMC
  -------------------------------------------------------------------------------
	
	type tHeaderRegAccess is (EOT,SET);
	
	signal s_U2X_HeaderReg,
          s_X2U_HeaderReg		 : tHeaderReg;
			 
	signal s_U2X_setHeader,
          s_X2U_setHeader     : tHeaderRegAccess;
			 
			 
	signal s_U2X_extracted     : std_logic;
			 
	-- header extraction
	signal s_U2X_WR_EN,
--        s_X2U_WR_EN,
--			 s_U2X_RD_EN,
          s_X2U_RD_EN          : std_logic;
	
	

--  -------------------------------------------------------------------------------
--  -- UART 
--  -------------------------------------------------------------------------------
--	signal s_UART_RD	: std_logic;
--	signal s_UART_WR	: std_logic;
--	signal s_CS			: std_logic;
--	signal s_uart_data: std_logic_vector(BYTE-1 downto 0);
	
 

  -----------------------------------------------------------------------------
  -- COMPONENTS
  -----------------------------------------------------------------------------

--COMPONENT miniUART
--  port (
--     SysClk   : in  Std_Logic;  -- System Clock
--     Reset    : in  Std_Logic;  -- Reset input
--     CS_N     : in  Std_Logic;
--     RD_N     : in  Std_Logic;
--     WR_N     : in  Std_Logic;
--     RxD      : in  Std_Logic;
--     TxD      : out Std_Logic;
--     IntRx_N  : out Std_Logic;  -- Receive interrupt
--     IntTx_N  : out Std_Logic;  -- Transmit interrupt
--     Addr     : in  Std_Logic_Vector(1 downto 0); -- 
--     DataIn   : in  Std_Logic_Vector(7 downto 0); -- 
--     DataOut  : out Std_Logic_Vector(7 downto 0)); -- 
--end COMPONENT miniUART;

  
begin

  -----------------------------------------------------------------------------
  -- Port map
  -----------------------------------------------------------------------------

F_IN : fifo_U2X_2C_1024B
                port map (
                        din          => s_dbus_in,
                        rd_clk       => i_SYSCLK,
                        rd_en        => s_U2X_FIFO_RD_EN,
                        rst          => s_FIFOrst,
                        wr_clk       => i_IFCLK ,
                        wr_en        => s_U2X_FIFO_WR_EN,
                        almost_empty => s_U2X_AM_EMPTY,
                        almost_full  => s_U2X_AM_FULL,
                        dout         => s_opb_in,
                        empty        => s_U2X_EMPTY,
                        full         => s_U2X_FULL
                        );


F_OUT : fifo_X2U_2C_1024B
                port map (
                        din          => s_opb_out,
                        rd_clk       => i_IFCLK,
                        rd_en        => s_X2U_FIFO_RD_EN,
                        rst          => s_FIFOrst,
                        wr_clk       => i_SYSCLK,
                        wr_en        => s_X2U_FIFO_WR_EN,
                        almost_empty => s_X2U_AM_EMPTY,
                        almost_full  => s_X2U_AM_FULL,
                        dout         => s_X2U_FIFO_dbus_out,
                        empty        => s_X2U_EMPTY,
                        full         => s_X2U_FULL
                        );

FSM_GPIF : gpif_com
				port map (
					i_nReset			=> i_nReset,
					i_IFCLK			=>	i_IFCLK,								
					i_WRU				=> i_WRU,                     
					i_RDYU			=> i_RDYU,
					i_U2X_FULL		=> s_U2X_FULL,
					i_U2X_AM_FULL	=> s_U2X_AM_FULL,
					i_X2U_AM_EMPTY	=> s_X2U_AM_EMPTY,
					i_X2U_EMPTY		=> s_X2U_EMPTY,
					i_dbus   		=> s_dbus_out,       -- data from the FPGA usr dep application
					o_U2X_WR_EN		=> s_U2X_WR_EN,      -- wr ena for in fifo
					o_X2U_RD_EN		=> s_X2U_RD_EN,      -- rd ena for out fifo
					o_FIFOrst		=> s_FIFOrst,        -- abord dedection to rst the fifo's
					o_WRX				=> o_WRX,
					o_RDYX			=> o_RDYX,
					o_LEDrx 		   => o_LEDrx,
					o_LEDtx 		   => o_LEDtx,
					o_LEDrun 		=> o_LEDrun,
					o_dbus    		=> s_dbus_in,        -- data from the GPIF 
					b_dbus 	  		=> b_dbus
				);
				
				
Loopback : USB_TMC_IP_loopback
		port map (
			i_nReset 	  		=> i_nReset,
			i_SYSCLK 	  		=> i_SYSCLK,									 -- FPGA System CLK
			i_U2X_EMPTY 		=> s_U2X_EMPTY,
			i_U2X_AM_EMPTY	   => s_U2X_AM_EMPTY,
			i_X2U_AM_FULL 	   => s_X2U_AM_FULL,
			i_X2U_FULL 	  	   => s_X2U_FULL,
			i_U2X_DATA 		   => s_opb_in,
			o_X2U_DATA        => s_opb_out,
			o_U2X_RD_EN 	  	=> s_U2X_FIFO_RD_EN,
			o_X2U_WR_EN 	  	=> s_X2U_FIFO_WR_EN
		);



MAP_U2X_Data : process(i_nReset, i_IFCLK)
	variable count : integer range 0 to 7;
	begin
	if ( i_nReset = '0') then
	 count := 0;
	 s_U2X_FIFO_WR_EN <= '0';
	 s_U2X_extracted  <= '0';
	 rst_header_Reg(s_U2X_HeaderReg);
	 
	elsif rising_edge(i_IFCLK) then
		if (s_U2X_setHeader = EOT ) then
			count := 0;
			s_U2X_FIFO_WR_EN <= '0';
			s_U2X_extracted  <= '0';
		else
		  if count < HEAD_EXT_VAL then
		  	 wr_header_Reg_element(count,s_dbus_in,s_U2X_HeaderReg);
		    count := count+1;
			 s_U2X_FIFO_WR_EN <= '0';
		  else
		    s_U2X_FIFO_WR_EN <= s_U2X_WR_EN;
			 s_U2X_extracted  <= '1';
		  end if;
	   end if;
	end if;
end process MAP_U2X_Data;



--
--MAP_U2X_Data : process(i_nReset, i_IFCLK)
--	variable count integer range 0 to 7;
--	begin
--	if ( i_nReset = '0') then
--	 s_U2X_HeaderReg <= (others => '0');
--	 count := 0;
--	 s_U2X_FIFO_WR_EN <= '0';
--	 s_U2X_extracted  <= '0';
--	 
--	elsif rising_edge(i_IFCLK) then
--		if (s_U2X_setHeader = EOT ) then
--			count := '0';
--			s_U2X_FIFO_WR_EN <= '0';
--			s_U2X_extracted  <= '0';
--		else
--		  if count < HEAD_EXT_VAL then
--		    s_U2X_HeaderReg(2*count)     <= s_dbus_in(BYTE-1 downto 0);
--		    s_U2X_HeaderReg((2*count)+1) <= s_dbus_in((2*BYTE)-1 downto BYTE); 
--		    count := count+1;
--			 s_U2X_FIFO_WR_EN <= '0';
--		  else
--		    s_U2X_FIFO_WR_EN <= s_U2X_WR_EN;
--			 s_U2X_extracted  <= '1';
--		  end if;
--	   end if;
--	end if;
--end process MAP_U2X_Data;


MAP_X2U_Data : process(i_nReset, i_SYSCLK)
	variable count : integer range 0 to 7;
	begin
	if ( i_nReset = '0') then
	 count := 0;
	 s_X2U_FIFO_RD_EN <= '0';
	 
	elsif rising_edge(i_IFCLK) then
		if (s_X2U_setHeader = EOT ) then
			count := 0;
			s_X2U_FIFO_RD_EN <= '0';
		else
		  if count < HEAD_EXT_VAL then
		  rd_header_Reg_element(count,s_X2U_HeaderReg,s_dbus_out);
		    count := count+1;
			 s_X2U_FIFO_RD_EN <= '0';
		  else
		    s_X2U_FIFO_RD_EN <= s_X2U_RD_EN;
			 s_dbus_out <= s_X2U_FIFO_dbus_out;
		  end if;
	   end if;
	end if;

end process MAP_X2U_Data;



--
--uart : miniUART
--			port map (
--			SysClk 	=> i_SYSCLK,
--			Reset 	=> i_nReset,
--			CS_N  	=> s_CS,
--			RD_N  	=> s_UART_RD,
--			WR_N   	=> s_UART_WR,
--			RxD   	=> i_RxD,
--			TxD      => o_TxD,
--			IntRx_N  => open,
--			IntTx_N  => open,
--			Addr     => "00",
--			DataIn   => (others => 'Z'),
--			DataOut  => s_uart_data
--			);          



  
end top_core;
