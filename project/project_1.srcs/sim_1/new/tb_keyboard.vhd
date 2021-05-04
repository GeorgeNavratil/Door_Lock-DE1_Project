library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_keyboard is
--  Port ( );
end tb_keyboard;

architecture testbench of tb_keyboard is
    signal s_key0_i     :  STD_LOGIC;
    signal s_key1_i     :  STD_LOGIC;
    signal s_key2_i     :  STD_LOGIC;
    signal s_key3_i     :  STD_LOGIC;
    signal s_key4_i     :  STD_LOGIC;
    signal s_key5_i     :  STD_LOGIC;
    signal s_key6_i     :  STD_LOGIC;
    signal s_key7_i     :  STD_LOGIC;
    signal s_key8_i     :  STD_LOGIC;
    signal s_key9_i     :  STD_LOGIC;
    signal s_keyDel_i   :  STD_LOGIC;
    signal s_keyEnter_i :  STD_LOGIC;
    signal s_key_o      :  STD_LOGIC_VECTOR (4 - 1 downto 0);

begin
    uut_keyboard : entity work.keyboard
        port map(
            key0_i     =>    s_key0_i,     
            key1_i     =>    s_key1_i,    
            key2_i     =>    s_key2_i,     
            key3_i     =>    s_key3_i,     
            key4_i     =>    s_key4_i,     
            key5_i     =>    s_key5_i,     
            key6_i     =>    s_key6_i,     
            key7_i     =>    s_key7_i,     
            key8_i     =>    s_key8_i,     
            key9_i     =>    s_key9_i,     
            keyDel_i   =>    s_keyDel_i,   
            keyEnter_i =>    s_keyEnter_i, 
            key_o      =>    s_key_o      
                );   
    p_stimulus : process
    begin
        wait for 10 nS;
        s_key0_i <= '1';
        wait for 20 nS;
        s_key0_i <= '0';
        wait for 10 nS;
        s_key1_i <= '1';
        wait for 20 nS;
        s_key1_i <= '0';
        wait for 10 nS;
        s_key2_i <= '1';
        wait for 20 nS;
        s_key2_i <= '0';
        
        wait for 10 nS;
        s_key3_i <= '1';
        wait for 20 nS;
        s_key3_i <= '0';
        wait for 10 nS;
        s_key4_i <= '1';
        wait for 20 nS;
        s_key4_i <= '0';
        wait for 10 nS;
        s_key5_i <= '1';
        wait for 20 nS;
        s_key5_i <= '0';
        
        wait for 10 nS;
        s_key6_i <= '1';
        wait for 20 nS;
        s_key6_i <= '0';
        wait for 10 nS;
        s_key7_i <= '1';
        wait for 20 nS;
        s_key7_i <= '0';
        wait for 10 nS;
        s_key8_i <= '1';
        wait for 20 nS;
        s_key8_i <= '0';
        
        wait for 10 nS;
        s_key9_i <= '1';
        wait for 20 nS;
        s_key9_i <= '0';
        wait for 10 nS;
        s_keyDel_i <= '1';
        wait for 20 nS;
        s_keyDel_i <= '0';
        wait for 10 nS;
        s_keyEnter_i <= '1';
        wait for 20 nS;
        s_keyEnter_i <= '0';
        wait for 10 nS;
        s_key9_i <= '1';
        wait for 10 nS;
        s_key7_i <= '1';
        wait for 10 nS;
        s_key9_i <= '0';
        wait for 10 nS;
        s_key7_i <= '0';
        wait;
    end process p_stimulus;

end testbench;