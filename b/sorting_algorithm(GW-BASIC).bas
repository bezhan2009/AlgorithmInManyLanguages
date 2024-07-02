' Пример сортировки пузырьком на GW-BASIC
DIM arr(5)
arr(1) = 5
arr(2) = 3
arr(3) = 8
arr(4) = 4
arr(5) = 2

FOR i = 1 TO 4
    FOR j = 1 TO 4 - i
        IF arr(j) > arr(j + 1) THEN
            temp = arr(j)
            arr(j) = arr(j + 1)
            arr(j + 1) = temp
        END IF
    NEXT j
NEXT i

FOR i = 1 TO 5
    PRINT arr(i)
NEXT i
