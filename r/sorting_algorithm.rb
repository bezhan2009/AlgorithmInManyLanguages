def bubble_sort(arr)
  n = arr.length
  for i in 0..n-2
    for j in 0..n-i-2
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  return arr
end

arr = [64, 34, 25, 12, 22, 11, 90]
puts "Sorted array: #{bubble_sort(arr)}"
