proc bubbleSort(arr: varseq[int]) =
  for i in 0 ..< arr.high:
    for j in 0 ..< arr.high - i:
      if arr[j] > arr[j + 1]:
        arr[j], arr[j + 1] = arr[j + 1], arr[j]

var arr = @[64, 34, 25, 12, 22, 11, 90]
bubbleSort(arr)
echo "Sorted array: ", arr
