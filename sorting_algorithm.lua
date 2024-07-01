function bubbleSort(arr)
    local n = #arr
    for i = 1, n - 1 do
        for j = 1, n - i do
            if arr[j] > arr[j + 1] then
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end
end

local arr = {64, 34, 25, 12, 22, 11, 90}
bubbleSort(arr)
print("Sorted array: " .. table.concat(arr, ", "))
