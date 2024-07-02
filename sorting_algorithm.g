PUBLIC SUB Main()
  DIM arr[] AS Integer = [64, 34, 25, 12, 22, 11, 90]
  BubbleSort(arr)
  PRINT "Sorted array: "; Join(arr, ", ")
END

PUBLIC SUB BubbleSort(arr AS Integer[])
  DIM n AS Integer = arr.Max
  DIM swapped AS Boolean
  REPEAT
    swapped = FALSE
    FOR i AS Integer = 0 TO n - 1
      IF arr[i] > arr[i + 1] THEN
        SWAP arr[i], arr[i + 1]
        swapped = TRUE
