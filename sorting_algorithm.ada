with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Sorting_Algorithm is
   type Int_Array is array (Positive range <>) of Integer;
   procedure Bubble_Sort (A : in out Int_Array) is
      N : constant Positive := A'Length;
      Swapped : Boolean;
   begin
      loop
         Swapped := False;
         for I in 1 .. N - 1 loop
            if A(I) > A(I + 1) then
               declare
                  Temp : Integer := A(I);
               begin
                  A(I) := A(I + 1);
                  A(I + 1) := Temp;
               end;
               Swapped := True;
            end if;
         end loop;
         exit when not Swapped;
      end loop;
   end Bubble_Sort;

   A : Int_Array := (64, 34, 25, 12, 22, 11, 90);
begin
   Bubble_Sort (A);
   for I in A'Range loop
      Put (Integer'Image (A (I)));
   end loop;
   New_Line;
end Sorting_Algorithm;
