library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity InsertionSort is
    port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        arr_in : in integer_vector(0 to 5);
        arr_out : out integer_vector(0 to 5)
    );
end InsertionSort;

architecture Behavioral of InsertionSort is
begin
    process(clk, reset)
        variable key : integer;
        variable j : integer;
    begin
        if reset = '1' then
            arr_out <= arr_in;
        elsif rising_edge(clk) then
            for i in 1 to arr_in'high loop
                key := arr_in(i);
                j := i - 1;
                while j >= 0 and arr_in(j) > key loop
                    arr_in(j + 1) := arr_in(j);
                    j := j - 1;
                end loop;
                arr_in(j + 1) := key;
            end loop;
            arr_out <= arr_in;
        end if;
    end process;
end Behavioral;
