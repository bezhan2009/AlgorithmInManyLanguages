import System

def bubbleSort(arr as int[]):
    n = arr.Length
    swapped = False
    repeat:
        swapped = False
        for i in range(n - 1):
            if arr[i] > arr[i + 1]:
                temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
                swapped = True
    until not swapped
    return arr

arr = [64, 34, 25, 12, 22, 11, 90]
sorted = bubbleSort(arr)
print("Sorted array: ", sorted)
