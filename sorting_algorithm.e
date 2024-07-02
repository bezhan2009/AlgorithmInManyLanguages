include std/sequence.e
include std/io.e

procedure bubble_sort(sequence arr)
    integer n = length(arr)
    integer swapped
    while 1 do
        swapped = 0
        for i = 1 to n-1 do
            if arr[i] > arr[i+1] then
                sequence temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
                swapped = 1
            end if
        end for
        if not swapped then
            exit
        end if
    end while
    return arr
end procedure

sequence arr = {64, 34, 25, 12, 22, 11, 90}
sequence sorted = bubble_sort(arr)
puts(1, "Sorted array: ")
puts(1, sorted)
puts(1, "\n")
