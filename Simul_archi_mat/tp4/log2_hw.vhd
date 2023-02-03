--------------------------------------------------------------------------------
-- log2_hw component
-- F.Thiebolt
--------------------------------------------------------------------------------

-- library definitions
library ieee;
library work;

-- library uses
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.cpu_package.all; --we'll make use of our log2 function

-- Component definition
entity log2_hw is

	-- generic parameters
	generic	(
		-- max counter
		BUS_WIDTH : natural := 8
    );

	-- I/O
	port (
		DIN : in std_logic_vector(BUS_WIDTH-1 downto 0);
        DOUT : out std_logic_vector(log2(BUS_WIDTH) downto 0)
    );

end log2_hw;

-- architecture definition
architecture behaviour of log2_hw is

    function mylog2( vI: in std_logic_vector ) return std_logic_vector is
    begin
      -- synthesis translate_off
      --if is_X( vI ) then
      --  return conv_std_logic_vector(0,log2(BUS_WIDTH)+1);
      --end if;
      -- synthesis translate_on
    
      if vI=conv_std_logic_vector(0,vI'length) or vI=conv_std_logic_vector(1,vI'length) then
        return conv_std_logic_vector(0,log2(BUS_WIDTH)+1); --return conv_std_logic_vector(0,log2(BUS_WIDTH)+1);
      end if;
      for i in vI'range loop 
          if vI(i) ='1' then
            if vI(i-1 downto 0)=conv_std_logic_vector(0,vI'length) then 
                return conv_std_logic_vector(0,log2(BUS_WIDTH)+1);
            else 
                return conv_std_logic_vector(i+1,log2(BUS_WIDTH)+1);
            end if;
          end if;
      end loop;
      -- default
      return conv_std_logic_vector(0,log2(BUS_WIDTH)+1);
    end mylog2; 

begin
DOUT <= mylog2(DIN);

end behaviour;
