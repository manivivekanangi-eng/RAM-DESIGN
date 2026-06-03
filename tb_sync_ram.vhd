library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_sync_ram is
end tb_sync_ram;

architecture Behavioral of tb_sync_ram is

component sync_ram
    Port (
        clk  : in  STD_LOGIC;
        we   : in  STD_LOGIC;
        addr : in  STD_LOGIC_VECTOR(3 downto 0);
        din  : in  STD_LOGIC_VECTOR(7 downto 0);
        dout : out STD_LOGIC_VECTOR(7 downto 0)
    );
end component;

signal clk  : STD_LOGIC := '0';
signal we   : STD_LOGIC := '0';
signal addr : STD_LOGIC_VECTOR(3 downto 0);
signal din  : STD_LOGIC_VECTOR(7 downto 0);
signal dout : STD_LOGIC_VECTOR(7 downto 0);

begin

uut : sync_ram
port map(
    clk  => clk,
    we   => we,
    addr => addr,
    din  => din,
    dout => dout
);

clk_process : process
begin
    while now < 300 ns loop
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end loop;
    wait;
end process;

stim_proc : process
begin

    -- Write 55 to address 1
    we <= '1';
    addr <= "0001";
    din <= "01010101";
    wait for 20 ns;

    -- Write AA to address 2
    addr <= "0010";
    din <= "10101010";
    wait for 20 ns;

    -- Write FF to address 3
    addr <= "0011";
    din <= "11111111";
    wait for 20 ns;

    -- Read Data
    we <= '0';

    addr <= "0001";
    wait for 20 ns;

    addr <= "0010";
    wait for 20 ns;

    addr <= "0011";
    wait for 20 ns;

    wait;

end process;

end Behavioral;
