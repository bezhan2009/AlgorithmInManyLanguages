void bubbleSort(Integer[] arr) {
    variable Integer n = arr.size;
    for (i in 0..n-2) {
        for (j in 0..n-2-i) {
            if (arr[j] > arr[j+1]) {
                value temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

// Example usage
shared void run() {
    value arr = [5, 3, 8, 4, 2];
    bubbleSort(arr);
    print(arr);
}
