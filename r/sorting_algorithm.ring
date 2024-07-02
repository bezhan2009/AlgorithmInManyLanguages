function insertionSort(arr) {
    n = arr.size
    for i = 2 to n {
        key = arr[i]
        j = i - 1
        while j > 0 and arr[j] > key {
            arr[j + 1] = arr[j]
            j = j - 1
        }
        arr[j + 1] = key
    }
    return arr
}

arr = [5, 2, 4, 6, 1, 3]
sortedArr = insertionSort(arr)
println("Original array: " + arr.join(", "))
println("Sorted array: " + sortedArr.join(", "))
