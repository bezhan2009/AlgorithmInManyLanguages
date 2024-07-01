func bubbleSort(_ arr: inout [Int]) {
    let n = arr.count
    for i in 0..<n-1 {
        for j in 0..<n-i-1 {
            if arr[j] > arr[j+1] {
                arr.swapAt(j, j+1)
            }
        }
    }
}

var arr = [64, 34, 25, 12, 22, 11, 90]
bubbleSort(&arr)
print("Sorted array: \(arr)")
