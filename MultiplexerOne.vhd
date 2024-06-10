library IEEE;
use IEEE.std_logic_1164.all;

entity MUX is
    Port ( 
        D0 : in std_logic;
        D1 : in std_logic;
        S0 : in std_logic;
        Y  : out std_logic
    );
end MUX;

architecture Behavioral of MUX is
    signal Select0, D0_Input, D1_Input : std_logic;
begin

    Select0 <= not S0;
    D0_Input <= D0 and Select0;
    D1_Input <= D1 and S0;
    Y <= D0_Input or D1_Input;

end Behavioral;
