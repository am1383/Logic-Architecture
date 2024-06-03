library IEEE;
use IEEE.std_logic_1164.all;

entity MUX2 is
    Port (
        D2 : in  std_logic;
        D3 : in  std_logic;
        S1 : in  std_logic;
        Y1 : out std_logic
    );
end MUX2;

architecture Behavioral of MUX2 is

    signal MUX_Result : std_logic;

    component MUX 
         Port (
            D0 : in std_logic;
            D1 : in std_logic;
            S0 : in std_logic;
            Y  : out std_logic
        );
    end component;

    begin

        MUX1: MUX port map (
            D0 => D3, -- Connect D2 to D0 of MUX1
            D1 => D2, -- Connect D2 to D1 of MUX1
            S0 => S1, -- Connect S1 to S0 of MUX1
            Y  => MUX_Result -- Output to MUX_Result
        );

        process(MUX_Result, D2, S1)
        begin   
            Y1 <= (MUX_Result and (not S1)) or (D2 and S1);
        end process;

end Behavioral;
