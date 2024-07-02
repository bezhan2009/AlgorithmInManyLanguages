bubbleSort = (arr) ->
  n = arr.length
  swapped = false
  do
    swapped = false
    for i in [0..n-2]
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        swapped = true
  while swapped
  arr

arr = [64, 34, 25, 12, 22, 11, 90]
sorted = bubbleSort(arr)
console.log "Sorted array: ", sorted
