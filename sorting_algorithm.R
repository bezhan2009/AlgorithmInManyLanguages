bubble_sort <- function(arr) {
  n <- length(arr)
  for (i in 1:(n - 1)) {
    for (j in 1:(n - i)) {
      if (arr[j] > arr[j + 1]) {
        temp <- arr[j]
        arr[j] <- arr[j + 1]
        arr[j + 1] <- temp
      }
    }
  }
  return(arr)
}

arr <- c(64, 34, 25, 12, 22, 11, 90)
arr <- bubble_sort(arr)
cat("Sorted array: ", arr, "\n")
