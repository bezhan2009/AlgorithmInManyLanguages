insertionSort: list -> list = \arr ->
  let n = length arr
  for i in 1..n-1 do
    let key = arr[i]
    var j = i - 1
    while j >= 0 and arr[j] > key do
      arr[j + 1] = arr[j]
      j = j - 1
    done
    arr[j + 1] = key
  done
  arr

main: () = {
  let arr = [5, 2, 4, 6, 1, 3]
  print("Original array: ")
  print(arr)
  let sortedArr = insertionSort(arr)
  print("Sorted array: ")
  print(sortedArr)
}
