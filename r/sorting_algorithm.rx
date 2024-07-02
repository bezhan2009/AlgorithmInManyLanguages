/* Пример сортировки пузырьком на ARexx */

bubbleSort:
procedure expose arr, n
  parse arg arr
  n = words(arr)
  do i = 1 to n - 1
    do j = 1 to n - i
      if arr.j > arr.(j + 1) then
        temp = arr.j
        arr.j = arr.(j + 1)
        arr.(j + 1) = temp
      end
    end
  end
  return arr
exit

/* Пример использования */
arr = '5 3 8 4 2'
say bubbleSort(arr)
