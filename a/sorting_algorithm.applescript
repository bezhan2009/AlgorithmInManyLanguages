-- Пример сортировки пузырьком на AppleScript

on bubbleSort(arr)
    set n to count arr
    repeat with i from 1 to n - 1
        repeat with j from 1 to n - i
            if item j of arr > item (j + 1) of arr then
                set temp to item j of arr
                set item j of arr to item (j + 1) of arr
                set item (j + 1) of arr to temp
            end if
        end repeat
    end repeat
    return arr
end bubbleSort

-- Пример использования
set arr to {5, 3, 8, 4, 2}
set sortedArr to bubbleSort(arr)
return sortedArr
