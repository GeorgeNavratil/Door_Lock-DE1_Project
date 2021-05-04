----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2021 16:49:36
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( 
        CLK100MHZ : in  STD_LOGIC;
        Seven_seg : out STD_LOGIC_VECTOR (7 - 1 downto 0);
        CA        : out STD_LOGIC;
        GreenLED  : out STD_logic;
        RedLED    : out STD_logic;
        Relay     : out STD_logic;
        key0      : in  STD_LOGIC;                       
        key1      : in  STD_LOGIC;                       
        key2      : in  STD_LOGIC;                       
        key3      : in  STD_LOGIC;                       
        key4      : in  STD_LOGIC;                       
        key5      : in  STD_LOGIC;                       
        key6      : in  STD_LOGIC;                       
        key7      : in  STD_LOGIC;                       
        key8      : in  STD_LOGIC;                       
        key9      : in  STD_LOGIC;                       
        keyDel    : in  STD_LOGIC; -- *                
        keyEnter  : in  STD_LOGIC; -- #                                                     
        AN        : out STD_LOGIC_VECTOR (4-1 downto 0)
    );

end top;
------------------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------------------
architecture Behavioral of top is
    signal s_digit0 : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal s_digit1 : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal s_digit2 : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal s_digit3 : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal s_key    : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal s_clk    : STD_LOGIC;
 
begin
clk : entity work.clk
        port map(
           clk_i => CLK100MHZ,
           clk_o => s_clk
        );
        
comparator : entity work.comparator
        port map(
            Clk        =>  s_clk,

            led_green  =>  GreenLED,
            led_red    =>  RedLED,
            relay_o    =>  Relay,
            key_i      =>  s_key,
            
            data0_o    =>  s_digit0,
            data1_o    =>  s_digit1,
            data2_o    =>  s_digit2,
            data3_o    =>  s_digit3
        );

  keyboard : entity work.keyboard
      port map(
            key0_i      =>   key0,                                    
            key1_i      =>   key1,               
            key2_i      =>   key2,   
            key3_i      =>   key3,   
            key4_i      =>   key4,   
            key5_i      =>   key5,   
            key6_i      =>   key6,   
            key7_i      =>   key7,   
            key8_i      =>   key8,   
            key9_i      =>   key9,   
            keyDel_i    =>   keyDel, 
            keyEnter_i  =>   keyEnter,
            key_o       =>   s_key
      );

    D_7seg : entity work.D_7seg
        port map(
            clk     => s_clk,
            data0_i => s_digit0,
            data1_i => s_digit1,
            data2_i => s_digit2,
            data3_i => s_digit3,
            
            seg_o   => Seven_seg(7 - 1 downto 0),
            
            dig_o(4 - 1 downto 0) => AN(4 - 1 downto 0)
        );

end architecture Behavioral;