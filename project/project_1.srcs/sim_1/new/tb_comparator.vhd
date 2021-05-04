library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_comparator is
--  Port ( );
end tb_comparator;

architecture Behavioral of tb_comparator is
    signal s_Clk     : STD_LOGIC;
    signal s_key_i   : STD_LOGIC_VECTOR (4 - 1 downto 0):= "0000";
    signal s_relay_o : STD_LOGIC;
    signal s_LEDR_o  : STD_LOGIC;
    signal s_LEDG_o  : STD_LOGIC;
    
    signal  s_digit0_o : STD_LOGIC_VECTOR (4 - 1 downto 0); 
    signal  s_digit1_o : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal  s_digit2_o : STD_LOGIC_VECTOR (4 - 1 downto 0); 
    signal  s_digit3_o : STD_LOGIC_VECTOR (4 - 1 downto 0); 
    
begin
    uut_comparator : entity work.comparator
        port map(
            Clk        => s_Clk,
            key_i      => s_key_i,     
            relay_o    => s_relay_o,
            led_red    => s_LEDR_o,
            led_green  => s_LEDG_o,
            data0_o    => s_digit0_o,
            data1_o    => s_digit1_o,
            data2_o    => s_digit2_o,
            data3_o    => s_digit3_o
         ); 
    p_clk : process
        begin
            wait for 1mS;
            s_Clk <= '1';
            wait for 1mS;
            s_Clk <= '0';
    end process;
    
    p_stimulus : process
    begin
        wait for 1000 mS;
        s_key_i <= "0001"; --1
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0010"; --2
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0011"; --3
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0101";  --5
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "1010"; --*
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0100"; --4
        wait for 1000 mS;  
        s_key_i <= "0000";         
        wait for 1000 mS;
        s_key_i <= "1011";--#
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "1011";--#
        wait for 1000 mS;
        s_key_i <= "0000";          
        wait for 1000 mS;
        s_key_i <= "0001"; --1
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0010"; --2
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0011"; --3
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0101";  --5
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "1010"; --*
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "0101"; --5
        wait for 1000 mS;  
        s_key_i <= "0000";         
        wait for 1000 mS;
        s_key_i <= "1011";--#
        wait for 1000 mS;
        s_key_i <= "0000";
        wait for 1000 mS;
        s_key_i <= "1011";--#
        wait for 1000 mS;
        s_key_i <= "0000";          
        
        wait;
        
    end process p_stimulus;  

end Behavioral;