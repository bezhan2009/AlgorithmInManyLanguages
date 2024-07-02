function insertionSort(int[] arr) returns int[] {
    int n = lengthof arr;
    for int i = 1; i < n; i = i + 1 {
        int key = arr[i];
        int j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
    return arr;
}

public function main() {
    int[] arr = [5, 2, 4, 6, 1, 3];
    io:println("Original array:");
    io:println(arr.toString());

    int[] sortedArr = insertionSort(arr);
    io:println("Sorted array:");
    io:println(sortedArr.toString());
}
