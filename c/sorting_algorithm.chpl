proc bubbleSort(arr: [] int) {
    const n = arr.size;
    for i in 0..<n-1 {
        for j in 0..<n-1-i {
            if arr[j] > arr[j+1] {
                var temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

// Example usage
var arr = [5, 3, 8, 4, 2];
bubbleSort(arr);
writeln(arr);
