program BubbleSort;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure BubbleSort(var arr: array of Integer);
var
  n, i, j, temp: Integer;
begin
  n := Length(arr);
  for i := 0 to n - 2 do
    for j := 0 to n - 2 - i do
      if arr[j] > arr[j + 1] then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
end;

// Пример использования
var
  arr: array of Integer;
  i: Integer;
begin
  SetLength(arr, 5);
  arr[0] := 5;
  arr[1] := 3;
  arr[2] := 8;
  arr[3] := 4;
  arr[4] := 2;

  BubbleSort(arr);

  for i := Low(arr) to High(arr) do
    WriteLn(arr[i]);
end.
