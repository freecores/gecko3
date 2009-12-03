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


package USB_TMC_IP_Defs is

 -- constants
  constant SIZE_DBUS_GPIF 	: INTEGER := 16;  -- SIZE in bit
  constant SIZE_DBUS_FPGA 	: INTEGER := 32;  -- SIZE in bit
  constant SETUP_TIME     	: INTEGER := 10;  -- setuptime for FIFO value between 0 and 15
  constant BYTE				: INTEGER := 8;
	 
  constant NUMBER_OF_SW		: INTEGER := 4;
  
  
 -- types  







end USB_TMC_IP_Defs;
