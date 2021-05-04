library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_7seg is
    Port ( clk     : in  STD_LOGIC;
           dig_o   : out STD_LOGIC_VECTOR (4 - 1 downto 0);
           seg_o   : out STD_LOGIC_VECTOR (7 - 1 downto 0);
           data0_i : in  STD_LOGIC_VECTOR (4 - 1 downto 0);
           data1_i : in  STD_LOGIC_VECTOR (4 - 1 downto 0);
           data2_i : in  STD_LOGIC_VECTOR (4 - 1 downto 0);
           data3_i : in  STD_LOGIC_VECTOR (4 - 1 downto 0)
           );
end D_7seg;

architecture Behavioral of D_7seg is
           signal display_s : STD_LOGIC_VECTOR (4 - 1 downto 0);
           signal data_s    : STD_LOGIC_VECTOR (4 - 1 downto 0);
begin

p_7seg : process (clk)
begin
    if display_s = "1000" then
        display_s <= "0001";
        data_s <= data0_i;
    elsif display_s = "0100" then
        display_s <= "1000";
        data_s <= data3_i;
    elsif display_s = "0010" then
        display_s <= "0100";
        data_s <= data2_i;
    else
        display_s <= "0010";
        data_s <= data1_i;        
    end if;        
end process;
p_btoseg : process (data_s)
begin
    dig_o <= display_s;
    case data_s is
      when "1111" =>   seg_o <= "0000001"; --0
      when "0001" =>   seg_o <= "1001111"; --1
      when "0010" =>   seg_o <= "0010010"; --2
      when "0011" =>   seg_o <= "0000110"; --3
      when "0100" =>   seg_o <= "1001100"; --4
      when "0101" =>   seg_o <= "0100100"; --5
      when "0110" =>   seg_o <= "0100000"; --6
      when "0111" =>   seg_o <= "0001111"; --7
      when "1000" =>   seg_o <= "0000000"; --8
      when "1001" =>   seg_o <= "0000100"; --9      
      when others =>   seg_o <= "0000000";
    end case;
end process;
 
end Behavioral;