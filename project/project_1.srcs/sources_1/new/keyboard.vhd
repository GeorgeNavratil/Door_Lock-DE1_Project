library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keyboard is
    Port ( key0_i     : in  STD_LOGIC;
           key1_i     : in  STD_LOGIC;
           key2_i     : in  STD_LOGIC;
           key3_i     : in  STD_LOGIC;
           key4_i     : in  STD_LOGIC;
           key5_i     : in  STD_LOGIC;
           key6_i     : in  STD_LOGIC;
           key7_i     : in  STD_LOGIC;
           key8_i     : in  STD_LOGIC;
           key9_i     : in  STD_LOGIC;
           keyDel_i   : in  STD_LOGIC; -- *
           keyEnter_i : in  STD_LOGIC; -- #
           key_o      : out STD_LOGIC_VECTOR (4 - 1 downto 0)
            );
end keyboard;

architecture Behavioral of keyboard is
begin
    p_keyboard : process (key0_i,key1_i,key2_i,key3_i,key4_i,key5_i,key6_i,key7_i,key8_i,key9_i,keyDel_i,keyEnter_i)
        begin
             if key0_i = '1' then
                key_o <= "1111";
             elsif key1_i = '1' then
                key_o <= "0001";
             elsif key2_i = '1' then
                key_o <= "0010";
             
             elsif key3_i = '1' then
                key_o <= "0011";
             elsif key4_i = '1' then
                key_o <= "0100";
             elsif key5_i = '1' then
                key_o <= "0101";
                
             elsif key6_i = '1' then
                key_o <= "0110";
             elsif key7_i = '1' then
                key_o <= "0111";
             elsif key8_i = '1' then
                key_o <= "1000";
                   
             elsif key9_i = '1' then
                key_o <= "1001";
             elsif keyDel_i = '1' then
                key_o <= "1010";
             elsif keyEnter_i = '1' then
                key_o <= "1011";
             else
                key_o <= "0000";          
            end if;
    end process; 
end Behavioral;