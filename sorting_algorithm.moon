bubbleSort = (arr) ->
  n = #arr
  swapped = false
  repeat
    swapped = false
    for i in [1..n-1]
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
        swapped = true
  until not swapped
  arr

arr = {64, 34, 25, 12, 22, 11, 90}
sorted = bubbleSort arr
print "Sorted array: ", sorted
