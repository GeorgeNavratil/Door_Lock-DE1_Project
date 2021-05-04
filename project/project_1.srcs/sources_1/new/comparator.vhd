library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
    Port ( key_i     : in  STD_LOGIC_VECTOR (4 - 1 downto 0):="0000";
           relay_o   : out STD_LOGIC;
           led_green : out STD_LOGIC;
           led_red   : out STD_LOGIC;
           clk       : in  STD_LOGIC;
           
           data0_o  : out STD_LOGIC_VECTOR (4 - 1 downto 0);
           data1_o  : out STD_LOGIC_VECTOR (4 - 1 downto 0);
           data2_o  : out STD_LOGIC_VECTOR (4 - 1 downto 0);
           data3_o  : out STD_LOGIC_VECTOR (4 - 1 downto 0));
                     
end comparator;

architecture Behavioral of comparator is
    signal Rel_startup : std_logic;
    
    signal pass_digit0 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0001";
    signal pass_digit1 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0010";
    signal pass_digit2 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0011";
    signal pass_digit3 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0100";
    
    signal input_digit0 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0000";
    signal input_digit1 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0000";
    signal input_digit2 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0000";
    signal input_digit3 : STD_LOGIC_VECTOR (4 - 1 downto 0):="0000";

begin
    p_relay : process(clk)
    begin
    if rising_edge(clk) then
        if Rel_startup = '1' then
            relay_o <= '1';
            led_green <= '1';
            led_red   <= '0';
        else
            relay_o <='0';
            led_red <= '1';
            led_green <= '0';
        end if;
        data0_o <=  input_digit0;
        data1_o <=  input_digit1;
        data2_o <=  input_digit2;
        data3_o <=  input_digit3;
              
    end if;
    end process;
    
    p_keyboard : process (key_i)
    begin
       
            if key_i /= "1010" and key_i /= "1011" then
                if input_digit0 = "0000" then
                    input_digit0 <= key_i;

                elsif input_digit1 = "0000" then
                    input_digit1 <= key_i;
    
                elsif input_digit2 = "0000" then
                    input_digit2 <= key_i;
    
                elsif input_digit3 = "0000" then
                    input_digit3 <= key_i;
 
                end if;
             elsif key_i = "1010" then
                if input_digit3 /= "0000" then
                    input_digit3 <= "0000";
                elsif input_digit2 /= "0000" then
                    input_digit2 <= "0000";
                elsif input_digit1 /= "0000" then
                    input_digit1 <= "0000";
                elsif input_digit0 /= "0000" then
                    input_digit0 <= "0000";
                end if;
             elsif key_i = "1011" then
                if Rel_startup = '1' then
                    Rel_startup <= '0';
                end if;
                if pass_digit0  =  input_digit0 and
                  pass_digit1  =  input_digit1 and
                   pass_digit2  =  input_digit2 and
                   pass_digit3  =  input_digit3 then
                    
                    input_digit0 <="0000";
                    input_digit1 <="0000";
                    input_digit2 <="0000";
                    input_digit3 <="0000";   
                    Rel_startup <= '1';
                 else
                    input_digit0 <="0000";
                    input_digit1 <="0000";
                    input_digit2 <="0000";
                    input_digit3 <="0000";       
                end if;
                
             end if;
             
    end process;
    
end Behavioral;