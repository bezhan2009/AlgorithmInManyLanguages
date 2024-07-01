program BubbleSort;

var
    arr: array[1..7] of Integer = (64, 34, 25, 12, 22, 11, 90);
    i, j, temp: Integer;

begin
    for i := 1 to Length(arr) - 1 do
        for j := 1 to Length(arr) - i do
            if arr[j] > arr[j + 1] then
                temp := arr[j];
                arr[j] := arr[j + 1];
                arr[j + 1] := temp;
            end;

    Write('Sorted array: ');
    for i := 1 to Length(arr) do
        Write(arr[i], ' ');
    Writeln;
end.
