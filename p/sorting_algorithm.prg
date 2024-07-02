// Пример сортировки пузырьком на Harbour
PROCEDURE BubbleSort(arr)
    LOCAL i, j, temp
    LOCAL n := LEN(arr)
    FOR i := 1 TO n - 1
        FOR j := 1 TO n - i
            IF arr[j] > arr[j + 1]
                temp := arr[j]
                arr[j] := arr[j + 1]
                arr[j + 1] := temp
            ENDIF
        NEXT
    NEXT
    RETURN arr

// Пример использования
FUNCTION Main()
    LOCAL arr := {5, 3, 8, 4, 2}
    arr := BubbleSort(arr)
    ? arr
RETURN Nil
