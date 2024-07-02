bubble_sort <- function(arr) {
  n <- length(arr)
  repeat {
    swapped <- FALSE
    for (i in 1:(n-1)) {
      if (arr[i] > arr[i+1]) {
        temp <- arr[i]
        arr[i] <- arr[i+1]
        arr[i+1] <- temp
        swapped <- TRUE
      }
    }
    if (!swapped) {
      break
    }
  }
  return(arr)
}

arr <- c(64, 34, 25, 12, 22, 11, 90)
sorted <- bubble_sort(arr)
print("Sorted array:")
print(sorted)
