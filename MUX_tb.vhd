library IEEE;
use IEEE.std_logic_1164.all;

entity CMUX_tb is
end CMUX_tb;

architecture Behavioral of CMUX_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component MUX
        Port (
            D0 : in std_logic;
            D1 : in std_logic;
            S0 : in std_logic;
            Y  : out std_logic
        );
    end component;

    component MUX2
        Port (
            D2 : in std_logic;
            D3 : in std_logic;
            S1 : in std_logic;
            Y1 : out std_logic
        );
    end component;

    -- Signals to connect to the UUT
    signal D0_tb : std_logic := '0';
    signal D1_tb : std_logic := '0';
    signal S0_tb : std_logic := '0';
    signal Y_tb  : std_logic;
    signal D2_tb : std_logic := '0';
    signal D3_tb : std_logic := '0';
    signal S1_tb : std_logic := '0';
    signal Y1_tb : std_logic;

begin

    -- Instantiate the Unit Under Test (UUT) for MUX
    uut1: MUX port map (
        D0 => D0_tb,
        D1 => D1_tb,
        S0 => S0_tb,
        Y  => Y_tb
    );

    -- Instantiate the Unit Under Test (UUT) for MUX2
    uut2: MUX2 port map (
        D2 => D2_tb,
        D3 => D3_tb,
        S1 => S1_tb,
        Y1 => Y1_tb
    );

    -- Testbench process
    process
    begin
        -- Test case 1
        D0_tb <= '1';
        D1_tb <= '0';
        S0_tb <= '0';
        S1_tb <= '1';
        D2_tb <= '0';
        D3_tb <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;

