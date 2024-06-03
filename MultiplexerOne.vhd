library IEEE;
use IEEE.std_logic_1164.all;

entity MUX is
    Port ( 
        D0 :   in  std_logic;
        D1 :   in  std_logic;
        S0 :   in  std_logic;
        Y  :   out std_logic
        );
end MUX;

architecture Behavioral of MUX is
begin
    process(D0, D1, S0)
    begin
        Y <= (D0 and (not S0)) or (D1 and S0);
    end process;
end Behavioral;