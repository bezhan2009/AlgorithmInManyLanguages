def bubble_sort(arr):
    cdef int n = len(arr)
    cdef int i, j, temp
    for i in range(n - 1):
        for j in range(n - 1 - i):
            if arr[j] > arr[j + 1]:
                temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp

# Example usage
arr = [5, 3, 8, 4, 2]
bubble_sort(arr)
print(arr)
