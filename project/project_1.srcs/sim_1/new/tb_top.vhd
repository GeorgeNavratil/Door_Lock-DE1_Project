----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2021 18:37:02
-- Design Name: 
-- Module Name: tb_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_top is
    
end tb_top;

architecture Behavioral of tb_top is
    constant clk_i_period : time := 1 ms;
    signal s_clk_100MHz   : std_logic;
    signal s_GreenLED     : std_logic;
    signal s_RedLED       : std_logic;
    signal s_Relay        : std_logic;
    signal s_AN           : std_logic_vector(4 - 1 downto 0);
    signal s_Seven_seg    : STD_LOGIC_VECTOR (7 - 1 downto 0);
    signal s_key0         : std_logic;
    signal s_key1         : std_logic;
    signal s_key2         : std_logic;
    signal s_key3         : std_logic;
    signal s_key4         : std_logic;
    signal s_key5         : std_logic;
    signal s_key6         : std_logic;
    signal s_key7         : std_logic;
    signal s_key8         : std_logic;
    signal s_key9         : std_logic;
    signal s_keyDel       : std_logic;
    signal s_keyEnter     : std_logic;

begin
 
    uut_top : entity work.top
        port map (   
            CLK100MHZ  => s_clk_100MHz,      
            GreenLED   => s_GreenLED,
            RedLED     => s_RedLED ,
            Relay      => s_Relay,
            Seven_seg  => s_Seven_seg,
            AN         => s_AN,   
            key0       => s_key0 ,    
            key1       => s_key1 ,    
            key2       => s_key2 ,    
            key3       => s_key3 ,    
            key4       => s_key4 ,    
            key5       => s_key5 ,    
            key6       => s_key6 ,    
            key7       => s_key7 ,    
            key8       => s_key8 ,    
            key9       => s_key9 ,    
            keyDel     => s_keyDel ,  
            keyEnter   => s_keyEnter 
            );
  
  clk_i_process :process
   begin
		s_clk_100MHz <= '1';
		wait for 5ns;
		s_clk_100MHz <= '0';
		wait for 5ns;
   end process;
    
   p_stimulus: process
   begin	
		
        wait for 1000 mS;
        s_key1 <= '1'; --1
        wait for 1000 mS;
        s_key1 <= '0';
        wait for 1000 mS;
        s_key2 <= '1'; --2
        wait for 1000 mS;
        s_key2 <= '0';
        wait for 1000 mS;
        s_key3 <= '1'; --3
        wait for 1000 mS;
        s_key3 <= '0';
        wait for 1000 mS;
        s_key5 <= '1';  --5
        wait for 1000 mS;
        s_key5 <= '0';
        wait for 1000 mS;
        s_keyDel <= '1'; --*
        wait for 1000 mS;
        s_keyDel <= '0';
        wait for 1000 mS;
        s_key4 <= '1'; --4
        wait for 1000 mS;  
        s_key4 <= '0';         
        wait for 1000 mS;
        s_keyEnter <= '1';--#
        wait for 1000 mS;
        s_keyEnter <= '0';
        wait for 1000 mS;
        s_keyEnter <= '1';--#
        wait for 1000 mS;
        s_keyEnter <= '0';          
        wait for 1000 mS;
        s_key1 <= '1'; --1
        wait for 1000 mS;
        s_key1 <= '0';
        wait for 1000 mS;
        s_key2 <= '1'; --2
        wait for 1000 mS;
        s_key2 <= '0';
        wait for 1000 mS;
        s_key3 <= '1'; --3
        wait for 1000 mS;
        s_key3 <= '0';
        wait for 1000 mS;
        s_key5 <= '1';  --5
        wait for 1000 mS;
        s_key5 <= '0';
        wait for 1000 mS;
        s_keyDel <= '1'; --*
        wait for 1000 mS;
        s_keyDel <= '0';
        wait for 1000 mS;
        s_key5 <= '1'; --5
        wait for 1000 mS;  
        s_key5 <= '0';         
        wait for 1000 mS;
        s_keyEnter <= '1';--#
        wait for 1000 mS;
        s_keyEnter <= '0';
        wait for 1000 mS;
        s_keyEnter <= '1';--#
        wait for 1000 mS;
        s_keyEnter <= '0';          
        
      wait;
   end process;

end Behavioral;