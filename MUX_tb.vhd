library IEEE;
use IEEE.std_logic_1164.all;

entity MUX2_TB is
end MUX2_TB;

architecture behavior of MUX2_TB is

    component MUX2
        Port (
            D0, D1, D2, S0, S1 : in  std_logic;
            Y1                 : out std_logic
        );
    end component;

    signal D0, D1, D2, S0, S1, Y1 : std_logic;

begin

    UUT: MUX2 port map (
        D0 => D0,
        D1 => D1,
        D2 => D2,
        S0 => S0,
        S1 => S1,
        Y1 => Y1
    );

    Simulate_Proccess: process
    begin
        -- Initialize Inputs
        D0 <= '1';
        D1 <= '0';
        D2 <= '0';
        S0 <= '0';
        S1 <= '0';
        wait for 10 ns;

    end process;

end behavior;
