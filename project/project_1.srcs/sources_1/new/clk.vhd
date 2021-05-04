library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity clk is
    Port ( 
           clk_i : in  STD_LOGIC;
           clk_o : out STD_LOGIC
        );
end clk;

architecture Behavioral of clk is
begin
    p_clk : process(clk_i)
    variable f_reduction : integer range 0 to 100000;
    begin
        if f_reduction < 100000 then
            f_reduction := f_reduction + 1;
        else
           if clk_i = '1' then
                clk_o <= '1';
           else
                clk_o <= '0';
           end if;
           f_reduction :=0;   
        end if;
    end process;
end Behavioral;