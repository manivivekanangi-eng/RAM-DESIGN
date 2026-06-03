library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sync_ram is
    Port (
        clk  : in  STD_LOGIC;
        we   : in  STD_LOGIC;
        addr : in  STD_LOGIC_VECTOR(3 downto 0);
        din  : in  STD_LOGIC_VECTOR(7 downto 0);
        dout : out STD_LOGIC_VECTOR(7 downto 0)
    );
end sync_ram;

architecture Behavioral of sync_ram is

    type ram_type is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    signal RAM : ram_type := (others => (others => '0'));

begin

    process(clk)
    begin
        if rising_edge(clk) then

            -- Write Operation
            if we = '1' then
                RAM(to_integer(unsigned(addr))) <= din;
            end if;

            -- Read Operation
            dout <= RAM(to_integer(unsigned(addr)));

        end if;
    end process;

end Behavioral;
