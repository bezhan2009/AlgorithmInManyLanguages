sort_insert <- function(arr) {
  n <- length(arr)
  for (i in 2:n) {
    key <- arr[i]
    j <- i - 1
    while (j >= 1 && arr[j] > key) {
      arr[j + 1] <- arr[j]
      j <- j - 1
    }
    arr[j + 1] <- key
  }
  return(arr)
}

# Пример использования:
arr <- c(5, 2, 4, 6, 1, 3)
sorted_arr <- sort_insert(arr)
print(paste("Original array:", paste(arr, collapse = ", ")))
print(paste("Sorted array:", paste(sorted_arr, collapse = ", ")))
