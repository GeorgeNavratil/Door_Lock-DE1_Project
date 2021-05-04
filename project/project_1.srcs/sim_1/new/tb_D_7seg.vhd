library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_D_7seg is
--  Port ( );
end tb_D_7seg;

architecture Behavioral of tb_D_7seg is
    signal  s_clk        : STD_LOGIC;
    signal  s_display_o  : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal  s_seg_o      : STD_LOGIC_VECTOR (7 - 1 downto 0);
    signal  s_data0_i    : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal  s_data1_i    : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal  s_data2_i    : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal  s_data3_i    : STD_LOGIC_VECTOR (4 - 1 downto 0);
begin
    uut_D_7seg : entity work.D_7seg
        port map(
            clk       =>  s_clk,
            data0_i   =>  s_data0_i,
            data1_i   =>  s_data1_i,
            data2_i   =>  s_data2_i,
            data3_i   =>  s_data3_i,
            seg_o     =>  s_seg_o,
            dig_o     =>  s_display_o
                ); 
    p_clk : process
        begin
            wait for 1nS;
            s_Clk <= '1';
            wait for 1nS;
            s_Clk <= '0';
    end process;
    p_stimulus : process
        begin

            s_data0_i <= "0001";
            s_data1_i <= "0010";
            s_data2_i <= "0011";
            s_data3_i <= "0100";
            wait for 10 nS;
            s_data0_i <= "0101";
            s_data1_i <= "0110";
            s_data2_i <= "0111";
            s_data3_i <= "1000";
            wait for 10 nS;
            s_data0_i <= "1001";
            s_data1_i <= "1111";
            s_data2_i <= "0011";
            s_data3_i <= "0100";

            wait;
   end process;
end Behavioral;