with Ada.Text_IO; use Ada.Text_IO;

procedure SortingAlgorithm is
    procedure Bubble_Sort (Arr : in out Integer_Array) is
        Temp : Integer;
    begin
        for I in reverse 1 .. Arr'Last loop
            for J in 1 .. I loop
                if Arr (J) > Arr (J + 1) then
                    Temp := Arr (J);
                    Arr (J) := Arr (J + 1);
                    Arr (J + 1) := Temp;
                end if;
            end loop;
        end loop;
    end Bubble_Sort;

    Arr : Integer_Array := (64, 34, 25, 12, 22, 11, 90);
begin
    Bubble_Sort (Arr);
    Put_Line ("Sorted array:");
    for I in Arr'Range loop
        Put (Arr (I)'Image & " ");
    end loop;
    New_Line;
end SortingAlgorithm;
