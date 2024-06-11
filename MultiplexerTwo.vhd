library IEEE;
use IEEE.std_logic_1164.all;

entity MUX2 is
    Port (
        D0, D1, D2, S0, S1 : in  std_logic;
        Y1                 : out std_logic
    );
end MUX2;

architecture Behavioral of MUX2 is

    signal MUX1_Result, MUX2_Result : std_logic;

    component MUX 
        Port (
            D0 : in  std_logic;
            D1 : in  std_logic;
            S0 : in  std_logic;
            Y  : out std_logic
        );
    end component;

begin
    -- First level of MUX
    MUX1 : MUX port map (
        D0 => D0,
        D1 => D1,
        S0 => S0,
        Y  => MUX1_Result
    );

    -- Second level of MUX
    MUX2 : MUX port map (
        D0 => MUX1_Result,
        D1 => D2,
        S0 => S1,
        Y  => MUX2_Result
    );

    -- Assign the final output
    Y1 <= MUX2_Result;

end Behavioral;

