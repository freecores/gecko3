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
  constant SIZE_DBUS_GPIF     : INTEGER := 16;  -- SIZE in bit
  constant SIZE_DBUS_FPGA 	   : INTEGER := 32;  -- SIZE in bit
  constant SETUP_TIME        : INTEGER := 10;  -- setuptime for FIFO value between 0 and 15
  constant BYTE				   : INTEGER := 8;
	 
  constant NUMBER_OF_SW		   : INTEGER := 4;
  constant USBTMC_HEADER_SIZE : INTEGER := 12;
  
  constant HEAD_EXT_VAL       : INTEGER := 6;
  
						
						
  type tHeaderReg is RECORD
     MsgID  : std_logic_vector(BYTE-1 downto 0);
	  bTag   : std_logic_vector(BYTE-1 downto 0);
	  bTagInv: std_logic_vector(BYTE-1 downto 0);
	  res1   : std_logic_vector(BYTE-1 downto 0);
	  TfSize : std_logic_vector((4*BYTE)-1 downto 0);
	  bmTfAtt: std_logic_vector((BYTE)-1 downto 0);
	  GPByte1: std_logic_vector((BYTE)-1 downto 0);
	  GPByte2: std_logic_vector((BYTE)-1 downto 0);
	  GPByte3: std_logic_vector((BYTE)-1 downto 0);
	end record;
	
	subtype tByte is std_logic_vector(BYTE-1 downto 0);
	  
 -- USBTMC
  constant DEV_DEP_MSG_OUT            : tByte := x"01";
  constant REQUEST_DEV_DEP_MSG_IN     : tByte := x"02";
  constant DEV_DEP_MSG_IN             : tByte := x"02";
  
  constant VENDOR_SPECIFIC_OUT        : tByte := x"7E";
  constant REQUEST_VENDOR_SPECIFIC_IN : tByte := x"7F";
  constant VENDOR_SPECIFIC_IN         : tByte := x"7F";
  
end USB_TMC_IP_Defs;
