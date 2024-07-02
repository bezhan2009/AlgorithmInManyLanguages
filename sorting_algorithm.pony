class InsertionSort
  new create(env: Env) =>
    """
    Example of insertion sort in Pony.
    """
    let arr = [5, 2, 4, 6, 1, 3]

    env.out.print("Original array: ")
    env.out.print(arr.string())

    let sortedArr = insertionSort(arr)

    env.out.print("\nSorted array: ")
    env.out.print(sortedArr.string())

  fun insertionSort(arr: Array[USize]): Array[USize] =>
    """
    Performs insertion sort on the given array.
    """
    let n = arr.size()

    for i in 1..n-1 do
      let key = arr(i)
      var j = i - 1

      while j >= 0 and arr(j) > key do
        arr(j + 1) = arr(j)
        j = j - 1

      arr(j + 1) = key

    arr
