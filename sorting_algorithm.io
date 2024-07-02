insertionSort := method(arr,
    n := arr size
    for(i, 1, n - 1,
        key := arr at(i)
        j := i - 1
        while(j >= 0 and(arr at(j) > key),
            arr at(j + 1) = arr at(j)
            j := j - 1
        )
        arr at(j + 1) = key
    )
    arr
)

arr := list(5, 2, 4, 6, 1, 3)
"Original array: " print; arr println

sortedArr := insertionSort(arr)
"Sorted array: " print; sortedArr println
