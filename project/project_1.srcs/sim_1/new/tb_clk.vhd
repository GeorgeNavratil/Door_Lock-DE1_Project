library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_clk is
--  Port ( );
end tb_clk;

architecture Behavioral of tb_clk is
    signal s_Clk_o : STD_LOGIC;
    signal s_Clk_i : STD_LOGIC;
begin
    uut_clk : entity work.clk
        port map(
            clk_o   =>  s_Clk_o,
            clk_i   =>  s_Clk_i
            
                ); 
    p_clk : process
    begin
       wait for 5nS;
      s_Clk_i <= '1';
      wait for 5nS;
      s_Clk_i <= '0';
   end process;

end Behavioral;