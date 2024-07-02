function bubbleSort(arr)
    n = length(arr)
    for i in 1:n-1
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end

arr = [64, 34, 25, 12, 22, 11, 90]
println("Sorted array: $(bubbleSort(arr))")
