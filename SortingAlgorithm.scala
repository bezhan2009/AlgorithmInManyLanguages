object SortingAlgorithm {
    def bubbleSort(arr: Array[Int]): Unit = {
        val n = arr.length
        for (i <- 0 until n - 1) {
            for (j <- 0 until n - i - 1) {
                if (arr(j) > arr(j + 1)) {
                    val temp = arr(j)
                    arr(j) = arr(j + 1)
                    arr(j + 1) = temp
                }
            }
        }
    }

    def main(args: Array[String]): Unit = {
        val arr = Array(64, 34, 25, 12, 22, 11, 90)
        bubbleSort(arr)
        println("Sorted array: " + arr.mkString(", "))
    }
}
