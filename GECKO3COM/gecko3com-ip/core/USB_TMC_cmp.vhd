----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:14 04/15/2009 
-- Design Name: 
-- Module Name:    com_cmp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
--------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

library XilinxCoreLib;

library work;
use work.USB_TMC_IP_Defs.all;


package USB_TMC_cmp is

  
  attribute box_type      : string;
  
  
 --------------------------------------------------------------------------------- 
 --     COMPONENTS  
 ---------------------------------------------------------------------------------

-- FIFO IN


component fifo_U2X_2C_1024B
        port (
        din          : IN  std_logic_VECTOR(SIZE_DBUS_GPIF-1 downto 0);
        rd_clk       : IN  std_logic;
        rd_en        : IN  std_logic;
        rst          : IN  std_logic;
        wr_clk       : IN  std_logic;
        wr_en        : IN  std_logic;
        almost_empty : OUT std_logic;
        almost_full  : OUT std_logic;
        dout         : OUT std_logic_VECTOR(SIZE_DBUS_FPGA-1 downto 0);
        empty        : OUT std_logic;
        full         : OUT std_logic);
end component;


attribute box_type of fifo_U2X_2C_1024B : component is "black_box";

--<!-->

-- FIFO OUT

component fifo_X2U_2C_1024B
        port (
        din          : IN  std_logic_VECTOR(SIZE_DBUS_FPGA-1 downto 0);
        rd_clk       : IN  std_logic;
        rd_en        : IN  std_logic;
        rst          : IN  std_logic;
        wr_clk       : IN  std_logic;
        wr_en        : IN  std_logic;
        almost_empty : OUT std_logic;
        almost_full  : OUT std_logic;
        dout         : OUT std_logic_VECTOR(SIZE_DBUS_GPIF-1 downto 0);
        empty        : OUT std_logic;
        full         : OUT std_logic);
end component;

attribute box_type of fifo_X2U_2C_1024B : component is "black_box";
--<!-->

-- FSM GPIF

component gpif_com
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
end component;
--<!-->

-- FSM Loopback
component USB_TMC_IP_loopback 
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
end component;
--<!-->


end USB_TMC_cmp;

