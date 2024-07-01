def bubble_sort(arr : Array(Int32))
  n = arr.size
  for i in 0..n-1
    for j in 0..n-i-2
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
end

arr = [64, 34, 25, 12, 22, 11, 90]
bubble_sort(arr)
puts "Sorted array: #{arr}"
